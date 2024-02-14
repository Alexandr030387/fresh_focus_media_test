<template>

    <div class="row labour-block">
        <h5 class="title">Labour</h5>
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-11">
                    <div class="row labour-row">
                        <div class="col-sm-2">Staff</div>
                        <div class="col-sm-2">Position</div>
                        <div class="col-sm-2">UOM</div>
                        <div class="col-sm-2">Regular Rate</div>
                        <div class="col-sm-1">Reg Hours</div>
                        <div class="col-sm-2">Overtime Rate</div>
                        <div class="col-sm-1">Overtime</div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div
                v-for="(labour_item, k) in labour_items"
                :key="k"
                class="row staff-row"
            >
                <div class="col-sm-11">
                    <div class="row labour-row">
                        <div class="col-sm-2">
                            <Select2
                                :id="'staff_' + k"
                                :name="'staff_' + k"
                                v-model="labour_item.staff"
                                :options="staffOptions"
                                placeholder="Select your stuff"
                                :setting="{
                                    selectOnClose: true,
                                }"
                                @change="updatePosition(k, labour_item)"
                            />
                        </div>
                        <div class="col-sm-2">
                            <Select2
                                :id="'position_' + k"
                                :name="'position_' + k"
                                v-model="labour_item.position.id"
                                :options="labour_item.position.options"
                                placeholder="Select Position"
                                :setting="{
                                    selectOnClose: true,
                                }"
                                :disabled="!labour_item.staff"
                                @change="updateUom(k, labour_item)"
                            />
                        </div>
                        <div class="col-sm-2">
                            <Select2
                                :id="'uom_' + k"
                                :name="'uom_' + k"
                                v-model="labour_item.uom.id"
                                :options="labour_item.uom.options"
                                placeholder="Select UOM"
                                :setting="{
                                    selectOnClose: true,
                                }"
                                :disabled="!labour_item.position.id"
                                @change="changeRateType(k, labour_item)"
                            />
                        </div>
                        <div class="col-sm-2 readonly">
                            <input
                                v-model="labour_item.regular_rate"
                                readonly class="form-control"
                                type="text"
                            />
                        </div>
                        <div class="col-sm-1 small-td">
                            <input
                                class="form-control text-right"
                                type="number"
                                min="0.5"
                                step="0.5"
                                v-model="labour_item.regular_hours"
                                @change="calculateLineTotal(labour_item)"
                            />
                        </div>
                        <div class="col-sm-2 readonly">
                            <input
                                v-model="labour_item.overtime_rate"
                                readonly class="form-control"
                                type="text"
                            />
                        </div>
                        <div class="col-sm-1 small-td">
                            <input
                                class="form-control text-right"
                                type="number"
                                min="0.5"
                                step="0.5"
                                v-model="labour_item.overtime_hours"
                                @change="calculateLineTotal(labour_item)"
                            />
                        </div>
                    </div>
                </div>
                <div class="col-sm-1">
                    <div class="row">
                        <div class="col-sm-12 action-icons">
                            <i class="fa-solid fa-circle-plus" @click="addNewRow"></i>
                            <i class="fa-regular fa-circle-xmark" @click="deleteRow(k, labour_item)"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 sub-total-title">Sub-Total</div>
                <div class="col-sm-6 sub-total-value readonly">
                    <input readonly class="form-control text-left" type="text" v-model="labour_sub_total" />
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios';
import Select2 from 'v-select2-component';
import $ from 'jquery';

export default {
    components: {
        Select2
    },

    watch: {
        labour_sub_total: {
            handler: function() {
                this.$emit('project-form', {
                    'labours': this.labour_items,
                    'labour_sub_total': this.labour_sub_total,
                })
            },
            deep: true
        },
    },

    methods: {
        deleteRow(index, labour_item) {
            const idx = this.labour_items.indexOf(labour_item);

            if (idx > -1) {
                this.labour_items.splice(idx, 1);
            }

            this.calculateLabourSubTotal()
        },

        addNewRow() {
            this.labour_items.push({
                staff: '',
                position: {
                    id: null,
                    options: [],
                },
                uom: {
                    id: null,
                    options: [],
                    rates: [],
                },
                rate_type: '',
                regular_rate: 0,
                regular_hours: 0,
                overtime_rate: 0,
                overtime_hours: 0,
                line_total: 0,
            });
        },

        async fetchStaffs () {
            try {
                await axios.get('api/staffs')
                    .then((response) => {
                        this.staffs = response.data.data
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (e) {
                console.error(e)
            }
        },

        filteredOptions (options) {
            return options.map(function(option) {
                if (option instanceof Object) {
                    return {
                        'id': option.id,
                        'text': option.name,
                    };
                }

                return option;
            });
        },

        calculateLineTotal (labour_item) {
            labour_item.line_total = (parseFloat(labour_item.regular_hours) * parseFloat(labour_item.regular_rate))
                + (parseFloat(labour_item.overtime_hours) * parseFloat(labour_item.overtime_rate))

            this.calculateLabourSubTotal()
        },

        calculateLabourSubTotal () {
            this.labour_sub_total = 0;

            this.labour_items.forEach((item) => {
                this.labour_sub_total = this.labour_sub_total + parseFloat(item.line_total)
            })
        },

        updatePosition (k, labour_item) {
            this.labour_items[k].position.options = this.filteredOptions(
                this.staffs.find(
                    staff => staff.id.toString() === labour_item.staff
                ).positions
            )
        },

        updateUom (k, labour_item) {
            this.labour_items[k].uom.rates = this.staffs.find(
                staff => staff.id.toString() === labour_item.staff
            ).positions.find(
                position => position.id.toString() === labour_item.position.id
            ).rates

            this.labour_items[k].uom.options = this.labour_items[k].uom.rates.map(
                function(rate) {
                    return {
                        'id': rate.id,
                        'text': rate.type,
                    };
                }
            );
        },

        changeRateType (k, labour_item) {
            const rates = this.labour_items[k].uom.rates.find(
                rate => rate.id.toString() === labour_item.uom.id
            )

            this.labour_items[k].rate_type = rates.type
            this.labour_items[k].overtime_rate = rates.overtime
            this.labour_items[k].regular_rate = rates.regular

            this.calculateLineTotal(labour_item)
        },
    },

    mounted: function() {
        $(".select-2").select2();
        this.fetchStaffs()
    },

    data () {
        return {
            staffs: [],
            labour_items: [{
                staff: '',
                position: {
                    id: null,
                    options: [],
                },
                uom: {
                    id: null,
                    options: [],
                    rates: [],
                },
                rate_type: '',
                regular_rate: 0,
                regular_hours: 0,
                overtime_rate: 0,
                overtime_hours: 0,
                line_total: 0,
            }],
            labour_sub_total: 0,
        }
    },

    computed: {
        staffOptions () {
            return this.filteredOptions(this.staffs)
        },
    },
}
</script>

<template>

    <div class="row truck-block">
        <h5 class="title">Truck</h5>
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-11">
                    <div class="row truck-row">
                        <div class="col-sm-3">Label</div>
                        <div class="col-sm-1">Qty</div>
                        <div class="col-sm-3">UOM</div>
                        <div class="col-sm-3">Rate ($)</div>
                        <div class="col-sm-2">Total</div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div
                v-for="(truck_item, k) in truck_items"
                :key="k"
                class="row staff-row"
            >
                <div class="col-sm-11">
                    <div class="row truck-row">
                        <div class="col-sm-3">
                            <Select2
                                :id="'truck_' + k"
                                :name="'truck_' + k"
                                v-model="truck_item.truck"
                                :options="truckOptions"
                                placeholder="Select a truck"
                                :setting="{
                                    selectOnClose: true,
                                }"
                                @change="updateUom(k, truck_item)"
                            />
                        </div>
                        <div class="col-sm-1">
                            <input
                                v-model="truck_item.qty"
                                class="form-control"
                                type="number"
                                min="1"
                                step="1"
                                @change="calculateLineTotal(truck_item)"
                            />
                        </div>
                        <div class="col-sm-3">
                            <Select2
                                :id="'truck_uom_' + k"
                                :name="'truck_uom_' + k"
                                v-model="truck_item.uom.id"
                                :options="truck_item.uom.options"
                                placeholder="Select UOM"
                                :setting="{
                                    selectOnClose: true,
                                }"
                                :disabled="!truck_item.truck"
                                @change="changeRateType(k, truck_item)"
                            />
                        </div>
                        <div class="col-sm-3 readonly">
                            <input
                                v-model="truck_item.rate"
                                readonly class="form-control"
                                type="text"
                            />
                        </div>
                        <div class="col-sm-2 readonly">
                            <input
                                readonly class="form-control text-right"
                                type="text"
                                v-model="truck_item.line_total"
                            />
                        </div>
                    </div>
                </div>
                <div class="col-sm-1">
                    <div class="row">
                        <div class="col-sm-12 action-icons">
                            <i class="fa-solid fa-circle-plus" @click="addNewRow"></i>
                            <i class="fa-regular fa-circle-xmark" @click="deleteRow(k, truck_item)"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 sub-total-title">Sub-Total</div>
                <div class="col-sm-6 sub-total-value readonly">
                    <input readonly class="form-control text-left" type="text" v-model="truck_sub_total" />
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
        truck_sub_total: {
            handler: function() {
                this.$emit('project-form', {
                    'trucks': this.truck_items,
                    'truck_sub_total': this.truck_sub_total,
                })
            },
            deep: true
        },
    },

    methods: {
        deleteRow(index, truck_item) {
            const idx = this.truck_items.indexOf(truck_item);

            if (idx > -1) {
                this.truck_items.splice(idx, 1);
            }

            this.calculateTruckSubTotal()
        },

        addNewRow() {
            this.truck_items.push({
                truck: '',
                qty: 0,
                uom: {
                    id: null,
                    options: [],
                    rates: [],
                },
                rate: 0,
                line_total: 0,
            });
        },

        async fetchTrucks () {
            try {
                await axios.get('api/trucks')
                    .then((response) => {
                        this.trucks = response.data.data
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
                        'text': option.label,
                    };
                }

                return option;
            });
        },

        calculateLineTotal (truck_item) {
            truck_item.line_total = (parseFloat(truck_item.qty) * parseFloat(truck_item.rate))

            this.calculateTruckSubTotal()
        },

        calculateTruckSubTotal () {
            this.truck_sub_total = 0;

            this.truck_items.forEach((item) => {
                this.truck_sub_total = this.truck_sub_total + parseFloat(item.line_total)
            })
        },

        updateUom (k, truck_item) {
            this.truck_items[k].uom.rates = this.trucks.find(
                truck => truck.id.toString() === truck_item.truck
            ).rate

            this.truck_items[k].uom.options = ['hourly', 'fixed']
        },

        changeRateType (k, truck_item) {
            this.truck_items[k].rate = this.truck_items[k].uom.rates[this.truck_items[k].uom.id]

            this.calculateLineTotal(truck_item)
        },
    },

    mounted: function() {
        $(".select-2").select2();
        this.fetchTrucks()
    },

    data () {
        return {
            trucks: [],
            truck_items: [{
                truck: '',
                qty: 0,
                uom: {
                    id: null,
                    options: [],
                    rates: [],
                },
                rate: 0,
                line_total: 0,
            }],
            truck_sub_total: 0,
        }
    },

    computed: {
        truckOptions () {
            return this.filteredOptions(this.trucks)
        },
    },
}
</script>

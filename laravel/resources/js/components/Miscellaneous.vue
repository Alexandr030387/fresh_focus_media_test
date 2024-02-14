<template>

    <div class="row miscellaneous-block">
        <h5 class="title">Miscellaneous</h5>
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-11">
                    <div class="row truck-row">
                        <div class="col-sm-5">Description</div>
                        <div class="col-sm-2">Cost</div>
                        <div class="col-sm-2">Price</div>
                        <div class="col-sm-1">Quantity</div>
                        <div class="col-sm-2">Total</div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div
                v-for="(miscellaneous_item, k) in miscellaneous_items"
                :key="k"
                class="row staff-row"
            >
                <div class="col-sm-11">
                    <div class="row truck-row">
                        <div class="col-sm-5">
                            <input
                                v-model="miscellaneous_item.description"
                                class="form-control"
                                type="text"
                            />
                        </div>
                        <div class="col-sm-2">
                            <input
                                v-model="miscellaneous_item.cost"
                                class="form-control"
                                type="number"
                                min="0.1"
                                step="0.1"
                                @change="calculateLineTotal(miscellaneous_item)"
                            />
                        </div>
                        <div class="col-sm-2">
                            <input
                                v-model="miscellaneous_item.price"
                                class="form-control"
                                type="number"
                                min="0.1"
                                step="0.1"
                                @change="calculateLineTotal(miscellaneous_item)"
                            />
                        </div>
                        <div class="col-sm-1">
                            <input
                                v-model="miscellaneous_item.qty"
                                class="form-control"
                                type="number"
                                min="1"
                                step="1"
                                @change="calculateLineTotal(miscellaneous_item)"
                            />
                        </div>
                        <div class="col-sm-2 readonly">
                            <input
                                readonly class="form-control text-right"
                                type="text"
                                v-model="miscellaneous_item.line_total"
                            />
                        </div>
                    </div>
                </div>
                <div class="col-sm-1">
                    <div class="row">
                        <div class="col-sm-12 action-icons">
                            <i class="fa-solid fa-circle-plus" @click="addNewRow"></i>
                            <i class="fa-regular fa-circle-xmark" @click="deleteRow(k, miscellaneous_item)"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 sub-total-title">Sub-Total</div>
                <div class="col-sm-6 sub-total-value readonly">
                    <input readonly class="form-control text-left" type="text" v-model="miscellaneous_sub_total" />
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    watch: {
        miscellaneous_sub_total: {
            handler: function() {
                this.$emit('project-form', {
                    'miscellaneous': this.miscellaneous_items,
                    'miscellaneous_sub_total': this.miscellaneous_sub_total,
                })
            },
            deep: true
        },
    },

    methods: {
        deleteRow(index, miscellaneous_item) {
            const idx = this.miscellaneous_items.indexOf(miscellaneous_item);

            if (idx > -1) {
                this.miscellaneous_items.splice(idx, 1);
            }

            this.calculateMiscellaneousSubTotal()
        },

        addNewRow() {
            this.miscellaneous_items.push({
                description: '',
                cost: 0,
                price: 0,
                qty: 0,
                line_total: 0,
            });
        },

        calculateLineTotal (miscellaneous_item) {
            miscellaneous_item.line_total = (parseFloat(miscellaneous_item.qty) * parseFloat(miscellaneous_item.price))

            this.calculateMiscellaneousSubTotal()
        },

        calculateMiscellaneousSubTotal () {
            this.miscellaneous_sub_total = 0;

            this.miscellaneous_items.forEach((item) => {
                this.miscellaneous_sub_total = this.miscellaneous_sub_total + parseFloat(item.line_total)
            })
        },
    },

    data () {
        return {
            miscellaneous_items: [{
                description: '',
                cost: 0,
                price: 0,
                qty: 0,
                line_total: 0,
            }],
            miscellaneous_sub_total: 0,
        }
    },
}
</script>

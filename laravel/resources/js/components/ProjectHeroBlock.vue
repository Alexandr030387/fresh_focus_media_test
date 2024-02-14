<template>
    <div class="row hero-block">
        <div class="col-sm-12">
            <div class="row">
                <h5>Project</h5>
                <div class="col-sm-5">
                    <Select
                        title="Customer Name:"
                        :options="customers"
                        id="customer"
                        name="customer-name"
                        placeholder="Select Customer"
                        @update-selected="updateCustomer"
                    />
                    <Select
                        title="Job Name:"
                        :options="jobs"
                        id="job"
                        name="job-name"
                        placeholder="Select Job"
                        @update-selected="updateJob"
                    />
                    <Select
                        title="Status:"
                        :options="statuses"
                        id="status"
                        name="status-name"
                        placeholder="Select Status"
                        @update-selected="updateStatus"
                    />
                    <Select
                        title="Location/LSD:"
                        :options="locations"
                        id="location"
                        name="location-name"
                        placeholder="Select Location"
                        @update-selected="updateLocation"
                    />
                </div>
                <div class="col-sm-5 offset-2">
                    <Input
                        title="Ordered By:"
                        name="ordered-by-name"
                        @update-input="updateOrder"
                    />
                    <DatePicker
                        title="Date:"
                        @update-selected="updateDate"
                    />
                    <Input
                        title="Area/Field:"
                        name="area-name"
                        v-model="form.area"
                        @update-input="updateArea"
                    />
                </div>
            </div>
        </div>
    </div>
</template>
<script>

import axios from 'axios';
import DatePicker from './DatePicker.vue'
import Select from './Select.vue';
import Input from './Input.vue';

export default {
    components: {
        Input,
        DatePicker,
        Select,
    },

    watch: {
        form: {
            handler: function() {
                this.$emit('project-form', this.form)
            },
            deep: true
        },
    },

    methods: {
        async fetchCustomers () {
            try {
                await axios.get('api/customers')
                    .then((response) => {
                        this.customers = response.data.data
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (e) {
                console.error(e)
            }
        },

        async fetchJobs () {
            try {
                await axios.get('api/jobs')
                    .then((response) => {
                        this.jobs = response.data.data
                    })
                    .catch(error => {
                        console.log(error)
                    })

                this.initialLoad = true
            } catch (e) {
                console.error(e)
            }
        },

        async fetchJob (id) {
            try {
                await axios.get('api/job/' + id)
                    .then((response) => {
                        this.locations = response.data.data.locations
                        this.customers = response.data.data.customers
                    })
                    .catch(error => {
                        console.log(error)
                    })

                this.initialLoad = true
            } catch (e) {
                console.error(e)
            }
        },

        async fetchLocations () {
            try {
                await axios.get('api/locations')
                    .then((response) => {
                        this.locations = response.data.data
                    })
                    .catch(error => {
                        console.log(error)
                    })

                this.initialLoad = true
            } catch (e) {
                console.error(e)
            }
        },

        async fetchLocation (id) {
            try {
                await axios.get('api/location/' + id)
                    .then((response) => {
                        this.jobs = response.data.jobs
                        this.customers = response.data.customers
                    })
                    .catch(error => {
                        console.log(error)
                    })

                this.initialLoad = true
            } catch (e) {
                console.error(e)
            }
        },

        updateCustomer (id) {
            this.form.customer = id
            this.jobs = this.customers.find(custom => custom.id.toString() === id.toString()).jobs
        },

        updateJob (id) {
            this.form.job = id

            if (!this.form.customer && !this.form.location) {
                this.fetchJob(id)
            }

            if (this.form.customer && !this.form.location) {
                const jobData = this.jobs.find(job => job.id.toString() === id.toString());
                this.locations = jobData.locations
            }
        },

        updateStatus (id) {
            this.form.status = id
        },

        updateLocation (id) {
            this.form.location = id

            if (!this.form.job && !this.form.customer) {
                this.fetchLocation(id)
            }
        },

        updateDate (date) {
            this.form.date = date
        },

        updateOrder (order) {
            this.form.order_by = order
        },

        updateArea (area) {
            this.form.area = area
        },
    },

    data () {
        return {
            customers:[],
            jobs: [],
            locations: [],
            form: {
                customer: null,
                job: null,
                status: null,
                location: null,
                order_by: null,
                date: null,
                area: null,
            }
        }
    },

    mounted() {
        this.fetchCustomers()
        this.fetchJobs()
        this.fetchLocations()
    },

    computed: {
        statuses () {
            return [
                'Active',
                'Pending',
                'Closed',
            ]
        }
    }
}
</script>

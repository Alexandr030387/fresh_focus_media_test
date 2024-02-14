<template>
    <div>
        <div class="header">
            <h5>Create Task</h5>
        </div>
        <div class="container">
            <div
                v-if="hasErrors"
                class="row"
            >
                <div class="col-sm-12">
                    <Errors
                        :errors="errors"
                        @remove-errors="removeErrors"
                    />
                </div>
            </div>
            <ProjectHeroBlock
                @project-form="updateForm"
            />
            <DescriptionBlock
                @project-form="updateForm"
            />
            <Labour
                @project-form="updateForm"
            />
            <Truck
                @project-form="updateForm"
            />
            <Miscellaneous
                @project-form="updateForm"
            />
            <div class="row">
                <div class="finish-button col-sm-12">
                    <button @click="confirmation">Finished</button>
                </div>
            </div>
            <Modal v-show="isModalVisible" @close="closeModal" />
        </div>
    </div>
</template>

<script>
    import axios from 'axios';
    import ProjectHeroBlock from './ProjectHeroBlock';
    import DescriptionBlock from './DescriptionBlock';
    import Labour from './Labour';
    import Truck from './Truck';
    import Miscellaneous from './Miscellaneous';
    import Errors from './Errors.vue';
    import Modal from './Modal.vue';

    export default {
        components: {
            Errors,
            Labour,
            DescriptionBlock,
            ProjectHeroBlock,
            Truck,
            Miscellaneous,
            Modal,
        },

        methods: {
            updateForm (data) {
                this.form = { ...this.form, ...data }
            },

            async confirmation () {
                this.removeErrors()

                try {
                    await axios.post('api/task/store', this.form)
                        .then((response) => {
                            this.openModal()
                        })
                        .catch(error => {
                            this.hasErrors = true;
                            this.errors = error.response.data.errors;
                        })
                } catch (e) {
                    console.error(e)
                    this.hasErrors = true;
                    this.errors = e.errors;
                }
            },

            removeErrors () {
                this.hasErrors = false;
                this.errors = [];
            },

            openModal() {
                this.isModalVisible = true;
            },
            closeModal() {
                this.isModalVisible = false;
                this.form = {
                    customer: null,
                    job: null,
                    status: null,
                    location: null,
                    order_by: null,
                    date: null,
                    area: null,
                    description: null,
                    labours: [],
                    labour_sub_total: 0,
                    trucks: [],
                    truck_sub_total: 0,
                    miscellaneous: [],
                    miscellaneous_sub_total: 0,
                }
            }
        },

        data () {
            return {
                isModalVisible: false,
                hasErrors: false,
                errors: [],
                form: {
                    customer: null,
                    job: null,
                    status: null,
                    location: null,
                    order_by: null,
                    date: null,
                    area: null,
                    description: null,
                    labours: [],
                    labour_sub_total: 0,
                    trucks: [],
                    truck_sub_total: 0,
                    miscellaneous: [],
                    miscellaneous_sub_total: 0,
                }
            }
        },
    }
</script>

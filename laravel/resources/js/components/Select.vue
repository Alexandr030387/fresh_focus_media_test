<template>
    <div class="row">
        <div class="col-sm-6">
            <p v-text="title" class="title"/>
        </div>
        <div class="col-sm-6 select-input">
            <Select2
                :id="id"
                :name="name"
                v-model="selectedOption"
                :options="filteredOptions"
                :placeholder="placeholder"
                :setting="{
                    selectOnClose: true,
                }"
                @change="changeSelected"
            />
        </div>
    </div>
</template>

<script>
import Select2 from 'v-select2-component';
import $ from 'jquery';
export default {
    components: {
        Select2
    },

    mounted: function() {
        $(".select-2").select2();
    },

    methods: {
        changeSelected () {
            this.$emit('update-selected', this.selectedOption)
        }
    },

    props: {
        title: {
            required: true,
            type: String
        },
        placeholder: {
            required: false,
            type: String
        },
        options: {
            required: true,
            type: []
        },
        name: {
            required: true,
            type: String
        },
        id: {
            required: true,
            type: String
        }
    },

    data () {
        return {
            selectedOption: null,
        }
    },

    computed: {
        filteredOptions () {
            return this.options.map(function(option) {
                if (option instanceof Object) {
                    return {
                        'id': option.id,
                        'text': option.name,
                    };
                }

                return option;
            });
        }
    }
}
</script>

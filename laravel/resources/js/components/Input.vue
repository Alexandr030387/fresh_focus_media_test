<template>
    <div class="row">
        <div class="col-sm-6">
            <p v-text="title" class="title"/>
        </div>
        <div class="col-sm-6 input">
            <input
                class="input"
                type="text"
                :name="name"
                v-model="value"
                @change="changeInput"
            >
        </div>
    </div>
</template>

<script>
export default {
    methods: {
        changeInput () {
            this.$emit('update-input', this.value)
        }
    },

    props: {
        title: {
            required: true,
            type: String
        },
        name: {
            required: true,
            type: String
        },
    },

    data () {
        return {
            value: null,
        }
    },

    computed: {
    }
}
</script>

<template>
    <div class="row">
        <div class="col-sm-6">
            <p v-text="title" class="title"/>
        </div>
        <div class="col-sm-6 date-input">
            <date-picker
                v-model="date"
                valueType="format"
                :default-value="new Date()"
                :value="new Date()"
                :disabled-date="disabledBeforeToday"
                @change="changeSelected"
            ></date-picker>
        </div>
    </div>
</template>
<script>
import DatePicker from 'vue2-datepicker';
import 'vue2-datepicker/index.css';

export default {
    components: {
        DatePicker
    },

    methods: {
        disabledBeforeToday(date) {
            const today = new Date();
            today.setHours(0, 0, 0, 0);

            return date < today;
        },

        changeSelected () {
            this.$emit('update-selected', this.date)
        }
    },

    props: {
        title: {
            required: true,
            type: String
        },
    },

    data() {
        return {
            date: new Date().toJSON().slice(0,10).replace(/\//g,'-'),
        };
    },

    mounted() {
        this.changeSelected()
    }
};
</script>

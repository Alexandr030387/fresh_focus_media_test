<template>
  <div class="notification is-warning">
      <div class="row">
          <div class="col-sm-12">
              <h4 class="title is-4">
                  Errors:
              </h4>
              <div class="red-cross" @click="removeErrors">
                  <i class="fa fa-times" aria-hidden="true"></i>
              </div>

          </div>
      </div>

    <ul
      v-for="(group, index1) in errors"
      :key="index1"
    >
      <li
        v-for="(error, index2) in group"
        v-text="error"
        :key="index2"
      />
    </ul>
  </div>
</template>

<script>
    export default {
    methods: {
        removeErrors () {
            this.$emit('remove-errors')
        }
    },
    props: {
        errors: {
            type: Object,
            required: true,
        },
    },

    name: 'Errors',
    }
</script>

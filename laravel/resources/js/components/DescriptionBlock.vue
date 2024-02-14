<template>
    <div class="row description-block">
        <h5 class="title">Description of Work</h5>
        <label class="description-label">Description:</label>
        <Editor
            v-model="form.description"
            api-key="w26ztmojvx5ofqs5vox6opqnwveiiu1glyzi1ncrgm8a0t3x"
            output-format="text"
            :init="{
                toolbar_mode: 'sliding',
                plugins: 'ai tinycomments mentions anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed permanentpen footnotes advtemplate advtable advcode editimage tableofcontents mergetags powerpaste tinymcespellchecker autocorrect a11ychecker typography inlinecss',
                toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | align lineheight | tinycomments | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
                tinycomments_mode: 'embedded',
                tinycomments_author: 'Author name',
                mergetags_list: [
                  { value: 'First.Name', title: 'First Name' },
                  { value: 'Email', title: 'Email' },
                ],
            }"
        />
    </div>
</template>
<script>

import Editor from '@tinymce/tinymce-vue';

export default {
    components: {
        Editor,
    },

    watch: {
        form: {
            handler: function() {
                this.$emit('project-form', this.form)
            },
            deep: true
        },
    },

    data () {
        return {
            form: {
                description: null,
            }
        }
    },
}
</script>

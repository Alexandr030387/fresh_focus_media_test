<template>
    <div class="modal">
        <div class="modal-inner">
            <button @click="close">&times;</button>
            <p>You successfully stored task!</p>
        </div>
    </div>
</template>

<script>
export default {
    methods: {
        close() {
            this.$emit("close");
        },
    },
};
</script>
<style>
.modal {
    position: fixed;
    z-index: 999;
    top: 20%;
    left: 50%;
    width: 350px;
    margin-left: -150px;
    height: 85px;
    display: block;
    background-color: #FFF3EA;
}
.modal-inner {
    background-color: #FFF3EA;
    border-radius: 0.5em;
    padding: 2em;
    margin: auto;
    border: 1px solid #f8d7da;

    p {
        font-weight: bold;
        font-size: medium;
        margin-bottom: 0;
    }

    button {
        float:right;
    }
}
</style>

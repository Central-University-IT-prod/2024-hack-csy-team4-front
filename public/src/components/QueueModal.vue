<template>
    <div class="modal">
      <h2>You have signed up for {{ queueDetails.stand }}</h2>
      <p>{{ queueDetails.people }} people are ahead of you</p>
      <p>{{ queueDetails.waitTime }} minutes of waiting</p>
      <button @click="confirm">Confirm</button>
      <button @click="close">Cancel</button>
    </div>
  </template>
  
  <script>
  export default {
    props: ['queueDetails'],
    methods: {
      confirm() {
        this.$emit('confirm');
      },
      close() {
        this.$emit('close');
      }
    }
  }
  </script>
  
  <style scoped>
  .modal {
    background-color: white;
    border: 1px solid #ccc;
    padding: 20px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }
  </style>

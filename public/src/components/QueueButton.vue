<template>
  <button @click="joinQueue" class="queue-button">
    <h2>{{ stand.name }}</h2>
    <p>{{ stand.description }}</p>
  </button>
</template>

<script>
export default {
  props: ['stand'],
  methods: {
    joinQueue() {
      this.$emit('join-queue', this.stand);
    }
  }
}
</script>

<style scoped>
.queue-button {
  background-color: white;
  border: 1px solid #ccc;
  margin: 10px 0;
  padding: 20px;
  width: 300px;
  text-align: left;
  cursor: pointer;
}
</style>

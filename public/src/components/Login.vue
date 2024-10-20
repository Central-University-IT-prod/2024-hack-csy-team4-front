<template>
    <div class="login">
      <h2>Login via Telegram</h2>
      <button @click="redirectToTelegram">Log in</button>
    </div>
  </template>
  
  <script>
  export default {
    methods: {
      redirectToTelegram() {
        window.location.href = "https://telegram.me/your_bot?start=login"; // Replace with your Telegram bot
      }
    }
  }
  </script>
  
  <style scoped>
  .login {
    text-align: center;
    margin-top: 100px;
  }
  </style>
  
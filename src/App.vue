<template>
  <div>
    <p>名前は{{ name }}</p>
    <p>{{ process.env.VUE_APP_NAME }}</p>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
      return {
        name: process.env.VUE_APP_NAME,
      };
    },
}
console.log("env:",process.env.VUE_APP_NAME);
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

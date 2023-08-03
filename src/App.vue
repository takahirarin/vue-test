<template>
  <div>
    <p>名前は{{ name }}</p>
    <p>出身は{{ var1 }}</p>
    <p>地元は{{ var2 }}</p>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
      return {
        name: process.env.VUE_APP_NAME,
        var1: process.env.VUE_APP_1,
        var2: process.env.VUE_APP_2
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

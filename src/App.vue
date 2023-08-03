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
        name: process.env.VAR1,
        var1: process.env.VAR2,
        var2: process.env.VAR3
      };
    },
}
console.log("env:",process.env.VAR1);
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

<!--
 * @Author: jun.fu
 * @LastEditors: jun.fu
 * @Description: file content
 * @Date: 2020-09-02 11:22:44
 * @LastEditTime: 2020-10-13 19:32:39
 * @FilePath: \test-vue\src\App.vue
-->
<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png" />
    <span>{{ count }}</span>
    <button @click="add">add</button>
    <button @click="red">jian</button>
    <li-touch-test />
  </div>
</template>

<script>
// import { mapState } from 'vuex';
import { mapMutations } from 'vuex';
import LiTouchTest from './components/LiTouchTest';
export default {
  name: 'App',
  computed: {
    //
    count() {
      return this.$store.state.value.a.count;
    },
  },
  methods: {
    ...mapMutations({
      add: 'increment', // 将 `this.add()` 映射为 `this.$store.commit('increment')`
      red: 'reducing',
    }),
  },
  watch: {},
  components: {
    LiTouchTest,
  },
};
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

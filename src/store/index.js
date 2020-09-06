/*
 * @Author: jun.fu
 * @LastEditors: jun.fu
 * @Description: file content
 * @Date: 2020-09-02 11:30:24
 * @LastEditTime: 2020-09-06 15:51:35
 * @FilePath: \test-vue\src\store\index.js
 */
import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

const store = new Vuex.Store({
  state: {
    value: {
      a: { count: 0 },
    },
  },
  mutations: {
    increment(state) {
      state.value.a.count++;
    },
    reducing(state) {
      state.value.a.count--;
    },
  },
});

export default store;

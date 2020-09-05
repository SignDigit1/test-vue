/*
 * @Author: jun.fu
 * @LastEditors: jun.fu
 * @Description: file content
 * @Date: 2020-09-02 11:22:44
 * @LastEditTime: 2020-09-02 11:31:19
 * @FilePath: \test-vue\src\main.js
 */
import Vue from 'vue';
import App from './App.vue';
import store from './store';

Vue.config.productionTip = false;

new Vue({
  render: h => h(App),
  store: store,
}).$mount('#app');

import Vue from 'vue';
import App from './App.vue';

import store from './store';
import router from './router';


// Import Vuex state store.
import Vuex from 'vuex';
Vue.use(Vuex);

var app = new Vue({
  el: '#app',
  components: {
    App
  },
  render: h => h(App),
  store,
  router
});

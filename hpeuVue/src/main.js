// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import jquery from 'jquery'
import axios from 'axios'
import qs from 'qs'
import {setCookie,getCookie,delCookie} from './assets/js/cookie.js'


import './assets/bootstrap/css/bootstrap.css'
import './assets/bootstrap/js/bootstrap.js'
// 全局使用
Vue.prototype.$qs = qs
Vue.prototype.$axios = axios
Vue.prototype.$cookieStore = {
	setCookie,
	getCookie,
	delCookie
}
Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})

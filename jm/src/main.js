import Vue from 'vue'
import Router from 'vue-router'
import App from './App.vue'
import router from './router'
import ElementUI from 'element-ui';
import MyHeader from "./components/MyHeader.vue"
import MyFooter from "./components/MyFooter.vue"
import 'element-ui/lib/theme-chalk/index.css';
import axios from 'axios'
Vue.component("my-header", MyHeader);
Vue.component("my-footer", MyFooter);
Vue.use(ElementUI);
// 使用全局axios
// 解决ElementUI导航栏中的vue-router在3.0版本以上重复点菜单报错问题
const originalPush = Router.prototype.push
Router.prototype.push = function push(location) {
  return originalPush.call(this, location).catch(err => err)
}
// 设置axios基础的URL的地址
axios.defaults.baseURL = 'http://127.0.0.1:3000';

Vue.prototype.axios = axios
Vue.config.productionTip = false
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')

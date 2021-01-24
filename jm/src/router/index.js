import Vue from 'vue'
import VueRouter from 'vue-router'
import Register from '../views/Register'
import Login from '../views/Login.vue'
import Index from '../views/Index.vue'
import Details from '../views/Details.vue'
import Classify from '../views/Classify.vue'
Vue.use(VueRouter)
const routes = [
  {
    path:'/classify',
    name:"Classify",
    component:Classify,
    // 缓存
    meta:{
      keepAlive:true
    }
  },
  {
    path: '/details/:lid',
    component: Details,
    props:true
  },
  {
    path: '/',
    name: 'Index',
    component: Index,
  },
  {
    path: '/login',
    component: Login
  },
  {
    path: '/register',
    component: Register
  }


]

const router = new VueRouter({
  routes
})

export default router

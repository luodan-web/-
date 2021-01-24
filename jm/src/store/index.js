import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import qs from 'qs'
import router from '../router'
Vue.use(Vuex)
export default new Vuex.Store({
    state: {
        phone: '',
        // 购物车初始化列表
        // cartList: carPage
    },
    mutations: {
        setUname(state, name) {
            state.phone = name
        }
    },
    actions: {},
    modules: {

    }
})
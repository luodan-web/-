<template>
  <div>
    <div class="main common_font">
      <div class="ab">
        <ul>
          <li>
            <span class="iconfont icon-dianhua a1"></span>
            <span>0500-6000000</span>
          </li>
          <li>
            <span class="iconfont icon-shijianzhongbiao a1"></span>
            <span>上午9点至下午6点</span>
          </li>
        </ul>
        <div class="c" v-if="phone==''">
          <router-link
            to="/login"
            class="iconfont icon-LC_icon_user_fill a1"
          ></router-link>
          <router-link to="/login">登录</router-link>
          <router-link
            to="/register"
            class="iconfont icon-signin a2"
          ></router-link>
          <router-link to="/register">注册</router-link>
        </div>
        <div v-else>欢迎{{uname}}登录|<button>注销</button></div>
      </div>
    </div>
    <div class="main_1">
      <div class="main_1_1">
        <img src="../assets/img/2.webp" alt="" />
      </div>
      <div class="main_1_2">
        <ul>
          <li><router-link to="/">商品首页</router-link></li>
          <li>
            <router-link to="/classify">商品分类</router-link>
            <ul>
              <li v-for="(v, i) of ids" :key="i">
                <div @click="classs" class="classify">{{ v.dalei }}</div>
                <!-- <router-link :to="`/classify/${v.wid}`">{{v.dalei}}</router-link> -->
              </li>
            </ul>
          </li>
          <li>
            <a href="">支付方式</a>
            <ul>
              <li><a href="">在线支付</a></li>
              <li><a href="">银行转账</a></li>
              <li><a href="">货到付款</a></li>
            </ul>
          </li>
          <li><a href="">节气故事</a></li>
          <li>
            <a href="">关于嘉木</a>
            <ul>
              <li><a href="">联系我们</a></li>
              <li><a href="">加盟方式</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="main_1_3">
        <input type="text" placeholder="嘉木/盆景/文玩" />
        <router-link to="">搜索</router-link>
      </div>
    </div>
  </div>
</template>
<script>
import { Bus } from "../utils/Bus.js";
import { mapState, mapMutations } from "vuex";
export default {
  data() {
    return {
      ids: [],
      phone:''
    };
  },
  computer:{
    ...mapState(['phone'])
  },
  methods: {
     ...mapMutations(["setUname"]),
    getid() {
      this.axios.get("/kind").then((res) => {
        this.ids = res.data.result;
        console.log(this.ids);
      });
    },
    classs(e) {
      var a = e.target.innerText;
      this.$nextTick(function(){Bus.$emit("big", a)})
      this.$router.push("/classify");
      console.log(`Bus.$emit.${a}`);
    },
  },
  beforeDestory() {
    Bus.$off("big");
  },
  mounted() {
    this.getid();
  },
};
</script>
<style scoped>
.a2 {
  font-size: 15px;
  color: #757575;
  padding-left: 3px;
}
.a1 {
  font-size: 3px;
  padding-right: 2px;
  color: #757575;
}
.main {
  height: 40px;
  color: #757575;
  font-size: 12px;
  background-color: #f8f8f8;
}
.ab {
  display: flex;
  margin: 0 auto;
  width: 50%;
}
.main > .ab > ul {
  flex: 0 0 70%;
  display: flex;
  padding: 0px 0px;
  line-height: 40px;
}
.ab > ul > li:nth-child(1) {
  margin-right: 20px;
}
.classify{
  cursor:pointer;
}
.c {
  flex: 0 0 30%;
  line-height: 40px;
  text-align: right;
}
.c > a:nth-child(2),
a:nth-child(4) {
  color: #757575;
  margin-left: 3px;
}
.main_1 {
  display: flex;
  margin: 0 auto;
  width: 50%;
}
.main_1_1 {
  flex: 0 0 5%;
}
.main_1_1 > img {
  flex: 57px;
  height: 92px;
  padding: 10px 0;
}
.main_1_2 {
  flex: 0 0 69%;
  margin-top: 75px;
}
.main_1_2 > ul {
  display: flex;
  justify-content: center;
  font-size: 13px;
  text-align: center;
  padding: 0px 0px;
}
.main_1_2 > ul > li {
  width: 107px;
}
.main_1_2 > ul a {
  color: #a0a0a0;
}
.main_1_2 > ul > li > a {
  width: 107px;
  height: 60px;
  padding: 15px 0px;
}
.main_1_2 > ul > li > ul {
  position: absolute;
  list-style: none;
  background-color: #fff;
  padding: 0px;
  width: 107px;
  height: 104px;
  box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.2);
  line-height: 35px;
  margin-top: 15px;
  z-index: 9;
}
.main_1_2 > ul > li > ul {
  display: none;
}
.main_1_2 > ul > li:hover > ul {
  display: block;
}
li:hover > a {
  color: #666666;
}
.main_1_3 {
  flex: 0 0 26%;
  display: flex;
  margin-top: 67px;
  margin-bottom: 0;
  text-align: right;
  font-size: 14px;
}
.main_1_3 > input {
  width: 81%;
  height: 25px;
  padding: 3px 10px;
  line-height: 15px;
  border: 1px solid #c90000;
}
.main_1_3 > a {
  width: 19%;
  display: block;
  height: 33px;
  background: #c90000 none repeat scroll 0 0;
  font-size: 14px;
  color: #fff;
  line-height: 33px;
  text-align: center;
}
.main_1_3 > input:focus {
  outline: 0;
}
.main_1_3 > input:hover {
  outline: 0;
}
</style>
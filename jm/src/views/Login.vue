<template>
  <div>
    <!-- <div><my-header></my-header></div> -->
    <hr class="register_1" />
    <div class="register_2">
      <div class="register_2_1">
        <label for="username" class="register_2_2">手机/用户/邮箱</label>
        <input type="text" class="register_2_3" v-model="phone" />
      </div>
      <div class="hidden1">
        <span class="hidden2" v-show="hidden3">
          {{ msg }}
        </span>
      </div>
      <div class="register_2_1">
        <label for="password" class="register_2_2">密码</label>
        <input type="password" class="register_2_3" v-model="password" />
      </div>
      <div class="hidden1">
        <span class="hidden2" v-show="hidden4">
          {{ msg1 }}
        </span>
      </div>
      <div class="register_2_1 bianju">
        <label for="password" class="register_2_2"></label>
        <div>
          <input id="w" class="remember" type="checkbox" />
          <label for="w" class="a1">记住我（请在私人设备上使用此功能)</label>
        </div>
      </div>
      <hr class="hrColor" />
      <div class="registre_3">
        <div class="register_3_1">
          <button class="register_3_2 register_3_3" @click="login">登录</button>
          <button class="register_3_2" @click="register">注册</button>
        </div>
        <div>
          <span class="a2"> 第三方账号登录：</span>
          <a href="" class="iconfont icon-qq3 a5"></a>
        </div>
        <div class="a3"><a href="" class="a4">忘记密码？点这里找回</a></div>
      </div>
    </div>

    <div class="explain">
      <span>说明：</span>
      <span
        >1.实际使用之前，需配置用户管理组件中的相关邮件。详情请参考教程：《用户管理中相关邮件的配置》</span
      >
      <span
        >2.新用户注册后的审核方式有三种：自动核准、邮件激活、需要管理员批准（即人工审核），详情可参考教程《如何设置用户注册后的审核方式》</span
      >
    </div>
  </div>
</template>
<style scoped>
.hidden1 {
  margin-top: 20px;
  margin-bottom: 20px;
}
.hidden2 {
  margin-left:35%;
  padding: 4px 10px;
  background-color: #d14242;
  border: 1px, solid#bd3d3d !important;
  border-radius: 3px;
  font-size: 12px;
  color: #fff;
}
.a5 {
  font-size: 32px;
  color: #000;
}
.register_1 {
  width: 48%;
  margin: auto;
  margin-top: 10px;
  margin-bottom: 120px;
}
.register_2 {
  width: 23%;
  border: 1px solid #eee;
  margin: 0 auto;
  margin-bottom: 90px;
  border-radius: 5px;
  padding: 15px;
}
.register_2_1 {
  display: flex;
  align-items: center;
  position: relative;
}
.register_2_2 {
  width: 35%;
  font-size: 12px;
  margin-right: 8px;
  line-height: 18px;
  margin-top: 5px;
  color: #666;
}
.register_2_3 {
  width: 65%;
  height: 30px;
  padding: 0 8px;
  background-color: #f5f5f5;
  border-radius: 3px;
  border-color: #ddd;
  border: 0;
  border: 1px solid #c9c7c7;
}
.register_2_3:focus {
  background-color: #fff;
  box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.2);
  border-color: #a0a0a0;
  outline: 0;
}
.explain {
  display: flex;
  flex-direction: column;
  width: 48%;
  margin: 0 auto;
  font-size: 14px;
  color: #666;
  line-height: 25px;
  margin-bottom: 90px;
}
.registre_3 {
  margin-top: 15px;
}
.register_3 > div {
  /* height: 18px; */
  width: 100%;
}
.register_3 > :nth-child(2) {
  margin-top: 5px;
}
.remember {
  width: 16px;
  height: 16px;
}
.a1 {
  font-size: 12px;
  color: #888;
  line-height: 18px;
  padding: 0px 5px;
  position: absolute;
  bottom: 4px;
}
.bianju {
  margin-bottom: 15px;
}
.hrColor {
  border: 0;
  background-color: #eee;
  height: 1px;
}
.register_3_2 {
  width: 11%;
  height: 30px;
  margin-right: 15px;
  border: 0;
  border: 1px solid #ddd;
  border-radius: 3px;
  background-color: #fff;
}
.register_3_2:focus {
  outline: 0;
}
.register_3_3 {
  background-color: #000;
  color: #fff;
  border: 1px solid #000;
}
.a2 {
  margin-top: 5px;
  font-size: 12px;
  color: #888;
}
.a3 {
  margin-top: 50px;
  padding-bottom: 15px;
}
.a4 {
  text-decoration: none;
  font-size: 12px;
  color: #333;
  float: right;
}
</style>
<script>
import { mapMutations } from "vuex";
export default {
  data() {
    return {
      phone: "",
      password: "",
      hidden3: false,
      hidden4: false,
      msg: "",
      msg1: "",
    };
  },
  methods: {
    register() {
      this.$router.push("/register");
    },
    login() {
      if (this.phone == "" && this.password == "") {
        this.hidden3 = true;
        this.hidden4 = true;
        this.msg = "请提供注册中的电子邮件或用户名。";
        this.msg1 = " 请输入密码。";
      } else if (this.phone || this.password) {
        this.axios
          .post("/login", "phone=" + this.phone + "&password=" + this.password)
          .then((res) => {
            if (res.data.code == 1) {
              this.$router.push("/");
            } else if (res.data.code == 0) {
              this.hidden3 = false;
              this.hidden4 = true;
              this.msg1 = " 密码或者账户错误。";
            }
          });
      }
    },
  },
};
</script>

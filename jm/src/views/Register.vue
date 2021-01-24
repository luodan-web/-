<template>
  <div>
    <hr class="register_1" />
    <div class="register_2">
      <div class="register_2_1">
        <label for="username" class="register_2_2">电话号码</label>
        <input
          type="text"
          class="register_2_3"
          v-model="phone"
          @blur="phone1"
        />
      </div>
      <div class="hidden1">
        <span class="hidden2" v-show="hidden1">
          {{ msg1 }}
        </span>
      </div>
      <div class="register_2_1">
        <label for="password" class="register_2_2">短信验证</label>
        <div class="register_a">
          <input type="text" class="register_b" v-model="sms" />
          <div class="register_c">获取</div>
        </div>
      </div>
      <div class="hidden1">
        <span class="hidden2" v-show="hidden2">
          {{ msg2 }}
        </span>
      </div>
      <div class="register_2_1">
        <label for="password" class="register_2_2">密码</label>
        <input
          type="password"
          class="register_2_3"
          v-model="password"
          @blur="password1"
        />
      </div>
      <div class="hidden1">
        <span class="hidden2" v-show="hidden3">
          {{ msg3 }}
        </span>
      </div>
      <div class="register_2_1">
        <label for="password" class="register_2_2">再输一次密码</label>
        <input
          type="password"
          class="register_2_3"
          v-model="againpassword"
          @blur="password2"
        />
      </div>
      <div class="hidden1">
        <span class="hidden2" v-show="hidden4">
          {{ msg4 }}
        </span>
      </div>

      <hr class="hrColor" />
      <div class="register_2_1 remeber_bianju">
        <input id="w" class="remember" type="checkbox" />
        <label for="w" class="a1">我同意《用户手册》和《保密条款》</label>
        <label for="password" class="register_2_2"></label>
        <div>
          <label for="password" class="register_2_2"></label>
        </div>
      </div>
      <hr class="hrColor" />
      <div class="registre_3">
        <div class="register_3_1">
          <button class="register_3_2 register_3_3" @click="hand">注册</button>
          <button class="register_3_2" @click="login">登录</button>
        </div>
        <div class="hidden1">
          <span class="hidden2" v-show="hidden5">
            {{ msg5 }}
          </span>
        </div>
        <div>
          <span class="a2"> 第三方账号登录：</span>
          <a href="" class="iconfont icon-qq3 a5"></a>
        </div>
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
.remeber_bianju {
  padding-top: 15px;
}
.register_a {
  display: flex;
  width: 70%;
  height: 32px;
}
.register_b {
  width: 78%;
  background-color: #f5f5f5;
  border-color: #ddd;
  border: 0;
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
  border: 1px solid #c9c7c7;
  border-right: transparent;
}

.register_c {
  width: 22%;
  height: 30px;
  background-color: black;
  color: #fff;
  line-height: 30px;
  text-align: center;
  font-size: 12px;
  border: 1px solid #c9c7c7;
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
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
  color: #666;
}
.register_2_1 {
  display: flex;
  margin-bottom: 15px;
  align-items: center;
  position: relative;
}
.register_2_2 {
  width: 35%;
  height: 18px;
  font-size: 12px;
  margin-right: 8px;
  line-height: 18px;
  margin-top: 5px;
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
.register_input {
  padding: 0px;
  width: 70%;
}
input:focus {
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
.register_3 > div {
  height: 18px;
  width: 100%;
}
.remember {
  width: 16px;
  height: 16px;
}
.a1 {
  font-size: 12px;
  color: #888;
  line-height: 18px;
  padding: 0px 25px;
  position: absolute;
  bottom: 4px;
}
.hrColor {
  border: 0;
  background-color: #eee;
  height: 1px;
}
.register_3 > :nth-child(2) {
  margin-top: 5px;
}
.register_3_1 {
  display: flex;
  padding: 15px 0;
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
.a4 {
  text-decoration: none;
  font-size: 12px;
  color: #000;
  float: right;
}
.a3 {
  margin-top: 50px;
  padding-bottom: 15px;
}
.a5 {
  font-size: 32px;
  color: #000;
}
</style>
<script>
export default {
  data() {
    return {
      phone: "",
      password: "",
      againpassword: "",
      sms: "",
      msg1: "",
      msg2: "",
      msg3: "",
      msg4: "",
      msg5: "",
      hidden1: false,
      hidden2: false,
      hidden3: false,
      hidden4: false,
      hidden5: false,
    };
  },
  methods: {
    login(){
      this.$router.push('/login')
    },
    phone1() {
      let rge = /^1[3456789]\d{9}$/;
      if (!rge.test(this.phone)) {
        this.hidden1 = true;
        this.msg1 = "手机号的格式不正确";
        return false;
      } else {
        this.hidden1 = false;
      }
    },
    password1() {
      let reg1 = /^[0-9a-zA-Z\\W]{6,8}$/;
      if (!reg1.test(this.password)) {
        this.hidden3 = true;
        this.msg3 = "密码格式不正确";
        return false;
      } else {
        this.hidden3 = false;
      }
    },
    password2() {
      if (this.password != this.againpassword) {
        this.hidden4 = true;
        this.msg4 = "密码不一致";
      } else {
        this.hidden4 = false;
      }
    },
    hand() {
      if (
        this.phone == "" &&
        this.password == "" &&
        this.againpassword == "" &&
        this.sms == ""
      ) {
        this.hidden1 = true;
        this.hidden2 = true;
        this.hidden3 = true;
        this.hidden4 = true;
        this.msg1 = "此项必须填写";
        this.msg2 = "此项必须填写";
        this.msg3 = "此项必须填写";
        this.msg4 = "此项必须填写";
      } else if (this.phone && this.password && this.againpassword) {
        this.axios
          .post(
            "/register",
            "phone=" + this.phone + "&password=" + this.password
          )
          .then((res) => {
            if (res.data.code == 200) {
              this.$router.push("/");
            } else {
              this.msg5 = "用户已经存在";
              this.hidden5 = true;
            }
          });
      }
    },
  },
};
</script>
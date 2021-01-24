<template>
  <div>
    <img src="../../public/style/1.jpg" alt="" />
    <div></div>
    <div class="qiwu">
      <div></div>
      <div class="all qiwu_2">
        <span>
          <span>{{a}}</span>
        </span>
        <span></span>
      </div>
      <div class="lies">
        <div v-for="(v, i) of kind" :key="i" class="min" @click="xiaolei">
          {{ v.lei }}
        </div>
      </div>
      <!-- <div></div> -->
      <div class="qiwu_3_2">
        <div v-for="(v, i) of classid" :key="i">
          <router-link to="">
            <ul class="qiwu_3" v-if="classid.v!==''">
              <li>
                <img :src="v.img" alt="" />
                <ul>
                  <li>{{ v.Iname }}</li>
                  <li>￥{{ v.price }}.00</li>
                </ul>
              </li>
            </ul>
          </router-link>
        </div>
      </div>
    </div>
    </div>
   
</template>
<script>
import { Bus } from "../utils/Bus.js";
export default {
  data() {
    return {
      a: "",
      classid: [],
      kind: [],
    };
  },
  methods: {
    // 得到分类的值
    getxuanxiang() {
      Bus.$on("big", (data) => {
        this.a = data;
        // console.log(this.a)
        // this.getData('data');
        console.log("from bus..", data);
        this.axios.get("/classfiy", { params: { data: data } }).then((res) => {
          this.classid = res.data.a;
          this.kind = res.data.results;
          console.log(this.classid, this.kind);
        });
      });
    },
    // 小分类
    xiaolei(e) {
      let a = e.target.innerText;
      // console.log(a);
      this.axios.get("/classfiy", { params: { lei: a } }).then((res) => {
        this.classid = res.data.xiaoClass;
        //  console.log(this.classs);
      });
    },
  },
  mounted() {
    this.getxuanxiang();
  },
};
</script>
<style scoped>
img {
  width: 100%;
}
.lies {
  display: flex;
  justify-content: center;
  font-size: 14px;
  cursor:pointer;
}
.min {
  padding: 10px 30px;
  border: 1px solid #eeeeee;
  margin-right: 10px;
  margin-bottom: 22px;
}
</style>
<template>
  <div>
    <div class="register_1"></div>
    <div class="detalis_top">
      <div>
        <div><img :src="datas.img" alt="" /></div>
        <div><img :src="datas.img" alt="" /></div>
      </div>
      <div class="detalis_top_font">
        <div>{{ datas.Iname }}</div>
        <div></div>
        <div>￥{{ datas.price }}.00</div>
        <div>{{ datas.subtitle }}</div>
        <div class="detalis_top_shopping">
          <button>加入购物车</button>
          <input type="text" value="-" />
          <input type="text" value="1" />
          <input type="text" value="+" />
        </div>
        <div class="detalis_top_xian"></div>
        <span class="detalis_top_id">商品编号:000{{ datas.lid }}</span>
        <div class="detalis_top_xian"></div>
        <div>
          <span class="detalis_top_id">分类:{{datas.lei_mid}} </span>
          <span class="detalis_top_id1">
            {{ datas.classify }}
          </span>
        </div>
      </div>
    </div>
    <div class="daohanglan">
      <el-tabs v-model="activeName" @tab-click="handleClick" width="825px">
        <el-tab-pane label="描述" name="first">{{ datas.details }}</el-tab-pane>
        <el-tab-pane label="评价" name="fourth">目前还未有评论 只有买过此商品的客户登录后才能发表评论</el-tab-pane>
      </el-tabs>
    </div>
    <div class="register_2">

    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      datas: [{ img: "" }],
      imgs: [{ img: "" }],
      activeName: "first",
    };
  },
  methods: {
    handleClick(tab, event) {
      console.log(tab, event);
    },
    get2() {
      let lid = this.$route.params.lid;
      // '/details/lid'+lid
      this.axios.get("/details", { params: { lid: lid } }).then((res) => {
        this.datas = res.data.result[0];
        console.log(this.imgs);
      });
    },
  },
  mounted() {
    this.get2();
  },
};
</script>

<style scoped >
.daohanglan {
  width: 45%;
  margin: 0 auto;
}
.daohanglan >>> .el-tabs__item {
  font-size: 15px;
  font-weight: 700;
  color: #999;
  /* margin-right: 25px; */
  /* margin-left: 20px; */
   padding: 0px 5px;
}
.daohanglan >>> .el-tabs__active-bar {
  position: relative;
}
.daohanglan >>> .el-tabs__nav-wrap::after {
  bottom: 40px;
  background-color:rgb(245, 245, 245);
}
.daohanglan >>> .el-tabs__active-bar {
  background-color: #333333;
  height: 5px;
  width: 50% !important;
}
.daohanglan >>> .el-tab-pane{
  font-size: 12px;
  color: #808080 !important;
}
.register_1 {
  width: 48%;
  margin: auto;
  border: none;
  height: 3px;
  background-color: #eee;
  margin-top: 20px;
  margin-bottom: 20px;
}
.register_2 {
  width: 45%;
  margin: auto;
  border: none;
  height: 1px;
  background-color: #eee;
  margin-top: 20px;
  margin-bottom: 20px;
}
.detalis_top_font > :last-child {
  display: flex;
  font-size: 15px;
}
.detalis_top_id1 {
  margin: 7px 5px;
  color: #dd6363;
}
.detalis_top_xian {
  border-top: 1px dashed #dddddd;
}
.detalis_top_id {
  color: #7777;
  font-size: 15px;
  display: block;
  margin: 7px 0;
}
.detalis_top {
  display: flex;
  width: 45%;
  margin: 0 auto;
  padding: 0 20px;
}
.detalis_top > :first-child {
  width: 33%;
}
.detalis_top > :first-child > :first-child {
  width: 88%;
}
.detalis_top > :first-child > :first-child > img {
  width: 100%;
}
.detalis_top > :first-child > :nth-child(2) > img {
  width: 20%;
  margin: 8px 0 20px 0;
}
.detalis_top > :nth-child(2) {
  width: 67%;
}
.detalis_top_font > :first-child {
  font-size: 24px;
  color: #555555;
  font-weight: 600;
  margin-bottom: 10px;
  font-family: 微软雅黑;
}
.detalis_top_font > :nth-child(2) {
  width: 80px;
  height: 3px;
  margin-bottom: 10px;

  background-color: #ddd;
}
.detalis_top_font > :nth-child(3) {
  color: #000;
  font-weight: bold;
  font-size: 24px;
  margin-bottom: 10px;
  font-family: arial;
}
.detalis_top_font > :nth-child(4) {
  font-size: 14px;
  color: #7777;
  margin-bottom: 35px;
}
.detalis_top_shopping {
  display: flex;
}
.detalis_top_shopping > button {
  height: 44px;
  width: 130px;
  border: none;
  background-color: #77777777;
  color: #fff;
  font-size: 16px;
  margin-bottom: 15px;
  margin-right: 10px;
}
.detalis_top_shopping > input {
  height: 40px;
  width: 32px;
  text-align: center;
  border: none;
  border: 1px solid #cccccc;
}
.detalis_top_shopping > :nth-child(2) {
  border-right: none;
}
.detalis_top_shopping > :nth-child(3) {
  border-right: none;
}
</style>
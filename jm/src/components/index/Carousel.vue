<template>
  <el-carousel :interval="5000" arrow="always" height="825px">
    <el-carousel-item v-for="(p, i) of imgs" :key="i">
      <img :src="p.img" alt="" />
    </el-carousel-item>
  </el-carousel>
</template>

<style>
</style>
<script>
export default {
  data() {
    return {
      imgs: [],
    };
  },
  methods: {
    get() {
      this.axios.get("/carousel").then((res) => {
        this.imgs = res.data.result;
        // console.log(this.imgs);
      });
    },
  },
  mounted() {
    this.get();
  },
};
</script>
<style scoped>
img{
  width: 100% ;
}
</style>
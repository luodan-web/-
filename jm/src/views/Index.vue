<template>
  <div>
    <!-- 轮播图 -->
    <carousel></carousel>
    <!-- 一楼 -->
    <first></first>
  </div>
</template>
<script>
import Carousel from "../components/index/Carousel.vue";
import First from "../components/index/First.vue";

export default {
 
  components: {Carousel,First},
};
</script>
<template>
  <div>
    <div class="all all_a">
      <span>所有商品</span>
      <span>All Commodity</span>
      <span class="iconfont icon-jiazai"></span>
    </div>
    <div class="qiwu">
      <div><img :src="imgs[0].img" /></div>
      <div class="all qiwu_2">
        <span>
          <span>美</span>
          <span>之</span>
          <span>器物</span>
        </span>
        <span>Beautiful Utensil</span>
      </div>
      <div class="qiwu_3_2">
        <div v-for="(v, i) of imgs.slice(3, 11)" :key="i">
          <router-link :to="`/details/${v.lid}`">
            <ul class="qiwu_3">
              <li>
                <img :src="v.img" alt="" />
                <ul>
                  <li>{{ v.Iname }}</li>
                  <li>￥{{ v.price.toFixed(2) }}</li>
                </ul>
              </li>
            </ul>
          </router-link>
        </div>
      </div>
    </div>
    <div class="all all_a">
        <span class="iconfont icon-jiazai"></span>
    </div>
    <div class="qiwu">
      <div><img :src="imgs[1].img" /></div>
      <div class="all qiwu_2">
        <span>
          <span>南</span>
          <span>之</span>
          <span>嘉木</span>
        </span>
        <span>Chinese Tea</span>
      </div>
      <div class="qiwu_3_2">
        <div v-for="(v, i) of imgs.slice(11,19)" :key="i">
          <router-link :to="`/details/${v.lid}`">
            <ul class="qiwu_3">
              <li>
                <img :src="v.img" alt="" />
                <ul>
                  <li>{{ v.Iname }}</li>
                  <li>￥{{ v.price.toFixed(2) }}</li>
                </ul>
              </li>
            </ul>
          </router-link>
        </div>
      </div>
    </div>
     <div class="all all_a">
        <span class="iconfont icon-jiazai"></span>
    </div>
    <div class="qiwu">
      <div><img :src="imgs[2].img" /></div>
      <div class="all qiwu_2">
        <span>
          <span>觉</span>
          <span>之</span>
          <span>盆景</span>
        </span>
        <span>[</span>
      </div>
      <div class="qiwu_3_2">
        <div v-for="(v, i) of imgs.slice(19, 28)" :key="i">
          <router-link :to="`/details/${v.lid}`">
            <ul class="qiwu_3">
              <li>
                <img :src="v.img" alt="" />
                <ul>
                  <li>{{ v.Iname }}</li>
                  <li>￥{{ v.price.toFixed(2) }}</li>
                </ul>
              </li>
            </ul>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>
<style scoped>

.all_a {
  margin-top: 50px;
}
.all > :first-child {
  
  line-height: 1.5em;
}
.all > :nth-child(2) {
  font-family: raleway;
  font-size: 13px;
  letter-spacing: 3px;
  line-height: 1.5em;
  margin: 5px 0;
}
.all > :last-child {
  color: #adadad;
  font-weight: 400;
  line-height: 1.6em;
  margin: 20px 0;
}

</style>
<script>
export default {
  data() {
    return {
      imgs:[{img:""},{img:""},{img:""}],
    };
  },
  methods: {
    get() {
      this.axios.get("/frist").then((res) => {
        this.imgs = res.data.result;
      });
    },
  },
  mounted() {
    this.get();
  },
};
</script>

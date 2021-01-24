<template>
  <div class="footer common_font">
    <div class="footer_1">
      <div>
        <img src="../assets/img/1.webp" alt="" />
      </div>
      <div class="footer_2">
        <ul>
          <li class="footer_1_1">支付方式</li>
          <li><a href="">在线支付</a></li>
          <li><a href="">货到付款</a></li>
          <li><a href="">银行转账</a></li>
        </ul>
        <ul>
          <li class="footer_1_1">支付方式</li>
          <li><a href="">在线支付</a></li>
          <li><a href="">货到付款</a></li>
          <li><a href="">银行转账</a></li>
        </ul>
        <ul>
          <li class="footer_1_1">支付方式</li>
          <li><a href="">在线支付</a></li>
          <li><a href="">货到付款</a></li>
          <li><a href="">银行转账</a></li>
        </ul>
      </div>
      <div>
        <p>
          Copyright © 2010-2015 南之嘉木茶文化有限公司. All rights reserved.
        </p>
      </div>
    </div>
  </div>
</template>
<style  scoped>
.footer {
  height: 336px;
  padding: 20px 0px 0px;
}
.footer_1 {
  width: 1104px;
  margin: 0 auto;
  padding: 0 40px;
}
.footer_1 > div {
  text-align: center;
}
.footer_1 > div > img {
  width: 47px;
  height: 82px;
}
.footer_2 {
  display: flex;
  justify-content: space-around;
  
}
.footer_2 > ul {
  padding: 0px;
  color: #666666;
  list-style: none;
  line-height: 30px;
}
.footer_1_1 {
  margin-top: 9px;
  font-size: 16px;
  font-weight: 700;
}
a {
  text-decoration: none;
  font-size: 14px;
  color: #a0a0a0;
}
a:hover {
  color: #666666;
}
.footer_1 > :nth-child(3) {
  text-align: center;
  font-size: 13px;
  color: #9e9e9e;
  padding-top: 26px;
}
</style>
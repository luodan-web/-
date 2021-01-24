<template>
  <div id="app">
    <div><my-header></my-header></div>
  <router-view></router-view>
    <div><my-footer></my-footer></div>
   
  </div>
</template>

<style>


.common_font{
    background-color:#f2f2f2 ;
}
*{
  	margin:0;
    padding:0;
    font-family:"微软雅黑",Helvetica,Arial,Verdana,sans-serif;
}
a{
  text-decoration: none;
}
li{
  list-style:  none;
}
.qiwu {
  width: 60%;
  margin: 0 auto;
  border: 1px solid #eee;
}
.qiwu > :first-child > img {
  width: 100%;
  margin: 0 auto;
}
.qiwu_3_2 {
  display: flex;
  justify-content: space-between;
  flex-flow: wrap;
}
.qiwu_3_2>div{
  margin: 0;
  width: 24.7%;
  
}
.qiwu_3 ul {
  text-align: center;
  margin: 15px 0;
  padding-top: 10px;
  background-color: #fff;
}

.qiwu_3 ul > :first-child {
  font-size: 14px;
  color: #adadad;
  font-family: 微软雅黑;
  margin-bottom: 6px;
  /* margin-top:15px ; */
}
.qiwu_3 ul > :last-child {
  font: 18px;
  font-family: Raleway;
  color: #000;
}
.qiwu_3 > li {
  text-align: center;
  background: #f8f8f8;
}
.qiwu_3 > li > img {
  width: 90%;
  transition: all 0.5s;
}
.qiwu_3 >li>img:hover {
  transform: scale(1.1) translateY(10px);
}
.qiwu_2 {
  margin-top: 0px;
  margin: 20px 0 10px;
}

.qiwu_2 > :first-child > span {
  font-family: 宋体;
}
.qiwu_2 > :first-child > :nth-child(2) {
  color: #b22222;
}

.qiwu_2 > :last-child {
  margin: 0px;
  font-family: raleway;
  font-size: 13px;
  line-height: 1.6em;
  color: #adadad;

}
.all {
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 宋体;
  font-size: 26px;
}
</style>

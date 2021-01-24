SET NAMES UTF8;
DROP DATABASE IF EXISTS jm;
CREATE DATABASE jm CHARSET=UTF8;
USE jm;
-- <!-- 用户的信息 -->
CREATE TABLE jm_user(
id INT PRIMARY KEY AUTO_INCREMENT,    #编号
usrname VARCHAR(32),
password VARCHAR(32),
emaile VARCHAR(64),
phone VARCHAR(16)
);
-- <!-- 插入用户的信息 -->
INSERT INTO jm_user VALUES
(1,'luodan','123456789','283451268@qq.com',13708204695),
(2,'zhangshang','12345678','283451267@qq.com',17380044858),
(3,'lisi','123456','283451266@qq.com',15082365536),
(4,'xiaoming','12345','283451265@qq.com',15390067305),
(5,'xiaohong','1234','283451264@qq.com',13708204694);

-- 轮播图
CREATE TABLE jm_carousel(
  id INT,
  img VARCHAR(128)
);

-- 轮播图的列表
INSERT INTO jm_carousel VALUES
(1,'http://127.0.0.1:3000/public/carousel/1.jpg'),
(2,'http://127.0.0.1:3000/public/carousel/2.jpg'),
(3,'http://127.0.0.1:3000/public/carousel/3.jpg');

-- <!-- 商品 -->
CREATE TABLE jm_qiwu(
lid INT,                             #编号
Iname VARCHAR(32),                  #商品的名称
subtitle VARCHAR(32),               #副标题
price DECIMAL(10,2),                 #价格
img VARCHAR(128),                     #图片
details VARCHAR(128),              #产品的详情信息
lei_mid VARCHAR(32),
dalei VARCHAR(32)
);
-- 美之器物
INSERT INTO jm_qiwu VALUES
(1,null,null,null,'http://127.0.0.1:3000/public/qiwu/9.webp',null,null,null),
(2,null,null,null,'http://127.0.0.1:3000/public/qiwu/10.webp',null,null,null),
(3,null,null,null,'http://127.0.0.1:3000/public/qiwu/11.webp',null,null,null),
(001003,'公道杯','応损捠捡换，攴朰朲朳枛朸桸桹桺奿妀。',199.00,'http://127.0.0.1:3000/public/qiwu/1.webp','公道杯，古代汉族饮酒用瓷制品。杯中央立一老头或龙头，体内有一空心瓷管，管下通杯底的小孔；管的上口相当于老人胸前的黑痣高度(或龙颔)。','茶道','美之器物'),
(000015,'紫砂壶','如如鱼鱼圼',500.00,'http://127.0.0.1:3000/public/qiwu/2.webp',null,'茶道','美之器物'),
(000008,'老铁壶','null',19999.00,'http://127.0.0.1:3000/public/qiwu/3.webp',null,'茶道','美之器物'),
(000005,'天目盏',null,300.00,'http://127.0.0.1:3000/public/qiwu/4.webp',null,'茶道','美之器物'),
(007008,'柴烧花器',null,500.00,'http://127.0.0.1:3000/public/qiwu/5.webp',null,'花道','美之器物'),
(020665,'香炉',null,1599.00,'http://127.0.0.1:3000/public/qiwu/6.webp',null,'香道','美之器物'),
(003005,'茶承',null,300.00,'http://127.0.0.1:3000/public/qiwu/7.webp',null,'茶道','美之器物'),
(002006,'茶洗',null,399.00,'http://127.0.0.1:3000/public/qiwu/8.webp',null,'白道','美之器物'),
(005003,'洞庭山 · 碧螺春','洞庭山·碧螺春',700.00,'http://127.0.0.1:3000/public/qiwu/12.webp',null,'绿茶','南之嘉木'),
(002005,'正山小种','正山小种',99.00,'http://127.0.0.1:3000/public/qiwu/13.webp',null,'绿茶','南之嘉木'),
(003006,'正安白茶',null,500.00,'http://127.0.0.1:3000/public/qiwu/14.webp',null,'白茶','南之嘉木'),
(006009,'铁观音',null,555.00,'http://127.0.0.1:3000/public/qiwu/15.webp','铁观音（tiě guān yīn）茶，中国传统名茶，属于青茶类，是中国十大名茶之一。原产于福建泉州市安溪县西坪镇，发现于1723—1735年。“铁观音”既是茶名，也是茶树品种名，铁观音茶介于绿茶和红茶之间，属于半发酵茶类，铁观音独具“观音韵”，清香雅韵，冲泡后有天然的兰花香，滋味纯浓,香气馥郁持久，有“七泡有余香”之誉 。','绿茶','南之嘉木'),
(000011,'凤凰单枞',null,599.00,'http://127.0.0.1:3000/public/qiwu/16.webp',null,'乌龙','南之嘉木'),
(004007,'西湖龙井',null,600.00,'http://127.0.0.1:3000/public/qiwu/17.webp',null,'绿茶','南之嘉木'),
(003008,'祁门红茶',null,499.00,'http://127.0.0.1:3000/public/qiwu/18.webp',null,'红茶','南之嘉木'),
(004006,'六安瓜片',null,555.00,'http://127.0.0.1:3000/public/qiwu/19.webp',null,'绿茶','南之嘉木'),
(000012,'盆景001',null,599.00,'http://127.0.0.1:3000/public/qiwu/20.webp',null,'老物','觉之盆景'),
(000019,'盆景002',null,799.00,'http://127.0.0.1:3000/public/qiwu/21.webp',null,'老物','觉之盆景'),
(001004,'盆景003',null,666.00,'http://127.0.0.1:3000/public/qiwu/22.webp',null,'老物','觉之盆景'),
(006005,'盆景004',null,799.00,'http://127.0.0.1:3000/public/qiwu/23.webp',null,'老物','觉之盆景'),
(002006,'盆景005',null,1999.00,'http://127.0.0.1:3000/public/qiwu/24.webp',null,'新物','觉之盆景'),
(000013,'盆景006',null,399.00,'http://127.0.0.1:3000/public/qiwu/25.webp',null,'新物','觉之盆景'),
(003007,'盆景007',null,399.00,'http://127.0.0.1:3000/public/qiwu/26.webp',null,'新物','觉之盆景'),
(000004,'盆景008',null,399.00,'http://127.0.0.1:3000/public/qiwu/27.webp',null,'新物','觉之盆景');
-- 分类
CREATE TABLE lei(
mid int,
lei VARCHAR(32),
daleid VARCHAR(32),
english VARCHAR(32)
);
INSERT INTO lei VALUES
(4,'茶道','美之器物','Beautiful Utensil'),
(5,'花道','美之器物',null),
(6,'香道','美之器物',null),
(7,'白道','美之器物',null),
(8,'乌龙','南之嘉木','Chinese Tea'),
(9,'白茶','南之嘉木',null),
(10,'红茶','南之嘉木',null),
(11,'绿茶','南之嘉木',null),
(12,'老物','觉之盆景','Bonsai'),
(13,'新物','觉之盆景',null);
CREATE TABLE  dalei(
  wid int,
  dalei VARCHAR(32)
);
INSERT INTO dalei VALUES
(1,'美之器物'),
(2,'南之嘉木'),
(3,'觉之盆景');
-- <!-- 南之嘉木 -->
-- <!-- 觉之盆景 -->
-- <!-- 购物车详情 -->
-- CREATE TABLE jm_shoppingcart_item(
--    iid INT PRIMARY KEY AUTO_INCREMENT,#编号
--    user_id INT,                       #用户的编号
--    product_id INT,                    #商品的编号
--    count INT,                         #购买的数量
--    is_checked BOOLEAN,                #是否已勾选，确定购买
--    freight VARCHAR(4,2)			#运费
--   );
-- <!-- 收货地址信息 -->
-- CREATE TABLE jm_receiver_address(
--   aid INT PRIMARY KEY AUTO_INCREMENT,
--   user_id INT,                #用户编号
--   receiver VARCHAR(16),       #接收人姓名
--   company VARCHAR(32),	      #公司名称
--   province VARCHAR(16),       #省
--   city VARCHAR(16),           #市
--   county VARCHAR(16),         #县
--   address VARCHAR(128),       #详细地址
--   cellphone VARCHAR(16),      #手机
--   fixedphone VARCHAR(16),     #固定电话
--   postcode CHAR(6),           #邮编
--   tag VARCHAR(16),            #标签名
--   couponCode VARCHAR(32),     #优惠券编码
--   is_default BOOLEAN          #是否为当前用户的默认收货地址
-- );
-- <!--用户的订单详情  -->
-- CREATE TABLE jm_order_detail(
--   did INT PRIMARY KEY AUTO_INCREMENT,
--   order_id INT,           #订单编号
--   product_id INT,         #产品编号
--   count INT,               #购买数量
--   pay INT                #支付方式 1.银行汇款2.支付宝
-- );


// 加载express模块
const express = require('express');
// 创建web服务器
const server = express();
// 编码
const MD5 = require('md5');
// 加载mysql数据库
const mysql = require("mysql");
// 数据库
const pool = mysql.createPool({
    // 服务器的地址
    host: '127.0.0.1',
    // 服务器的端口
    port: 3306,
    user: 'root',
    password: '',
    database: 'jm',
    charset: 'utf8',
    // 最大连接数
    connectionLimit: 20
});
//引入bodyParser中间件
const bodyParser = require('body-Parser')
    // 使用中间件将post请求解析为对象
server.use(bodyParser.urlencoded({
    extended: false
}));

// 托管静态资源
server.use("/public", express.static("./public"))

// 加载cors模块解决跨域时候导入
const cors = require('cors');
// 将cors作为EXPRESS服务器的中间件
server.use(cors({
    origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}));
// 注册
server.post('/register', (req, res) => {
        let phone = req.body.phone;
        console.log(phone);
        let password = req.body.password;
        let sql = "select count(id) as count from jm_user where phone=?"
        pool.query(sql, [phone], (err, results) => {
            if (err) throw err;
            if (results[0].count) {
                res.send({ code: 201, results: results })
            } else {
                sql = "insert into jm_user(phone,password) values(?,MD5(?))"
                pool.query(sql, [phone, password], (err, results) => {
                    if (err) throw err;
                    res.send({ code: 200, results: results })
                })
            }
        })
    })
    // 登录
server.post('/login', (req, res) => {
    // res.send('ok');
    let phone = req.body.phone;
    console.log(phone)
    let password = MD5(req.body.password);
    // console.log(usrname);
    let sql = "select * from jm_user where phone=? and password=?";
    pool.query(sql, [phone, password], (error, result) => {
        if (error) throw error;
        console.log(result);
        if (result.length == 0) {
            res.send({ message: '查询失败', code: 0, result: result })
        } else {
            res.send({ message: '查询成功', code: 1, result: result })
        }
    });
});
// 轮播图
server.get('/carousel', (req, res) => {
    let sql = "select * from jm_carousel";
    pool.query(sql, (error, result) => {
        if (error) throw error;
        // console.log(result);
        res.send({ message: '查询成功', result: result });

    })
});
// 列表
server.get('/frist', (req, res) => {
        let sql = "select lid,Iname,price,img from  jm_qiwu";
        pool.query(sql, (err, result) => {
            if (err) throw err;
            res.send({ result: result });
        })
    })
    //详情页的数据
server.get('/details', (req, res) => {
        let lid = req.query.lid;
        let sql = "select lid,Iname,price,img,subtitle,details,lei_mid,dalei from jm_qiwu where lid=?";
        pool.query(sql, [lid], (err, result) => {
            if (err) throw err;
            res.send({ result: result })
        })
    })
    // 首页的ID
server.get('/kind', (req, res) => {
        let sql = 'select wid,dalei from dalei'
        pool.query(sql, (err, result) => {
            if (err) throw err;
            // console.log(result);
            res.send({ result: result });
        })
    })
    // 分类
server.get('/classfiy', (req, res) => {
        // let wid = req.query.wid;
        // console.log(wid);
        let dalei = req.query.data
            // console.log(dalei);
            // console.log(dalei);
        let xiaolei = req.query.lei
        console.log(xiaolei);
        let sql = 'select lid,Iname,subtitle,price,img from jm_qiwu inner join dalei on dalei.dalei=jm_qiwu.dalei where dalei.dalei=?';
        pool.query(sql, [dalei], (err, result) => {
            if (err) throw err;
            let a = result;
            // console.log(a);
            let sqls = 'select lei,daleid,english from lei inner join dalei on dalei.dalei=lei.daleid where dalei.dalei=?'
            pool.query(sqls, [dalei], (err, results) => {
                if (err) throw err;
                let sqls = "select lid,Iname,subtitle,price,img from jm_qiwu inner join lei on lei.lei=jm_qiwu.lei_mid where lei.lei=?";
                pool.query(sqls, [xiaolei], (err, result) => {
                    if (err) throw err;
                    let xiaoClass = result;
                    res.send({ results: results, a: a, xiaoClass: xiaoClass });
                })

                // console.log(results);
            })
        })

    })
    // 获取小分类id

// 在指定的Web服务器监听的端口
server.listen(3000);
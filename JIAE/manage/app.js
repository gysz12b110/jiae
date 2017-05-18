var http = require('http');
var express = require('express');
var app = express();
var bodyParser = require("body-parser"); //URL解析库
var pools = require("./server/utils/pool"); //工具类
var tools = require("./server/utils/tools");
var userRoutes = require("./server/controller/userController");
var MessageXSend = require('./server/sms/messageXSend.js');

var urlParser = bodyParser.urlencoded({ extended: false });
app.use(express.static(__dirname + "/admin"));

app.get("/", function(req, res) {
    res.sendFile(__dirname + "admin/index.html");
})

//用户路由
userRoutes(app, urlParser, tools,pools);
app.listen(9000);
console.log("server start in 9000");


//短信验证码
app.post("/sms",urlParser,function(req,res){
//	console.log("sms...."+req.body.account);
    var random=Math.floor(Math.random()*899999)+100000;
    var messageXSend = new MessageXSend();
    messageXSend.add_to(req.body.account);
    phone=req.body.account;
    messageXSend.set_project('OyIeK4');
    messageXSend.add_var('code',random);
    messageXSend.add_var("time","5分钟");
    messageXSend.xsend();
    res.send(random+"");
});


/**
 * 查询所有商品
 */
app.get("/list",function(req,res){
    //GET请求：获取参数使用query
    var name=req.query.name;
    var sex=req.query.sex;
    var sql="select id,name from goodstype where 1=1 and parent_id=0 ";
    if(name &&　name!="")  sql+=" and name like '%"+name+"%' ";
    console.log(sql);
    pools(sql,[],function(result){
        res.send(result);
    })
})

/**
 * 添加新商品
 */
app.post("/addgoods",urlParser,function(req,res){
    var sql="insert into goodstype(name,age,sex)values(?)";
    var param=[req.body.name,];
    pools(sql,param,function(result){
        if(result.affectedRows>0){
            res.send("success");
        }else{
            res.send("failure");
        }
    })
})


/**
 * 删除商品
 */
app.post("/delgoods",urlParser,function(req,res){
    var sql="update goodstype set state=0 where id=?";
    var param=[req.body.no];
   pools(sql,param,function(result){
        if(result.affectedRows>0){
            res.send("success");
        }else{
            res.send("failure");
        }
    })
})

/**
 * 更新商品信息
 */
app.post("/updateuser",urlParser,function(req,res){
    var sql="update goodstype set name=? where id=?";
    var param=[req.body.name,req.body.no];
    pools(sql,param,function(result){
        if(result.affectedRows>0){
            res.send("success");
        }else{
            res.send("failure");
        }
    })
})

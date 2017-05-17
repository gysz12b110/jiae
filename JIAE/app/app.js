var http = require('http');
var express = require('express');
var app = express();
var bodyParser = require("body-parser"); //URL解析库
var pools = require("./server/utils/pool"); //工具类
var tools = require("./server/utils/tools");
var userRoutes = require("./server/controller/userController");
var MessageXSend = require('./server/sms/messageXSend.js');
//哈哈哈哈
var urlParser = bodyParser.urlencoded({ extended: false });
app.use(express.static(__dirname + "/public"));

app.get("/", function(req, res) {
    res.sendFile(__dirname + "/public/pages/test.html");
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


var http = require('http');
var express = require('express');
var app = express();
var bodyParser = require("body-parser"); //URL解析库
var pools = require("./server/utils/pool"); //工具类
var tools = require("./server/utils/tools");
var userRoutes = require("./server/controller/userController");
<<<<<<< HEAD
var goodsRoutes = require("./server/controller/goodsController");
=======
var roleRoutes = require("./server/controller/roleController");
>>>>>>> e5257f2d9e3b29aa67316393302762b49f844cdb
var MessageXSend = require('./server/sms/messageXSend.js');

var urlParser = bodyParser.urlencoded({ extended: false });
app.use(express.static(__dirname + "/admin"));
<<<<<<< HEAD

app.get("/", function(req, res) {
    res.sendFile(__dirname + "admin/index.html");
=======

//console.log(__dirname);//F:\githubjiae\jiae\JIAE\manage

app.get("/", function(req, res) {
    res.sendFile(__dirname + "/admin/index.html");
>>>>>>> e5257f2d9e3b29aa67316393302762b49f844cdb
})

//用户路由
userRoutes(app, urlParser, tools,pools);
<<<<<<< HEAD
goodsRoutes(app, urlParser, tools,pools);

app.listen(9000);
console.log("server start in 9000");
=======
>>>>>>> e5257f2d9e3b29aa67316393302762b49f844cdb

//角色管理
roleRoutes(app, urlParser, tools,pools);

app.listen(9000);
console.log("server start in 9000");



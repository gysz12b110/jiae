var execute=function(app, urlParser, tools,pool){
    app.post("/register",urlParser,function(req,res){
        //接收参数
        var u=req.body.user;
        var p=tools.md5(req.body.pass);
        var m=req.body.mobile;
        pool("insert into user(username,password,mobile)values(?,?,?)",[u,p,m],function(result){
            console.log(result);
        })
    })
}

module.exports=execute;
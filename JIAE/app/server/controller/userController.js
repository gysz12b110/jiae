var execute=function(app, urlParser, tools,pool){
    var path=__dirname.substring(0,__dirname.indexOf("server"));
    app.get("/registerPage",function(req,res){
       res.sendFile(path+"/public/pages/register.html");
    })
    app.get("/loginPage",function(req,res){
       res.sendFile(path+"/public/pages/login.html");
    })
    app.post("/register",urlParser,function(req,res){
        //接收参数
        var mobile=req.body.mobile;
        var p=tools.md5(req.body.pass);
        var sql="";
        if(mobile.indexOf("@")>-1){
            sql="insert into user(email,password)values(?,?)";
        }else{
            sql="insert into user(mobile,password)values(?,?)";
        }
        pool(sql,[mobile,p],function(result){
           if(result.affectedRows==1){
               res.sendFile(path+"/public/pages/login.html");
           }
        })
    })
}

module.exports=execute;
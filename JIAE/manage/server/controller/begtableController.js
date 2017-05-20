var execute=function(app, urlParser, tools,pool){
  /**
 * 查询所有商品
 */
app.get("/list",function(req,res){
    //GET请求：获取参数使用query
    var name=req.query.name;
    var sex=req.query.sex;
    var sql="select id,name from brand where 1=1 and state = 1 ";
    if(name &&　name!="")  sql+=" and name like '%"+name+"%' ";
    pool(sql,[],function(result){
        res.send(result);
    })
})

	//增加
	app.post("/addBrand",urlParser,function(req,res){
		var sql = 'insert into brand(name) values(?)';
		var param = [req.body.name];
		pool("select id,name from brand where 1=1 and state=1 and name=?",param,function(result){
			if(result.length==0){
				pool(sql,param,function(result){
					if(result.affectedRows>0){
						res.send('success');
					}else{
						res.send('failure');
					}
				})
			}else{
				res.send('failure');
			}
		})
				
	})
  
}
	//修改
	app.post("/upDataBrand",urlParser,function(req,res){
		var sql = 'update brand set name=? where id=?';
		var param = [req.body.name,req.body.num];
		pool("select id,name from brand where 1=1 and state=1 and name=?",param,function(result){
			if(result.length==0){
				pool(sql,param,function(result){
					if(result.affectedRows>0){
						res.send('success');
					}else{
						res.send('failure');
					}
				})
			}else{
				res.send('failure');
			}
		})
				
	})
	
		//删除
	app.post("/delBrand",urlParser,function(req,res){
		var sql = "update brand set state = 0 where id = ?";
		var param = [req.body.num];
		pool(sql,param,function(result){
			if(result.affectedRows>0){
				res.send('success');
			}else{
				res.send('failure');
			}
		})
	})

module.exports=execute;
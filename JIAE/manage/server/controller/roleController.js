var execute=function(app, urlParser, tools,pool){
   	//角色页面加载
	app.get("/listRole",function(req,res){
		//获取前端传到后台的数据
		var role = req.query.role;
		var sql = "select id,role from role where 1=1 and state=1";
		//在数据库中进行操作
		pool(sql,[],function(result){
			res.send(result);
		})
	});
	
	//增加
	app.post("/addRole",urlParser,function(req,res){
		var sql = 'insert into role(role) values(?)';
		var param = [req.body.role];
		pool("select id,role from role where 1=1 and state=1 and role=?",param,function(result){
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
	
	//冻结
	app.post("/delRole",urlParser,function(req,res){
		var sql = 'update role set state=0 where id=?';
		var param = [req.body.num];
		pool(sql,param,function(result){
			if(result.affectedRows>0){
				res.send('success');
			}else{
				res.send('failure');
			}
		})
	})
	//修改
	app.post("/reviseRole",urlParser,function(req,res){
		var sql = 'update role set role=? where id=?';
		var param = [req.body.role,req.body.num];
		pool("select id,role from role where 1=1 and state=1 and role=?",param,function(result){
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

module.exports=execute;
var execute=function(app, urlParser, tools,pool){
	app.get("/myindent",function(req,res){
		var sql="select * from order";
		pool(sql,[],function(result){
		res.send(result);
		})
	})
}
module.exports=execute;
var execute=function(app, urlParser, tools,pool){
  /**
 * 查询所有商品
 */
app.get("/list",function(req,res){
    //GET请求：获取参数使用query
    var name=req.query.name;
    var sex=req.query.sex;
    var sql="select id,name from goodstype where 1=1 and parent_id=0 ";
    if(name &&　name!="")  sql+=" and name like '%"+name+"%' ";
    pool(sql,[],function(result){
        res.send(result);
    })
})


  
}

module.exports=execute;
var mysql = require("mysql");
var pool = mysql.createPool({
	host: '127.0.0.1',
	user: 'root',
	password: '',
	database: 'jiae',
	port: 3306
});
module.exports= function(sql, param, callback) {
	pool.getConnection(function(err, conn) {
		if(err) {
			console.error(err);
			callback(err, null, null);
		} else {
			//fields:字段;vals:内容;qerr:报错
			conn.query(sql, param, function(qerr, vals, fields) {
				if(qerr) console.log("qerr:" + qerr);
				console.log("vals:" + vals);
//				console.log("fields:" + fields);
				//释放连接  
				conn.release();
				//事件驱动回调  
				callback(vals);
			});
		}
	});
};




//var mysql = require("mysql");
//var pool = mysql.createPool({
//  database: "jiae",
//  user: "root",
//  password: "",
//  port: 3306,
//  host: "127.0.0.1"
//})
////var query = function(sql, param, callback) {
//  pool.getConnection(function(err, conn) {
//      err && console.log(err);
//      conn.query(sql, param, function(err, result, fields) {
//          err && console.log(err);
//          console.log(result);
//          callback(result);
//          conn.release(); //释放链接
//      })
//  })
//}
//module.exports = query;
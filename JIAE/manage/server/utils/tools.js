/**
 * 工具类:tools
 */
var crypto = require('crypto'); //MD5加密库

function md5 (text) {
  return crypto.createHash('md5').update(text).digest('hex');
};

var tools=new Object();
tools.md5=md5;

module.exports=tools;

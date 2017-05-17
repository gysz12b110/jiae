var request = require('request');

function voice_very(params) {
	var appid = '20180';
	var appkey='fc1af963ddd09b73497db65afa437108';

	var api = 'https://api.submail.cn/voice/verify.json';
	var requestParams = params;
	requestParams['appid'] = appid;
	requestParams['signature'] = appkey;
	request.post({url: api, formData: requestParams}, function optionalCallback(err, httpResponse, body) {
	if (err) {
	return console.error('upload failed:', err);
	}
	console.log('Upload successful! Server responded with:', body);
	});
}

//����

var params=new Array();

params['to']='18435116347';
params['code']=555666;

voice_very(params);
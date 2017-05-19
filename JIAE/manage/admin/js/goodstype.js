var app=angular.module("myapp",[]);
		app.controller("myctrl",["$scope","$http",function($scope,$http){
			
			$scope.httpGet=function(url,data){
				$http({
					method:"GET",
					url:url,
					params:data
				}).then(function(response){
					$scope.goodsList=response.data;
				},function(){
					alert("系统繁忙，请稍后再试");
				})
			}
			
			$scope.httpPost=function(url,data){
					$http({
						method:"POST",
						url:url,
						headers: { 'Content-Type': 'application/x-www-form-urlencoded' },//设置headers
						data:$.param(data)
					}).then(function successCallback(response) {
						if(response.data=="success"){
							location.reload();
						}
					}, function errorCallback(response) {
						alert("系统繁忙，请稍后再试");
					});
			}
			//发起ajax请求,从回调函数的参数中拿到结果,这个结果是个数组
			$scope.httpGet("list",{})
			
		
			
		}])
		
		
	
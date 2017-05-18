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
			
			//删除商品
			$scope.delgoods=function(id){
				alert(123);
				$scope.httpPost("delgoods",{id})
			}
			
			//保存商品(更新、添加)
			$scope.savegoods=function(goods){
				console.log(goods);
				if(goods.id && goods.id!=""){
					$scope.httpPost("updategoods",goods);
				}else{
					$scope.httpPost("addgoods",goods);
				}
			}
			
			//搜索
			$scope.search=function(){
				console.warn($scope.goodsname+"/"+$scope.sex);
				$scope.httpGet("list",{name:$scope.goodsname,sex:$scope.sex});
			}
			
			
		}])
		
		
		//添加一行
		$("#addBtn").click(function() {
			var td0 = $("<td><input type='checkbox'></td>");
			var td1 = $("<td>{{goods.id}}</td>");
			var td2 = $("<td><input ng-model='goods.name'  class='Iput'></td>");
			var td3 = $("<td> <span class = 'fa fa-file  savegoods'></span><span class = 'fa fa-pencil-square-o  updategoods'></span> <span class = 'fa fa-trash  delgoods'></span> </td>");
			var tr = $("<tr></tr>"); 
			tr.append(td0).append(td1).append(td2).append(td3).appendTo("tbody");
		})
		
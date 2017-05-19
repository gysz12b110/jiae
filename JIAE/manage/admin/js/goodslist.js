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
			
			//添加
			$("#addGoods").click(function() {
				swal({
					title: "请输入要添加的商品",
					type: "input",
					showCancelButton: true,
					closeOnConfirm: false,
					animation: "slide-from-top",
					inputPlaceholder: "请输入要添加的商品"
				},
				function(inputValue) {
					if(inputValue === false) return false;

					if(inputValue === "") {
						swal.showInputError("商品不能为空！");
						return false
					} else {
						//发送保存ajax请求
						$.post("addGoods", {name: inputValue}, function(data) {
							if(data == "success") {
								swal("成功!", "已添加：" + inputValue, "success");
								setTimeout(function() {
									location.reload();
								}, 500);
							} else {
								swal("失败!");
							}
						})
					}
				});
			})
			//修改
			$(document).on("click", ".upDataGoods", function() {
				var tr = $(this).parents("tr");
				var tdlist = tr.children("td");
				var num = tdlist.eq(1).html();
				swal({
					title: "请输入要修改的商品类型",
					type: "input",
					showCancelButton: true,
					closeOnConfirm: false,
					animation: "slide-from-top",
					inputPlaceholder: "请输入要修改的商品类型"
				},
				function(inputValue) {
					if(inputValue === false) return false;

					if(inputValue === "") {
						swal.showInputError("商品类型不能为空！");
						return false
					} else {
						//发送保存ajax请求
						$.post("upDataGoods", {num: num,name: inputValue}, function(data) {
							if(data == "success") {
								swal("成功!", "已修改：" + inputValue, "success");
								setTimeout(function() {
									location.reload();
								}, 500);
							} else {
								swal("失败!");
							}
						})
					}
				});
			})

			//删除
			$(document).on("click", ".delGoods", function() {
				var tr = $(this).parents("tr");
				var tdlist = tr.children("td");
				var num = tdlist.eq(1).html();
				swal( {
					title:"你确定吗？",
					文本:"你将删除这个商品!",
					键入:"warning",
					showCancelButton: true,
					confirmButtonColor:"＃ DD6B55",
					confirmButtonText:"删除！",
					closeOnConfirm: false
				},
				function() {
					//发送ajax请求
					$.post("delGoods",{num:num},function(data){
						if(data=="success"){
							swal("成功！","商品已经被删除！","success");
							setTimeout(function() {
								location.reload();
							}, 500);
						}else{
							alert("后台正忙！");
						}
					})
					
				});
			});
		}]);


			
		
			

		
		
	
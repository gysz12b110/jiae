$(function() {
	//页面加载
	$.get("listRole", function(data) {
		var app = angular.module("myapp", []);
		app.controller("myctrl", function($scope) {
			$scope.list = data;
		})
		//bootstrap必须要放在module()的后面
		angular.bootstrap(document, ["myapp"]);
	})

	//添加
	$("#addRole").click(function() {
		swal({
			title: "请输入要添加的角色",
			type: "input",
			showCancelButton: true,
			closeOnConfirm: false,
			animation: "slide-from-top",
			inputPlaceholder: "请输入要添加的角色"
		},
		function(inputValue) {
			if(inputValue === false) return false;

			if(inputValue === "") {
				swal.showInputError("角色类型不能为空！");
				return false
			} else {
				//发送保存ajax请求
				$.post("addRole", {role: inputValue}, function(data) {
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
	$(document).on("click", ".reviseRole", function() {
		var tr = $(this).parents("tr");
		var tdlist = tr.children("td");
		var num = tdlist.eq(0).html();
		swal({
			title: "请输入要修改的角色",
			type: "input",
			showCancelButton: true,
			closeOnConfirm: false,
			animation: "slide-from-top",
			inputPlaceholder: "请输入要修改的角色"
		},
		function(inputValue) {
			if(inputValue === false) return false;

			if(inputValue === "") {
				swal.showInputError("角色类型不能为空！");
				return false
			} else {
				//发送保存ajax请求
				$.post("reviseRole", {num: num,role: inputValue}, function(data) {
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

	//冻结
	$(document).on("click", ".frozenRole", function() {
		var tr = $(this).parents("tr");
		var tdlist = tr.children("td");
		var num = tdlist.eq(0).html();
		swal( {
			title:"你确定吗？",
			文本:"你将冻结这个角色!",
			键入:"warning",
			showCancelButton: true,
			confirmButtonColor:"＃ DD6B55",
			confirmButtonText:"是的， 冻结它！",
			closeOnConfirm: false
		},
		function() {
			//发送ajax请求
			$.post("delRole",{num:num},function(data){
				if(data=="success"){
					swal("成功！","角色已被冻结！","success");
					setTimeout(function() {
						location.reload();
					}, 500);
				}else{
					alert("后台正忙！");
				}
			})
			
		});
	})

})
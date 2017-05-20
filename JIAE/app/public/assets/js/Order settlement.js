var goodsList=[{title:249.00},
{title:0.00},
{title:0.00}]
angular.module("myapp",[]).controller("myctrl",function($scope){
			$scope.list=goodsList;
			//总计
			$scope.totalCart=function(){
				var totalPrice=0;
				//将所有商品信息取出计算总价
				goodsList.forEach(function(value,index){
						totalPrice+=value.count*value.price;
				})
				return totalPrice;
			}

$(function(){
	$(".obligation>span").click(function(){
		$(".obligation>span").css({color:"#e74144"});
		$(".underway>span").css({color:"#000"});
		$(".Completed>span").css({color:"#000"});
		
		$(".obligation-").css({display:"block"});
		$(".underway-").css({display:"none"});
		$(".Completed-").css({display:"none"});
		
	});
	
	$(".underway>span").click(function(){
		$(".obligation>span").css({color:"#000"});
		$(".underway>span").css({color:"#e74144"});
		$(".Completed>span").css({color:"#000"});
		
		$(".obligation-").css({display:"none"});
		$(".underway-").css({display:"block"});
		$(".Completed-").css({display:"none"});
		
	});
	
	$(".Completed>span").click(function(){
		$(".obligation>span").css({color:"#000"});
		$(".underway>span").css({color:"#000"});
		$(".Completed>span").css({color:"#e74144"});
		
		$(".obligation-").css({display:"none"});
		$(".underway-").css({display:"none"});
		$(".Completed-").css({display:"block"});
		
		
		
	});
	
})

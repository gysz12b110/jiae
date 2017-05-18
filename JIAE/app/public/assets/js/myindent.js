$(function(){
	$(".obligation>span").click(function(){
		$(".obligation>span").css({background:"#E25A5B",color:"white"});
		$(".underway>span").css({background:"#f1f1f1",color:"#000"});
		$(".Completed>span").css({background:"#f1f1f1",color:"#000"});
		
		$(".obligation-").css({display:"block"});
		$(".underway-").css({display:"none"});
		$(".Completed-").css({display:"none"});
		
	});
	
	$(".underway>span").click(function(){
		$(".obligation>span").css({background:"#f1f1f1",color:"#000"});
		$(".underway>span").css({background:"#E25A5B",color:"#fff"});
		$(".Completed>span").css({background:"#f1f1f1",color:"#000"});
		
		$(".obligation-").css({display:"none"});
		$(".underway-").css({display:"block"});
		$(".Completed-").css({display:"none"});
		
	});
	
	$(".Completed>span").click(function(){
		$(".obligation>span").css({background:"#f1f1f1",color:"#000"});
		$(".underway>span").css({background:"#f1f1f1",color:"#000"});
		$(".Completed>span").css({background:"#E25A5B",color:"#fff"});
		
		$(".obligation-").css({display:"none"});
		$(".underway-").css({display:"none"});
		$(".Completed-").css({display:"block"});
		
		
		
	});
	
})

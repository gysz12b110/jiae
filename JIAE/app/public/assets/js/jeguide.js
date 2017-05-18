$(function(){
	$(".servelist-1").click(function(){
		$(".servelist-1>a").css({backgroundColor:"#e25a5b",color:"white"});
		
		$(".servelist-2>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		$(".servelist-3>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		$(".servelist-4>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		$(".servecontent-ul1").css({display:"block"});
		$(".servecontent-ul2").css({display:"none"});
		$(".servecontent-ul3").css({display:"none"});
		$(".servecontent-ul4").css({display:"none"});
	});
	$(".servelist-2").click(function(){
		$(".servelist-1>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		
		$(".servelist-2>a").css({backgroundColor:"#e25a5b",color:"white"});
		$(".servelist-3>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		$(".servelist-4>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		$(".servecontent-ul1").css({display:"none"});
		$(".servecontent-ul2").css({display:"block"});
		$(".servecontent-ul3").css({display:"none"});
		$(".servecontent-ul4").css({display:"none"});
	});
	$(".servelist-3").click(function(){
		$(".servelist-1>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		
		$(".servelist-2>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		$(".servelist-3>a").css({backgroundColor:"#e25a5b",color:"white"});
		$(".servelist-4>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		$(".servecontent-ul1").css({display:"none"});
		$(".servecontent-ul2").css({display:"none"});
		$(".servecontent-ul3").css({display:"block"});
		$(".servecontent-ul4").css({display:"none"});
	});
	$(".servelist-4").click(function(){
		$(".servelist-1>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		
		$(".servelist-2>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		$(".servelist-3>a").css({backgroundColor:"#F1F1F1",color:"#e25a5b"});
		$(".servelist-4>a").css({backgroundColor:"#e25a5b",color:"white"});
		$(".servecontent-ul1").css({display:"none"});
		$(".servecontent-ul2").css({display:"none"});
		$(".servecontent-ul3").css({display:"none"});
		$(".servecontent-ul4").css({display:"block"});
	});
})

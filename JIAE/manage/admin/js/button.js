$('.addOne').click(function(){
	$('.mark').css({'display':'block'})
	$('.addtab').fadeIn(2000);
})
$('.del').click(function(){
	$('.addtab').hide();
	$('.mark').fadeOut(1000);
})
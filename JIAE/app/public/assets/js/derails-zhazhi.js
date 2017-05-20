
$('.am-accordion-title').click(function(){
    $('.am-collapse-two').toggle();
    

})
$('.am-cf li').click(function(){
    $(this).addClass('selected').siblings().removeClass('selected');
   var $index=$(this).index();
//    alert(index);
    $('.am-tabs-bd .bd').eq($index).addClass('selected').siblings().removeClass('selected');
})
$('.right-color .attr').click(function(){
    $(this).addClass('selected').siblings().removeClass('selected');
   var index=$(this).index();

    $('.details .center-block').eq(index).addClass('selected').siblings().removeClass('selected');
})

$('.share-box').click(function(){
    $('.box_163css').animate({
        'bottom':'0px'
    },1000)
})

$('.-mob-share-close').click(function(){
    $('.box_163css').animate({
        'bottom':'-180px'
    },1000)
})
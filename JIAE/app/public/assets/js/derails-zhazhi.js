
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
var a=0;
$(".number-left").click(function(){
    
    $num=$(".inputtype").val();
   if($num>=1){
       a++;
      $num=a;
      

   }
  
    // alert($num);
})

var ff = parseInt(document.getElementsByClassName("inputtype")[0].innerHTML)
        $(".number-left").on("click",function(){
            if(ff>=1){
                ff += 1;
                document.getElementsByClassName("inputtype")[0].innerHTML = ff;
            }
        });
        $(".right").on("click",function(){
            if(ff>1){
                ff -= 1;
                document.getElementsByClassName("inputtype")[0].innerHTML = ff;
            }else {
               document.getElementsByClassName("inputtype")[0].innerHTML = 1;
            }
        });





n=$('.line li').size();				

		var wh=70*n+"%";

		$('.line').width(wh);

		var lt=(100/n/5);

		var lt_li=lt+"%";

		$('.line li').width(lt_li);			

		var y=0;

		var w=n/2;						

		$(".line").swipe( {					

			swipeLeft:function() {

				if(y==-lt*w){

					alert('已经到最后页');

				}else{

					y=y-lt;								

					var t=y/8+"%";									

					$(this).css({'-webkit-transform':"translate("+t+")",'-webkit-transition':'300ms linear'} );	

				}

			},

			swipeRight:function() {

				if(y==0){

					alert('已经到第一页')	

				}else{

					y=y+lt;

					var t=-y/17+"%";

					$(this).css({'-webkit-transform':"translate("+t+")",'-webkit-transition':'300ms linear'} );	

				}

				

			}

		});

	
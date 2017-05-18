//alert
var $msgmodal = $('#jiae-alert');
var $msg2modal = $("#jiae-confirm");
var $zeModal = $('#ze-modal');

function openAlert(msg){
	$("#alertMsg").html(msg);
	$msgmodal.modal('open');
}

function openConfirm(title, msg, surecallback, cancelCallback){
	$("#confirmTitle").html(title);
	$("#confirmMsg").html(msg);
	$msg2modal.modal({
        relatedTarget: this,
        onConfirm: function(options) {
        	//surecallback();
        },
        // closeOnConfirm: false,
        onCancel: function() {
        	//cancelCallback();
        }
     });
	  var $confirmBtn = $msg2modal.find('[data-am-modal-confirm]');
	  var $cancelBtn = $msg2modal.find('[data-am-modal-cancel]');
	  $confirmBtn.off('click.confirm.modal.amui').on('click', function() {
		  surecallback();
	  });

	  $cancelBtn.off('click.cancel.modal.amui').on('click', function() {
		  cancelCallback();
	  });
}

//数组删除
Array.prototype.remove=function(dx) 
{
    if(isNaN(dx)||dx>this.length){return false;} 
    for(var i=0,n=0;i<this.length;i++) 
    { 
        if(this[i]!=this[dx]) 
        { 
            this[n++]=this[i] 
        } 
    } 
    this.length-=1 
}; 

function showWarning(id,msg){
	$(id).popover({
	    content: msg
	  });
}
$(function(){
	$("img.lazy").lazyload({
		effect : 'fadeIn'
	});
});

/* 商品列表页加入购物  start */
function addCart() {
	var btn = $(".j-btn-catalog");
	btn.each(function(){
		$(this).on("click", function(){addSaleCart($(this));});
	});
	
	function addSaleCart(clickPid) {
		$.ajax({
            url: "knockcart",
            type: "post",
            data: {
            	productId: clickPid.attr("data-id")
            }
        }).done(function(e) {
        	$("#J-cart-num").text(e.quantity),
        	e.quantity == 0?$("#J-cart-num").css("display", "none"): $("#J-cart-num").css("display", "block"),
        	openAlert("加入购物车成功！");
        }).fail(function(e) {
        	openAlert("加入购物车失败！");
        });
	}
}
/* 商品列表页加入购物  end */

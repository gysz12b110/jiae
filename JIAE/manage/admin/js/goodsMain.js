require.config({
　　　　paths: {
　　　　　　"jquery":"jquery",
		   "angular":"angular",
		   "goods":"goodstype",
		   "button":"button",
		   "alert":"sweetalert.min"
　　　　},shim:{
		'angular':{exports:'angular'}
}
});

require(['jquery','angular','alert','goods'], function (jquery,angular,alert,goods){
});

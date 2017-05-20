require.config({
　　　　paths: {
　　　　　　"jquery":"jquery",
		   "angular":"angular",
		   "role":"role",
		   "alert":"sweetalert.min"
　　　　},shim:{
		'angular':{exports:'angular'}
}
});

require(['jquery','angular','alert','role'], function (jquery,angular,alert,role){
});

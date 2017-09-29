$(function(){

	$(".banner-list li").width($(window).width());
	
//	$('#banner-box').slides({
//		generateNextPrev: false,
//		generatePagination:false,
//		paginationClass:"banner-nav",
//		container: 'banner-list',
//		effect:"fade",
//		slideEasing:"easeInOutQuart",
//		slidesLoaded: function() {
//		},
//	
//	});
	resizeLayout();
	$(window).resize(function(){
			resizeLayout();
	});
	
	//$('.bannerlist li:first-child').css("display","block");
	//$(".tablea").find(".box:first").show();
	$('.banner-nav .banner-inner ul li').bind('click', function(){
	    
	    var index = $(this).index();
	    $(this).addClass('current').siblings().removeClass('current');
	    
	    //$('.banner-list li').eq(index).removeClass("no").addClass("yes").siblings().removeClass("yes").addClass("no");
	    
	    //$('.banner-list li').css("display","none");
//	    $('.banner-list li.listli').eq(index).css("display","block").siblings().css("display","none");
	   

	});
	

});
function resizeLayout(){
	var hei=$(window).height();
	// $(".big").css("height",hei);
	$('.banner-list .listli').css("height",hei);
	$('.banner-list').css("height",hei);
}
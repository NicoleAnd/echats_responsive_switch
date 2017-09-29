$(function(){

	$(".banner-list li").width($(window).width());
	
	$('#banner-box').slides({
		generateNextPrev: false,
		generatePagination:false,
		paginationClass:"banner-nav",
		container: 'banner-list',
		effect:"fade",
		slideEasing:"easeInOutQuart",
		slidesLoaded: function() {
		},
	
	});
	changeWH();  
	
	
	resizeLayout();
	$(window).resize(function(){
			resizeLayout();
	});
	

	
});
function resizeLayout(){
	var hei=$(window).height();
	// $(".big").css("height",hei);
	$('.banner-list li').css("height",hei);
	$('.banner-list').css("height",hei);
}



function changeWH(){  

$("#myiframe").height($(document).height());  
$("#myiframe").width($(document).width());  
}  

window.onresize=function(){    
 changeWH();    

}   
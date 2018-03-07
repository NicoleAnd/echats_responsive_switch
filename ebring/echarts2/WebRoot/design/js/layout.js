//响应式兼滚动布局
$(function() {
    
//	获取浏览器的宽、高
	var winWidth = $(window).width();
	var winHeight = $(window).height();
	//	console.log(winWidth+'、'+winHeight);
	
//	获取样式表中echart图表各个容器的宽高
	var bodyWidth = $('body').width();
	var bodyHeight = $('body').height();
	
	var wrapWidth = $('.wrap').width();
	var wrapHeight = $('.wrap').height();
	
	var headerWidth = $('.header').width()
	var headerHeight = $('.header').height();
	//	console.log(headerWidth+'、'+headerHeight);
	
	var containerWidth = $('.containerall').width();
	var containerHeight = $('.containerall').height();
//	alert(containerWidth+'、'+containerHeight);
	
	var footerWidth = $('.footer').width();
	var footerHeight = $('.footer').height();
//	alert(footerWidth+'、'+footerHeight);
	
//	中间标题位置
	var titleLeft = $('.stitle').css('left');
//	alert(titleLeft);
	
	
//	当屏幕宽高 < 浏览器宽高，保持浏览器及容器宽高不变，加滚动
	
	window.onresize=resizeContent;//当窗口改变宽度时执行此函数
	function resizeContent(){
	    var RwinWidth = $(window).width();
	    var RwinHeight = $(window).height();
	    var topPosition = winHeight - 25;
	     if(RwinWidth<winWidth || RwinHeight<winHeight) {
	    	$('html').css('overflow','scroll');
	    	$('body').css({'overflow':'hidden','width':bodyWidth,'height':bodyHeight});
	    	$('.wrap').css({'overflow':'hidden','width':wrapWidth,'height':wrapHeight});
	        $('.header').css({'width':headerWidth,'height':headerHeight});
	        $('.containerall').css({'width':containerWidth,'height':containerHeight});
	        $('.footer').css({'width':footerWidth,'height':footerHeight,'z-index':'99'});
	        $('.stitle').css({'left':titleLeft});
	        $('.footer').css('top',topPosition);
	    }else{
//	    	alert('false');
	    }
	}
	
	
});  
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>布局1</title>
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/nav.css">
    <link rel="stylesheet" type="text/css" href="css/hamburgers.css">
    <style type="text/css">
    body {
        color: #fff;
        font-size: 1rem;
        text-align: center;
        width: 100%;
        overflow:hidden;
		FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0, startColorStr=#fff, endColorStr=#03286e);
        /*IE 6 7 8*/
        background: -ms-linear-gradient(top, #c4e3e3 -50%, #03286e 100%);
        /* IE 10 */
        background: -moz-linear-gradient(top,#c4e3e3 -50%, #03286e 100%);
        /*火狐*/
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#c4e3e3), to(#03286e));
        /*谷歌*/
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#c4e3e3), to(#03286e));
        /* Safari 4-5, Chrome 1-9*/
        background: -webkit-linear-gradient(top, #c4e3e3 -50%, #03286e 100%);
        /*Safari5.1 Chrome 10+*/
        background: -o-linear-gradient(top,#c4e3e3 -50%, #03286e 100%);
        /*Opera 11.10+*/
    }
    .layout-left{width:0;height:100%;overflow:hidden;float: left;position: absolute;z-index:1;left:0;border-right:1px solid rgba(207,223,230,0.5)}
    		
    .nav{width:100%;height:100%;height:100%;float: left;background: mediumseagreen ;position: relative;}
    .layout-right{width:100%;height:100%;float:left;position: absolute;z-index:1;right: 0}
    .layout-top{width: 100%;height: 7.5%;position: absolute;z-index:5;border: 0;color:#fff;/* border-bottom:1px solid rgba(207,223,230,0.5); */
			/* background-image: -webkit-radial-gradient(hsla(240,100%,90%,.9),hsla(240,100%,50%,.9));
			background-image: radial-gradient(hsla(240,100%,90%,.9),hsla(240,100%,50%,.9)); */}
    .layout-body{width: 97%;height:89.5%;position: absolute;z-index:10;top:55px;left:20px;/* bottom: 25px;overflow: hidden; */}
    .layout-foot{width: 100%;height: 3.2%;position: absolute;z-index:200;bottom: 0;font-size:12px;color:#fff;/* border-top:1px solid rgba(207,223,230,0.5); */
			/* background-image: -webkit-radial-gradient(hsla(240,100%,90%,.9),hsla(240,100%,50%,.9));
			background-image: radial-gradient(hsla(240,100%,90%,.9),hsla(240,100%,50%,.9)); */}
    .nav-label{position:absolute;width:7%;height:55px;line-height: 50px;text-align:center;font-size:20px;color:#000;z-index: 99;left:0}
    .nav-label:hover{background:#03286e;color:#fff;}
    .logo{width:13.5%}
    .secondtitle{color:#000;font-size:1rem;line-height:45px;}
    .row div{height:100%;border:0;}
    
    .border{position:absolute;background:none;transition:all .5s ease-in-out;}
	.echart>.border:nth-of-type(1){top:0;left:0;border-left:1px solid rgba(207,223,230,0.5);border-top:1px solid rgba(207,223,230,0.5);width:60px;height:60px;}
	.echart>.border:nth-of-type(2){bottom:0;right:0;border-right:1px solid rgba(207,223,230,0.5);border-bottom:1px solid rgba(207,223,230,0.5);width:60px;height:60px;}
/* 	.echart:hover .border{border:1px solid red;width:102%;height:105%;} */
	.echart:hover .border{border:2px solid #fff;width:100%;height:100%;}
	.hamburger-inner, .hamburger-inner::before, .hamburger-inner::after {width: 32px;background-color: #fff;}
    
    @media screen and (max-width: 810px) {
        .layout-left{width: 13%;}
        .layout-right{width: 87%;}
        .nav-label{width:13%;}
    }
    </style>
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/Marquee.js"></script>
    <script type="text/javascript">
    var num = 1;
    $(function() { 
        $("nav ul li").click(function() {
            $("nav ul li").eq($(this).index()).addClass("active").siblings().removeClass("active");
        });
		
        $(".nav-label").click(function(){
            if((num%2)==0){
            	$("nav").fadeToggle();
                $(".layout-left").css({
                	"width":"0",
                	"transition":"all .5s ease-in-out",
                	"-moz-transition":"all .5s ease-in-out",
                	"-webkit-transition":"all .5s ease-in-out",
                	"-o-transition":"all .5s ease-in-out"
                });
                $(".layout-right").css({
                	"width":"100%",
                	"transition":"all .5s ease-in-out",
                	"-moz-transition":"all .5s ease-in-out",
                	"-webkit-transition":"all .5s ease-in-out",
                	"-o-transition":"all .5s ease-in-out"
                });
                $(".nav-label").css({
                	"width":"4%",
                	"transition":"all .5s ease-in-out",
                	"-moz-transition":"all .5s ease-in-out",
                	"-webkit-transition":"all .5s ease-in-out",
                	"-o-transition":"all .5s ease-in-out"
                });
                num++;
        
            }else{
            	$("nav").fadeToggle();
                $(".layout-left").css({
                	'width':'7%',
                	"transition":"all .5s ease-in-out",
                	"-moz-transition":"all .5s ease-in-out",
                	"-webkit-transition":"all .5s ease-in-out",
                	"-o-transition":"all .5s ease-in-out"
                });
                $(".layout-right").css({
                	'width':'93%',
                	"transition":"all .5s ease-in-out",
                	"-moz-transition":"all .5s ease-in-out",
                	"-webkit-transition":"all .5s ease-in-out",
                	"-o-transition":"all .5s ease-in-out"
                });
                $(".nav-label").css({
                	"width":"7%",
                	"transition":"all .5s ease-in-out",
                	"-moz-transition":"all .5s ease-in-out",
                	"-webkit-transition":"all .5s ease-in-out",
                	"-o-transition":"all .5s ease-in-out"
                });
                num++;
   
            }
        });

        //一次纵向滚动一个
        $('#marquee2').kxbdSuperMarquee({
            isAuto:false,
            distance:60,
            time:3,
            btnGo:{up:'#goU',down:'#goD'},
            direction:'down'
        });
        var navheight = $(window).height()-150;
        $('#marquee2').css('height',navheight);
        
        /* $('.control').hover(function(){
        	$(this).addClass('hovernav').siblings().removeClass("hovernav");
        	$('.control a').addClass('hovera').siblings().removeClass("hovera");
        }); */
        
        var forEach=function(t,o,r){if("[object Object]"===Object.prototype.toString.call(t))for(var c in t)Object.prototype.hasOwnProperty.call(t,c)&&o.call(r,t[c],c,t);else for(var e=0,l=t.length;l>e;e++)o.call(r,t[e],e,t)};

		var hamburgers = document.querySelectorAll(".hamburger");
		if (hamburgers.length > 0) {
		  forEach(hamburgers, function(hamburger) {
			hamburger.addEventListener("click", function() {
			  this.classList.toggle("is-active");
			}, false);
		  });
		}
	        
    })

</script>
</head>

<body>
	<div class="nav-label hamburger hamburger--collapse">
		<div class="hamburger-box">
		  <div class="hamburger-inner"></div>
		</div>
  	</div>
    <div class="layout-left">
	    <div class="demopage">
	        <div class="control" style="width:100%;height:50px;margin-top:50px;"><a href="javascript:void(0);" id="goD">pre</a></div>
	        <div id="marquee2">
	            <ul>
	                <li><a href="111.jsp">111</a></li>
	                <li><a href="222.jsp">222</a></li>
	                <li><a href="#">333</a></li>
	                <li><a href="#">444</a></li>
	                <li><a href="#">555</a></li>
	                <li><a href="#">666</a></li>
	                <li><a href="#">777</a></li>
	                <li><a href="#">888</a></li>
	                <li><a href="#">999</a></li>
	                <li><a href="#">1010</a></li>
	                <li><a href="#">1111</a></li>
	                <li><a href="#">1212</a></li>
	            </ul>
	        </div>
	        <div class="control" style="width:100%;height:50px;"><a href="javascript:void(0);" id="goU">next</a></div>
	        
	    </div>
    </div>
      
    
    <div class="layout-right">
        <div class="layout-top">
        	<img class="logo" src="./images/logo.png"><span class="secondtitle">陕西省分行</span>
        </div>
        <div class="layout-body">
            <div class="row" style="height:25%">
                <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart0.jsp"%>
                	
                </div>
                 <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                 	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart1.jsp"%>
                </div>
                 <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                 	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart2.jsp"%>
                </div>
                <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart3.jsp"%>
                </div>
            </div>
            <div class="row" style="height:25%">
                <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart4.jsp"%>
                </div>
                 <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                 	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart5.jsp"%>
                	
                </div>
                 <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                 	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart6.jsp"%>
                </div>
                <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart7.jsp"%>
                </div>
            </div>
            <div class="row" style="height:25%">
                <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart8.jsp"%>
                </div>
                 <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                 	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart9.jsp"%>
                </div>
                 <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                 	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart10.jsp"%>
                </div>
                <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart11.jsp"%>
                </div>
            </div>
            <div class="row" style="height:25%">
                 <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                 	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart12.jsp"%>
                </div>
                 <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                 	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart13.jsp"%>
                </div>
                 <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                 	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart14.jsp"%>
                </div>
                <div class="col-xs-6 col-md-3 .col-lg-3 echart">
                	<div class="border"></div>
                	<div class="border"></div>
                	<%@include file="echart15.jsp"%>
                </div>
            </div>
        </div>
        <div class="layout-foot">版权所有@中国银行陕西省分行</div>
    </div>
</body>
</html>

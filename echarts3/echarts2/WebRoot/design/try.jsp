<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>布局2</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <link rel="stylesheet" type="text/css" href="css/nav.css">
    <link rel="stylesheet" type="text/css" href="css/hamburgers.css">
    <style>
    body{min-width:1024px;}
    .nav-icon{font-size:1.6rem;top:2px;padding-right:8px;}
    .add{font-size:10px;}
    /* .bodystyle{padding:0 8px;} */
    
    </style>
</head>
<body>
	<div class="wrap">
		<!-- 顶部 -->
		<div class="header">
            <div class="headerleft">
                <span style="font-size:1.8rem;float:left;line-height:50px;margin-left: 10px;">15:29:59</span>
                <div style="float: left;margin-left:10px;">
                    <span style="font-size:0.5rem;">2017/10/16</span>
                    <span style="font-size:0.5rem;">星期二</span>
                </div>
            </div>
            <div class="headercenter">
                <div class="headercenterdiv">
					<img src="img/logo.png" style="width: 11rem;vertical-align:middle;" >
					<span style="font-size:1.5rem;">陕西省分行&nbsp;&nbsp;</span>
					<span style="font-size:1.8rem;">|&nbsp;&nbsp;大数据可视化平台</span>
                </div>         
            </div>  
            <div class="headerright">
            	<div class="nav-icon glyphicon glyphicon-flag"></div>
                <span style="font-size:0.5rem;">担当社会责任，做最好的银行</span>
            </div>
        </div>
		<div id='wrap1' class="containerall">
			<ul class="containercon">
				<li class="li1">
					<!-- <div class="nav-label hamburger hamburger--collapse">
		                <div class="hamburger-box">
		                  <div class="hamburger-inner"></div>
		                </div>
            		</div> -->
            		<div class="nav-label hamburger hamburger--collapse" style="width:11px;">
		                <div class="hamburger-box">
		                  <span class="add glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
		                  <span class="delete glyphicon glyphicon-minus-sign" aria-hidden="true" style="display:none"></span>
		                </div>
            		</div>
					<div class="demopage">
                    <div class="control">
                        <a href="javascript:void(0);" id="goD">
                        	<div style="height:35px;width:100%;backgroud:red;">
                        		<span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                        	</div>     
                        </a>
                    </div>
                    <div id="marquee2">
                        <ul>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-user"></div>客户服务</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-shopping-cart"></div>实时营销</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-duplicate"></div>计量资产</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-tasks"></div>市场发展</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-stats"></div>营业成果</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-user"></div>客户服务</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-shopping-cart"></div>实时营销</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-duplicate"></div>计量资产</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-tasks"></div>市场发展</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-stats"></div>营业成果</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-user"></div>客户服务</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-shopping-cart"></div>实时营销</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-duplicate"></div>计量资产</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-tasks"></div>市场发展</div></a></li>
                            <li><a href="111.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-stats"></div>营业成果</div></a></li>
                        </ul>
                    </div>
                    <div class="control">
                    	<a href="javascript:void(0);" id="goU">
                        	<div style="height:35px;width:100%;backgroud:red;">
                        		<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                        	</div>     
                        </a>
                       
                    </div>
                </div>
				</li>
				<label class="lab1" id='lab1'></label>
				<li class="li2">
					<div style="width: 100%;height:100%;">
						<div class="col1">
							<%-- <div class="col1row1 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><%@include file="echart0.jsp"%></div>	
							</div> --%>
							<div class="col1row1 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart0.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
							</div>
							
							<div class="col1row2 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart1.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
							</div>
							<div class="col1row3 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart2.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
							</div>
						</div>
						<div class="col2">
							<div class="col2row1 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart111.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
							</div>
							<div class="col2row2">
								<div class="col2row2col1 borderstyle1">
									<div class="titlestyle">人口分布</div>
									<div class="bodystyle"><iframe src="echart4.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
								</div>
								<div class="col2row2col2 borderstyle1">
									<div class="titlestyle">人口分布</div>
									<div class="bodystyle"><iframe src="echart5.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
								</div>
							</div>
						</div>
						<div class="col3">
							<div class="col3row1 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart6.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
							</div>
							<div class="col3row2 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart7.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
							</div>
							<div class="col3row3 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart8.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="footer">
            <span>版权所有@中国银行陕西省分行</span>   
        </div>
	</div>
	<script src="js/jquery-3.2.1.js"></script>
	<script src="js/navmove.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/Marquee.js"></script>
	
    <script type="text/javascript">
    var num = 1;
    $(function() { 
    	//一次纵向滚动一个
        $('#marquee2').kxbdSuperMarquee({
            isAuto:false,
            distance:60,
            time:3,
            btnGo:{up:'#goU',down:'#goD'},
            direction:'down'
        });
        var navheight = $(window).height()-190;
        $('#marquee2').css('height',navheight);
        var forEach=function(t,o,r){if("[object Object]"===Object.prototype.toString.call(t))for(var c in t)Object.prototype.hasOwnProperty.call(t,c)&&o.call(r,t[c],c,t);else for(var e=0,l=t.length;l>e;e++)o.call(r,t[e],e,t)};


        $("#marquee2 li").click(function() {
            $("#marquee2 li").eq($(this).index()).addClass("navactive").siblings().removeClass("navactive");
        });
        
        var hamburgers = document.querySelectorAll(".hamburger");
        if (hamburgers.length > 0) {
          forEach(hamburgers, function(hamburger) {
            hamburger.addEventListener("click", function() {
              this.classList.toggle("is-active");
            }, false);
          });
        };
		$(".hamburger").click(function(){
			$('.add').toggle();
			$('.delete').toggle();
		});
        $(".nav-label").click(function(){
            if((num%2)==0){
                $(".li1").css({
                    "width":"0px",
                    /* "transition":"all .5s ease-in-out",
                    "-moz-transition":"all .5s ease-in-out",
                    "-webkit-transition":"all .5s ease-in-out",
                    "-o-transition":"all .5s ease-in-out" */
                });
                $(".hamburger").css({
                	"position":"absolute",
                	"width":"11px",
                });
                $(".li2").css({
                    "width":"100%",
                });
                $(".lab1").css({
                	"left":"0",
                });

                num++;
        
            }else{
                $(".li1").css({
                    "width":"10%",
                    
                });
                $(".li2").css({
                    "width":"90%",
                });
                $(".hamburger").css({
                	"position":"relative",
                	"width":"100%",
                });
                $(".lab1").css({
                	"left":"10%",
                	
                })
                num++;
   
            }
        });


            
    })
    </script>
</body>
</html>
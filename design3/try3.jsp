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
    
    html{overflow:hidden;}
    .nav-icon{font-size:1.6rem;top:2px;padding-right:8px;}
    .hamburger{position:absolute;top:-18px;width:50px;height:25px;line-height:25px;z-index:999;
    	border: 1px solid #18426f;box-shadow: 0px 6px 20px #000;
    	background:#7DD9F7;}
	    
    .add,.delete{font-size: 16px;position: relative;top: 0;line-height: 25px;}
    
    .righthide{display: none;}
    .current{display: block;}
    
    .fanye{position: absolute;right: 0;bottom: 13px;width: 100px;height: 27px;z-index: 999;}
    .fanye1{width: 100%;height: 100%;position: relative;z-index: 15;}
    .fanyenav{width: 50px;float: right;height: 25px;bottom: 25px;z-index: 10;line-height: 25px;border: 1px solid #18426f;box-shadow: 0px 6px 20px #000;border-top-left-radius: 12px;border-bottom-left-radius: 12px;
    	background:#7DD9F7;}
    	/* background: -gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));
	    background: -o--gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));
	    background: -ms--gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));
	    background: -moz-gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));
	    background:-webkit-gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));} */
    .fanyenav span.glyphicon{font-size:16px;line-height: 10px;}
    
    .fanyelr{float: left;position: absolute;bottom:2px;width: 100px;height: 25px;line-height: 25px;border: 1px solid #18426f;box-shadow: 0px 6px 20px #000;z-index:20;border-top-left-radius: 12px;border-bottom-left-radius: 12px;
    	background:#7DD9F7;}
    	/* background: -gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));
	    background: -o--gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));
	    background: -ms--gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));
	    background: -moz-gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));
	    background:-webkit-gradient(linear, 100% 60%, 43% 100%, from(#7DD938), to(#3EA0FF));} */
    
    .fanyelr a span{font-size:16px;}
    .pg_left:hover,.pg_right:hover,.pg_left:focus,.pg_right:focus{diplay:block;width:35px;height:24px;line-height:24px;
    	background: -gradient(linear, 100% 61%, 43% 100%, from(#7DD9FF), to(#3EA0FF));
	    background: -o--gradient(linear, 100% 61%, 43% 100%, from(#7DD9FF), to(#3EA0FF));
	    background: -ms--gradient(linear, 100% 61%, 43% 100%, from(#7DD9FF), to(#3EA0FF));
	    background: -moz-gradient(linear, 100% 61%, 43% 100%, from(#7DD9FF), to(#3EA0FF));
	    background: -webkit-gradient(linear, 100% 61%, 43% 100%, from(#7DD9FF), to(#3EA0FF));border:1px solid #fff}
    
    .pg_left:hover,.pg_left:focus{border-top-left-radius: 12px;border-bottom-left-radius: 12px;}
    .pg_right:hover,.pg_right:focus{border-top-right-radius: 12px;border-bottom-right-radius: 12px;}
    
    
    body .demo-class .layui-layer-title{background: linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    background: -o-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    background: -ms-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    background: -moz-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    background: -webkit-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    color:#fff; border: none;}
    body .demo-class {box-shadow: 1px 1px 50px rgba(255,255,255,.3);}
	body .demo-class .layui-layer-content {background:#0f2b48;}
	body .demo-class .layui-layer-ico {background: url(img/closew.png) no-repeat;background-size:16px;}
	body .layui-layer-shade{opacity: 0.8;}
    
    </style>
</head>
<body>
	<div class="wrap">
		<!-- 顶部 -->
		<div class="header">
            <div class="headerleft">
                <span style="font-size:18px;float:left;line-height:50px;margin-left: 10px;">15:29:59</span>
                <div style="float: left;margin-left:10px;">
                    <span style="font-size:12px;">2017/10/16</span>
                    <span style="font-size:12px;">星期二</span>
                </div>
            </div>
            <div class="headercenter">
                <div class="headercenterdiv">
					<img src="img/logo.png" style="width: 11rem;vertical-align:middle;" >
					<span style="font-size:15px;">陕西省分行&nbsp;&nbsp;</span>
					<span style="font-size:18px;">|&nbsp;&nbsp;大数据可视化平台</span>
                </div>         
            </div>  
            <div class="headerright">
            	<div class="nav-icon glyphicon glyphicon-flag"></div>
                <span style="font-size:12px;">担当社会责任，做最好的银行</span>
            </div>
        </div>
		<div id='wrap1' class="containerall">
			<ul class="containercon">
				<li class="li1">
					
            		<div class="nav-label hamburger hamburger--collapse" style="position:absolute;width:50px;">
		                <div class="hamburger-box">
		                 <!--  <span class="add glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
		                  <span class="delete glyphicon glyphicon-minus-sign" aria-hidden="true"></span> -->
		                  <span class="add glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
		                  <span class="delete glyphicon glyphicon-menu-hamburger" aria-hidden="true" style="display:none;"></span>
		                  <span class="icon-remove-3x"></i></span>
		                  <span style="display:none" class="icon-reorder-3x"></i></span>
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
					<iframe name="li2_iframe" id="li2_iframe" src="layout.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe>
				</li>
			</ul>
		</div>
		<div class="footer">
            <span style="font-size:12px;">版权所有&copy;中国银行陕西省分行</span>   
            
        </div>   
        <div class="fanye">
        	<div class="fanye1">
        		<div class="fanyenav" style="display:block">
        			<span class="glyphicon glyphicon-option-horizontal" aria-hidden="true"></span>
        		</div>
        	</div> 
        	<div class="fanyelr" style="display:none">
        		<a href="javascript:void(0)" class="pg_left ps_pre" style="width: 35px;height: 24px;line-height: 24px;display: inline-block;float:left;border-top-left-radius: 18px;
    border-bottom-left-radius: 18px;">
        			<span class="glyphicon glyphicon-chevron-left" style="position:relative;top:4px"></span>
        		</a>
        		<a href="javascript:void(0)" class="pg_right ps_next" style="width: 35px;height: 24px;line-height: 24px;display: inline-block;float:left;border-top-right-radius: 18px;
    border-bottom-right-radius: 18px;">
        			<span class="glyphicon glyphicon-chevron-right" style="position:relative;top:4px"></span>
        		</a>
        	</div>
    	</div>		 
	</div>
	<script src="js/jquery-3.2.1.js"></script>
	<script src="js/navmove.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/Marquee.js"></script>
	<script src="js/layer/layer.js"></script>
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
        var navheight = $(window).height()-145;
        $('#marquee2').css('height',navheight);
       	var navlabelheight=$(window).height()-75;
        $('#wrap1 label.lab1').css('height',navlabelheight);
        
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
                    
                });
                $(".hamburger").css({
                	"position":"absolute",
                	"width":"50px",
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
                	"position":"absolute",
                	"width":"50px",
                });
                $(".lab1").css({
                	"left":"10%",
                	
                })
                num++;
   
            }
        });
		/* 翻页按钮 */
		$(".fanyenav").mouseover(function (){
			$(".fanyenav").hide();
			$(".fanyelr").show();	
		}); 
		$(".fanyelr").mouseover(function (){
			$(".fanyelr").show();
			$(".fanyenav").hide();
				
		}); 
		$(".fanyelr").mouseout(function (){
			$(".fanyelr").hide();
			$(".fanyenav").show();
				
		}); 
		$('.ps_pre').on("click",function(){
			window.frames['li2_iframe'].fanye(0)
		});
		$('.ps_next').on("click",function(){
			window.frames['li2_iframe'].fanye(1)
		}); 
            
    })
    
    function clicked(name,url){
       	openModel("800px", "400px", name, url);
       }
    /**
	 * 创建模态层
	 */
	function openModel(width, height, title, url) {
		top.layer.open({
			type : 2,
			skin : 'demo-class', // 样式类名
			shift : 2,
			offset : [ "100px", '' ],
			area : [ width, height ], // 宽高
			shadeClose : true, // 开启遮罩关闭
			title : [ title, true ],
			content : url,
			end : function() {
				refresh();
			}
		});	
	}
    
    </script>
</body>
</html>
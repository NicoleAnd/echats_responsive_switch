<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>布局2</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <link rel="stylesheet" type="text/css" href="css/leftNav.css">
    <link rel="stylesheet" type="text/css" href="css/hamburgers.css">
    <link rel="stylesheet" href="js/layerui/css/layui.css"  media="all">
    <style>
   /*  html, body {
	    -ms-overflow-style: scrollbar;
	}
    html,body{overflow:hidden;} */
    .nav-icon{font-size:1.6rem;top:2px;padding-right:8px;}
    .hamburger{position:fixed;top:32px;width:50px;height:25px;line-height:25px;z-index:999;
    	border: 1px solid #CC3333;box-shadow: 0px 6px 20px #000;background:#CC3333;left:0;}
	    
    .add,.delete{font-size: 16px;position: relative;top: 0;line-height: 25px;}
    
    .righthide{display: none;}
    .current{display: block;}
    
    .fanye{position: fixed;right: 0;bottom: 13px;width: 100px;height: 27px;z-index: 999;}
    .fanye1{width: 100%;height: 100%;position: relative;z-index: 15;}
    .fanyenav{width: 50px;float: right;height: 25px;bottom: 25px;z-index: 10;line-height: 25px;box-shadow: 0px 6px 20px #000;border-top-left-radius: 12px;border-bottom-left-radius: 12px;
    	background:#CC3333;border: 1px solid #CC3333;}
    .fanyenav span.glyphicon{font-size:16px;line-height: 10px;}
    .fanyelr{float: left;position: absolute;bottom:2px;width: 100px;height: 25px;line-height: 25px;box-shadow: 0px 6px 20px #000;z-index:20;border-top-left-radius: 12px;border-bottom-left-radius: 12px;
    	background:#CC3333;}
    .pg_left{width: 35px;height: 25px;line-height: 25px;display: inline-block;float:left;border-top-left-radius: 18px;
    border-bottom-left-radius: 18px;border:1px solid #CC3333;}
    .pg_right{width: 35px;height: 25px;line-height: 25px;display: inline-block;float:left;border-top-right-radius: 18px;
    border-bottom-right-radius: 18px;border:1px solid #CC3333;}
    .fanyelr a span{font-size:16px;}
    .pg_left:hover,.pg_right:hover,.pg_left:focus,.pg_right:focus{diplay:block;width:35px;height:25px;line-height:25px;
	    background: #FF6666;border:1px solid #FFCCCC;}
    
    .pg_left:hover,.pg_left:focus{border-top-left-radius: 12px;border-bottom-left-radius: 12px;}
    .pg_right:hover,.pg_right:focus{border-top-right-radius: 12px;border-bottom-right-radius: 12px;}
    
    .layui-layer-title{background: linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    background: -o-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    background: -ms-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    background: -moz-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    background: -webkit-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
	    color:#fff!important; border: none!important;}

    body .demo-class {box-shadow: 1px 1px 50px rgba(255,255,255,.3);}
	.layui-layer-content {background:#0f2b48;}
	/* body .demo-class .layui-layer-ico {background: url(img/closew.png) no-repeat;background-size:16px;} */
	.layui-layer-shade{opacity: 0.9;}
    .layui-layer-setwin .layui-layer-min cite{background-color:#fff!important;}
    .layui-layer{background-color:#0f2b48!important;}
   
    </style>
</head>
<body style="overflow: hidden">
	<div class="wrap" style="overflow:hidden">
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
					<!-- <img src="img/logo.png" style="width: 11rem;vertical-align:middle;" > -->
					<img src="img/zgyh.png" style="width: 10rem;vertical-align:middle;position:relative;bottom:6px;" >
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
					
            		<div class="nav-label hamburger hamburger--collapse" style="position:fixed;width:50px;">
		                <div class="hamburger-box">
		                  <span class="add glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
		                  <span class="delete glyphicon glyphicon-menu-hamburger" aria-hidden="true" style="display:none;"></span>
		                  <span class="icon-remove-3x"></i></span>
		                  <span style="display:none" class="icon-reorder-3x"></i></span>
		                </div>
            		</div>
					<div class="demopage">
                        <div class="control">
                            <a href="javascript:void(0);" id="top">
                            	<div style="height:35px;width:100%;backgroud:red;">
                            		<span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                            	</div>     
                            </a>
                        </div>
                        <div id="myscroll">
                            <div id="myscrollbox">
                                <ul>
                                    <li><a href="layout.jsp" target="li2_iframe"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-user"></div>客户服务</div></a></li>
                                    <li><a href="echart1.jsp" target="li2_iframe"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-shopping-cart"></div>实时营销</div></a></li>
                                    <li><a href="layout.jsp" target="li2_iframe"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-duplicate"></div>计量资产</div></a></li>
                                    <li><a href="echart3.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-tasks"></div>市场发展</div></a></li>
                                    <li><a href="layout.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-stats"></div>营业成果</div></a></li>
                                    <li><a href="echart0.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-user"></div>客户服务</div></a></li>
                                    <li><a href="try3.jsp"><div style="height:50px;"><div class="nav-icon glyphicon glyphicon-shopping-cart"></div>实时营销</div></a></li>
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
                        </div>
                        <div class="control">
                        	<a href="javascript:void(0);" id="down">
                            	<div style="height:35px;width:100%;backgroud:red;">
                            		<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                            	</div>     
                            </a>
                           
                        </div>
                    </div>
				</li>
				<!-- <label class="lab1" id='lab1'></label> -->
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
        		<a href="javascript:void(0)" class="pg_left ps_pre">
        			<span class="glyphicon glyphicon-chevron-left" style="position:relative;top:5px"></span>
        		</a>
        		<a href="javascript:void(0)" class="pg_right ps_next">
        			<span class="glyphicon glyphicon-chevron-right" style="position:relative;top:5px"></span>
        		</a>
        	</div>
    	</div>	
   
	</div>
	
	<script src="js/jquery-3.2.1.js"></script>
	<script src="js/navmove.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/leftNav.js"></script>
	<script src="js/layer/layer.js"></script>
	<script src="js/layerui/layui.js" charset="utf-8"></script>
	<script src="js/layout.js"></script>
    <script type="text/javascript">
    var num = 1;
    $(function() {     
        var forEach=function(t,o,r){if("[object Object]"===Object.prototype.toString.call(t))for(var c in t)Object.prototype.hasOwnProperty.call(t,c)&&o.call(r,t[c],c,t);else for(var e=0,l=t.length;l>e;e++)o.call(r,t[e],e,t)};

        $("#myscrollbox li").click(function() {
            $("#myscrollbox li").eq($(this).index()).addClass("navactive").siblings().removeClass("navactive");
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
                	"position":"fixed",
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
                	"position":"fixed",
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
    
 
	var action;
	var content;
	 var titles = null;
	layui.use('layer', function(){ //独立版的layer无需执行这一句
	  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
	 
	  //触发事件
	  active = {
	    setTop: function(){
	      var that = this; 
	      //多窗口模式，层叠置顶
	      layer.open({
	        type: 2 //此处以iframe举例
	        ,title: titles
	        ,area: ['800px', '90%']
	        ,offset:'50px'
	        ,shade: 0
	        ,shadeClose : true // 开启遮罩关闭
	        ,shade: 0.6
        	,id: 'LAY_layuipro' //设定一个id，防止重复弹出
	        ,maxmin: true
	      	
	        ,content: content
	        ,resize:false
	        ,fixed:true
	        ,move: false
	       
	      });
	    }
	  };
	  
	});
	function showOpen(obj,url){
		content = url;
		titles = $(obj).parent().find('span').text();
		var othis = $(obj), method = othis.data('method');
	    active[method] ? active[method].call(obj, othis) : '';
	    $('.layui-layer-min').find('cite').remove();
	}
    </script>
</body>
</html>
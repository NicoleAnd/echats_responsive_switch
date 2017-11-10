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
    /* body{min-width:1024px;} */
    html{overflow:hidden;}
    .nav-icon{font-size:1.6rem;top:2px;padding-right:8px;}
    .add{font-size:10px;}
    /* .bodystyle{padding:0 8px;} */
    .righthide{display: none;}
    .current{display: block;}
    
    .fanye{position: absolute;right: 0;bottom: 25px;width: 100px;height: 25px;z-index: 999;}
    .fanye1{width: 60px;height: 60px;padding: 0px;position: absolute;bottom: -25px;right: 0;z-index:15;}
    .fanyenav{width: 50px;float: right;height: 25px;line-height: 25px;background: rgba(0,0,0,0.5);position: relative;top: 10px;z-index:10}
    .fanyenav span.glyphicon{font-size:16px;}
    
    .fanyelr{float: left;position: relative;width: 100px;height: 25px;line-height: 25px;background: rgba(0,0,0,0.5);z-index:20;}
    .fanyelr a{width: 35px;height: 32px;line-height: 32px;display: inline-block;float:left;}
    .fanyelr a span{font-size:16px;}
    .pg_left:hover,.pg_right:hover{diplay:block;background:#556fad;width:35px;height:25px;}
    /* .pg_left:active,.pg_right:active{diplay:block;background:#556fad;width:35px;height:25px;} */
    .pg_left:focus,.pg_right:focus{diplay:block;background:#556fad;width:35px;height:25px;}
    /* .pg_left,.pg_right{cursor:pointer;display:block;float:left;width:100px;height:25px;background:pink;} 
    .pg_left div,.pg_right div{border: 1px solid #fff;padding: 0 15px;color:#fff;float:left;}
     */
    
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
		                  <!-- <span class="add glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
		                  <span class="delete glyphicon glyphicon-minus-sign" aria-hidden="true" style="display:none"></span> -->
		                  <span class="add glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
		                  <span class="delete glyphicon glyphicon-remove" aria-hidden="true" style="display:none"></span>
		                  <!-- <span class="icon-remove-3x"></i></span>
		                  <span style="display:none" class="icon-reorder-3x"></i></span> -->
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
					<div class="righthide current" style="width: 100%;height:100%;">
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
					<div class="righthide" style="width: 100%;height:100%;">
						<div class="col1">
							
							<div class="col1row1 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart1.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
							</div>
							
							<div class="col1row2 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart3.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
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
									<div class="bodystyle"><iframe src="echart6.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
								</div>
							</div>
						</div>
						<div class="col3">
							<div class="col3row1 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart8.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
							</div>
							<div class="col3row2 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart7.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
							</div>
							<div class="col3row3 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart5.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
							</div>
						</div>
					</div>
					<div class="righthide current" style="width: 100%;height:100%;">
						<div class="col1">
							<%-- <div class="col1row1 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><%@include file="echart0.jsp"%></div>	
							</div> --%>
							<div class="col1row1 borderstyle1">
								<div class="titlestyle">人口分布</div>
								<div class="bodystyle"><iframe src="echart3.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
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
            <span>版权所有&copy;中国银行陕西省分行</span>   
            
        </div>   
        <div class="fanye">
        	<div class="fanye1">
        		<div class="fanyenav" style="display:block">
        			<span class="glyphicon glyphicon-option-horizontal" aria-hidden="true"></span>
        		</div>
        	</div>
        	<div class="fanyelr" style="display:none">
        		<a href="javascript:void(0)" class="pg_left ps_pre">
        			<span class="glyphicon glyphicon-chevron-left" style="position:relative;top:6px"></span>
        		</a>
        		<a href="javascript:void(0)" class="pg_right ps_next">
        			<span class="glyphicon glyphicon-chevron-right" style="position:relative;top:6px"></span>
        		</a>
        	</div>
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
        var navheight = $(window).height()-200;
        $('#marquee2').css('height',navheight);
       	var navlabelheight=$(window).height()-95;
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

		$(".fanye1").mouseover(function (){
			$(".fanyenav").toggle();
			$(".fanyelr").toggle();	
		}); 
		
		
        $(".nav-label").click(function(){
            if((num%2)==0){
                $(".li1").css({
                    "width":"0px",
                    
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
		// 当前div .right索引
		var index = $('.righthide').index($('.right.current'))+1;
		// .right 个数
		var length = $('.righthide').length;
					
		$('.ps_pre').on("click",function(){
			//console.log(index);
			index--;
			index = (index-1)%length;
			if(index < length){     
				$('.righthide').eq(index).show().siblings().hide();
			}
		});
		$('.ps_next').on("click",function(){
			//console.log(index);
			index++;
			index = index%length;
			if(index < length){     
				$('.righthide').eq(index).show().siblings().hide();
			}
		}); 
		$('.righthide').eq(index).show().siblings().hide();

            
    })
    </script>
</body>
</html>
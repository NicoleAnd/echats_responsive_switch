<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>布局2</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/layout1.css">
    <link rel="stylesheet" type="text/css" href="css/layoutstyle.css">
    
</head>

<body style="padding:0.5px;">
	<div class="wrap">
	<div class="stitle"><span>二级标题1</span></div>
		<div id='wrap1' class="containerall">	
			<div class="righthide current">
				<div class="col1">
					<div class="col1row1 cone borderstyle1">
						<div class="titlestyle tone">
							<span id="titlesecond" class="fl">人口分布1</span>
							<a href="#" data-method="setTop" class="enlargeicon layui-btn" title="可放大查看" onclick = "window.parent.showOpen(this,'echart0.jsp')"></a>
						</div>
						<div class="bodystyle bone"><iframe src="echart0.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
					</div>
					
					<div class="col1row2 borderstyle1 ctwo">
						<div class="titlestyle ttwo">
							<span class="fl">人口分布123</span>
							<a href="#" data-method="setTop" class="enlargeicon layui-btn" title="可放大查看" onclick = "window.parent.showOpen(this,'echart1.jsp')"></a>
						</div>
						<div class="bodystyle btwo" style="overflow:scroll;"><iframe src="echart1.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
					</div>
					<div class="col1row3 borderstyle1 cthree">
						<div class="titlestyle tthree">
							<span class="fl">人口分布</span>
							<a href="#" data-method="setTop" class="enlargeicon layui-btn" title="可放大查看" onclick = "window.parent.showOpen(this,'echart2.jsp')"></a>
						</div>
						<div class="bodystyle bthree"><iframe src="echart2.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1 cfour">
						<div class="titlestyle tfour">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart111.jsp')"></a>
						</div>
						<div class="bodystyle bfour"><iframe src="echart111.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1 cfive">
							<div class="titlestyle tfive">
								<span class="fl">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart4.jsp')"></a>
							</div>
							<div class="bodystyle bfive"><iframe src="echart4.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
						<div class="col2row2col2 borderstyle1 csix">
							<div class="titlestyle tsix">
								<span class="fl">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart5.jsp')"></a>
							</div>
							<div class="bodystyle bsix"><iframe src="echart5.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1 cseven">
						<div class="titlestyle tseven">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart6.jsp')"></a>
						</div>
						<div class="bodystyle bseven"><iframe src="echart6.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row2 borderstyle1 ceeight">
						<div class="titlestyle teeight">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart7.jsp')"></a>
						</div>
						<div class="bodystyle beeight"><iframe src="echart7.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row3 borderstyle1 cnine">
						<div class="titlestyle tnine">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart8.jsp')"></a>
						</div>
						<div class="bodystyle bnine"><iframe src="echart8.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
			</div>
			<div class="righthide current" style="width: 100%;height:100%;height:99%;">
				<div class="col1">
					<div class="col1row1 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布2</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart0.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart0.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
					</div>
					
					<div class="col1row2 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart1.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart1.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col1row3 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart2.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart2.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart111.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart111.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1">
							<div class="titlestyle">
								<span class="fl">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart4.jsp')"></a>
							</div>
							<div class="bodystyle"><iframe src="echart4.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
						<div class="col2row2col2 borderstyle1">
							<div class="titlestyle">
								<span class="fl">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart5.jsp')"></a>
							</div>
							<div class="bodystyle"><iframe src="echart5.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart6.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart6.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row2 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart7.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart7.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row3 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart8.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart8.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
			</div>
			<div class="righthide current" style="width: 100%;height:100%;height:99%;">
				<div class="col1">
					<div class="col1row1 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布3</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart0.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart0.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
					</div>
					
					<div class="col1row2 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart1.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart1.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col1row3 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart2.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart2.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart111.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart111.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1">
							<div class="titlestyle">
								<span class="fl">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart4.jsp')"></a>
							</div>
							<div class="bodystyle"><iframe src="echart4.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
						<div class="col2row2col2 borderstyle1">
							<div class="titlestyle">
								<span class="fl">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart5.jsp')"></a>
							</div>
							<div class="bodystyle"><iframe src="echart5.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart6.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart6.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row2 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart7.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart7.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row3 borderstyle1">
						<div class="titlestyle">
							<span class="fl">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart8.jsp')"></a>
						</div>
						<div class="bodystyle"><iframe src="echart8.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
			</div>
		</div>

        
	</div>
	<script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	/* $('.bodystyle').height() = $('.borderstyle').height() - $('.titilestyle').height(); */
    	/* 单个图表的高度控制 */
    	var hone= $('.cone').height() - $('.tone').height();
    	$('.bone').css('height',hone);
    	var htwo= $('.ctwo').height() - $('.ttwo').height();
    	$('.btwo').css('height',htwo);
    	var hthree= $('.cthree').height() - $('.tthree').height();
    	$('.bthree').css('height',hthree);
    	var hfour= $('.cfour').height() - $('.tfour').height();
    	$('.bfour').css('height',hfour);
    	var hfive= $('.cfive').height() - $('.tfive').height();
    	$('.bfive').css('height',hfive);
    	var hsix= $('.csix').height() - $('.tsix').height();
    	$('.bsix').css('height',hsix);
    	var hseven= $('.cseven').height() - $('.tseven').height();
    	$('.bseven').css('height',hseven);
    	var heeight= $('.ceeight').height() - $('.teeight').height();
    	$('.beeight').css('height',heeight);
    	var hnine= $('.cnine').height() - $('.tnine').height();
    	$('.bnine').css('height',hnine);
    	
    	var index = $('.righthide').index($('.right.current'))+1;
	    function fanye(i){
	    	// 当前div .right索引
			var length2 = $('.righthide').length-1;
			var index1 = 0;
			var myarray=new Array("银行2016","银行2017","银行2018");
    		if (i == 0) {
    			if (index > 0) {
	    			index--;
	    			index1 = (index) % length2;
    				$('.righthide').eq(index1).show().siblings().hide();
    
    			}
    		} else {
    			if (index < length2) {
	    			index++;
	    			index1 = index % length2;
    				$('.righthide').eq(index1).show().siblings().hide();
    			}
    		}
    		$('.righthide').eq(index).show().siblings().hide();
    		$('.stitle span').html('二级标题'+myarray[index]);
    		
	    }
    </script>
</body>
</html>
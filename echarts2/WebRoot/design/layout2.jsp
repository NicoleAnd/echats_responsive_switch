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
    <style>
    	.enlargeicon{float: right;display: block;width: 30px;height: 25px;padding: 4px;background: url(img/enlarge.png) center no-repeat;background-size: 17px;}
    	.titlestyle a.enlargeicon:hover{background:url(img/enlarge2.png) center no-repeat;background-size: 17px;}
		 .stitle{position:absolute;top: 0;left:43%;width: 200px;height: 40px;text-align: center;line-height: 40px;
    background: #18426f;color:#fff;box-shadow: 0px 3px 10px #000;z-index:99999;
    border-bottom-left-radius:10px;border-bottom-right-radius:10px;border: 1px solid #18426f;border-top:none;}
	</style>
</head>

<body style="padding:0.5px;">
	
	<div class="wrap">
		<div class="stitle"><span>二级标题1</span></div>
		<div id='wrap1' class="containerall">
			<div class="righthide current" style="width: 100%;height:100%;height:99%;">
				<div class="col1">
					<div class="col1row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布1</span>
							<a href="#" data-method="setTop" class="enlargeicon layui-btn" title="可放大查看" onclick = "window.parent.showOpen(this,'echart0.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
							
						</div>	
					</div>
					
					<div class="col1row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart1.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
							
						</div>	
					</div>
					<div class="col1row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart2.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
							
						</div>	
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart111.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
							
						</div>	
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart4.jsp')"></a>
							</div>
							<div class="bodystyle">
								<!-- echart插入 -->
							
							</div>	
						</div>
						<div class="col2row2col2 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart5.jsp')"></a>
							</div>
							<div class="bodystyle">
								<!-- echart插入 -->
							
							</div>	
						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart6.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					<div class="col3row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart7.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					<div class="col3row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart8.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
				</div>
			</div>
			<div class="righthide current" style="width: 100%;height:100%;height:99%;">
				<div class="col1">
					<div class="col1row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布2</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart0.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>		
					</div>
					
					<div class="col1row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart1.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					<div class="col1row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart2.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart111.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart4.jsp')"></a>
							</div>
							<div class="bodystyle">
								<!-- echart插入 -->
							
							</div>	
						</div>
						<div class="col2row2col2 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart5.jsp')"></a>
							</div>
							<div class="bodystyle">
								<!-- echart插入 -->
							
							</div>	
						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart6.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>
					</div>
					<div class="col3row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart7.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					<div class="col3row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart8.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
				</div>
			</div>
			<div class="righthide current" style="width: 100%;height:100%;height:99%;">
				<div class="col1">
					<div class="col1row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布3</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart0.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					
					<div class="col1row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart1.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					<div class="col1row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" title="可放大查看" onclick = "window.parent.clicked('人口分布','echart2.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" onclick = "window.parent.clicked('人口分布','echart111.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon" onclick = "window.parent.clicked('人口分布','echart4.jsp')"></a>
							</div>
							<div class="bodystyle">
								<!-- echart插入 -->
							
							</div>	
						</div>
						<div class="col2row2col2 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon" onclick = "window.parent.clicked('人口分布','echart5.jsp')"></a>
							</div>
							<div class="bodystyle">
								<!-- echart插入 -->
							
							</div>	
						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" onclick = "window.parent.clicked('人口分布','echart6.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					<div class="col3row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" onclick = "window.parent.clicked('人口分布','echart7.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
					<div class="col3row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon" onclick = "window.parent.clicked('人口分布','echart8.jsp')"></a>
						</div>
						<div class="bodystyle">
							<!-- echart插入 -->
						
						</div>	
					</div>
				</div>
			</div>
		</div>

        
	</div>
	<script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	var index = $('.righthide').index($('.right.current'))+1;
	    function fanye(i){
	    	// 当前div .right索引
			var length2 = $('.righthide').length-1;
			var index1 = 0;
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
    		$('.stitle span').html('二级标题'+(index+1));
	    }
    </script>
</body>
</html>
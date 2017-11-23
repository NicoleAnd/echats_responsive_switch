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

<body style="padding:0.5px;">
	<div class="wrap">
		<div id='wrap1' class="containerall">	
			<div class="righthide current" style="width: 100%;height:100%;height:99%;">
				<div class="col1">
					<div class="col1row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布1</span>
							<a href="#" class="enlargeicon" onclick = "clicked()"></a>
						</div>
						<div class="bodystyle"><iframe src="echart0.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
					</div>
					
					<div class="col1row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart1.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col1row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart2.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart111.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon"></a>
							</div>
							<div class="bodystyle"><iframe src="echart4.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
						<div class="col2row2col2 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon"></a>
							</div>
							<div class="bodystyle"><iframe src="echart5.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart6.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart7.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart8.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
			</div>
			<div class="righthide current" style="width: 100%;height:100%;height:99%;">
				<div class="col1">
					<div class="col1row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布2</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart0.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
					</div>
					
					<div class="col1row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart1.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col1row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart2.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart111.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon"></a>
							</div>
							<div class="bodystyle"><iframe src="echart4.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
						<div class="col2row2col2 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon"></a>
							</div>
							<div class="bodystyle"><iframe src="echart5.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart6.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart7.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart8.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
			</div>
			<div class="righthide current" style="width: 100%;height:100%;height:99%;">
				<div class="col1">
					<div class="col1row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布3</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart0.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>	
					</div>
					
					<div class="col1row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart1.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col1row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart2.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart111.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon"></a>
							</div>
							<div class="bodystyle"><iframe src="echart4.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
						<div class="col2row2col2 borderstyle1">
							<div class="titlestyle">
								<span style="float:left;">人口分布</span>
								<a href="#" class="enlargeicon"></a>
							</div>
							<div class="bodystyle"><iframe src="echart5.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart6.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row2 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart7.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
					<div class="col3row3 borderstyle1">
						<div class="titlestyle">
							<span style="float:left;">人口分布</span>
							<a href="#" class="enlargeicon"></a>
						</div>
						<div class="bodystyle"><iframe src="echart8.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
					</div>
				</div>
			</div>
		</div>

        
	</div>
	<script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/layer/layer.js"></script>
    <script type="text/javascript">
    	var index = $('.righthide').index($('.right.current'))+1;
	    function fanye(i){
	    	// 当前div .right索引
			
			// .right 个数
			var length = $('.righthide').length;
			if(i==0){
				//console.log(index);
				index--;
				index = (index-1)%length;
				if(index < length){     
					$('.righthide').eq(index).show().siblings().hide();
				}
			}else{
				//console.log(index);
				index++;
				index = index%length;
				if(index < length){     
					$('.righthide').eq(index).show().siblings().hide();
				}
			}
			$('.righthide').eq(index).show().siblings().hide();
	    }
		
		function clicked(){
        	openModel("800px", "400px", "人口分布", "echart2.jsp");
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
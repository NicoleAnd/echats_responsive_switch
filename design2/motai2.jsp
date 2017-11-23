<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset=UTF-8>
        <title>自带半透明阴影的模态框</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<style>
		body .demo-class .layui-layer-title{background: linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
		    background: -o-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
		    background: -ms-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
		    background: -moz-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
		    background: -webkit-linear-gradient(bottom , rgba(0, 0, 0, 0.91) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
		    color:#fff; border: none;}
		body .demo-class .layui-layer-content {background:#0f2b48;}
		
		body .demo-class .layui-layer-ico {background: url(img/closew.png) no-repeat;background-size:16px;}

		
		</style>
    </head>

    <body>
		<button onclick = "clicked()">123</button>
	
        <script src="js/jquery-3.2.1.js"></script>
    	<script src="js/bootstrap.min.js"></script>
    	<script src="js/layer/layer.js"></script>
        <script>
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
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bootstrap 实例 - 响应式表格</title>
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	
    <style>
    body{background:#0f2b48;color:#fff;}
    .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td,
    .table > tbody > tr > td, .table > tfoot > tr > td {border-top: 1px solid rgba(255,255,255,0.3);}
	.table-responsive {border: 1px solid rgba(255,255,255,0.3);}
	.table > thead > tr > th {border-bottom: 2px solid rgba(255,255,255,0.3);}
	.table tbody tr:hover{background:#8ab0fd;}
	/* .selected{background:#163f69;color:pink;} */
	.selected{background:#4b9df1;}
    </style>
</head>
<body>

<div class="table-responsive">
	<table class="table">
		<!-- <caption>响应式表格布局</caption> -->
		<thead>
			<tr>
				<th>产品</th>
				<th>付款日期</th>
				<th>状态</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>产品1</td>
				<td>23/11/2013</td>
				<td>待发货</td>
			</tr>
			<tr>
				<td>产品2</td>
				<td>10/11/2013</td>
				<td>发货中</td>
			</tr>
			<tr>
				<td>产品3</td>
				<td>20/10/2013</td>
				<td>待确认</td>
			</tr>
			<tr>
				<td>产品4</td>
				<td>20/10/2013</td>
				<td>已退货</td>
			</tr>
			<tr>
				<td>产品1</td>
				<td>23/11/2013</td>
				<td>待发货</td>
			</tr>
			<tr>
				<td>产品2</td>
				<td>10/11/2013</td>
				<td>发货中</td>
			</tr>
			<tr>
				<td>产品3</td>
				<td>20/10/2013</td>
				<td>待确认</td>
			</tr>
			<tr>
				<td>产品4</td>
				<td>20/10/2013</td>
				<td>已退货</td>
			</tr>
		</tbody>
</table>
</div>  	
	<script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
		$(function () {
			$('.table tbody>tr').click(function () {
			$(this).addClass('selected') //为选中项添加高亮
			.siblings().removeClass('selected')//去除其他项的高亮形式
			.end();
			});
			$(".table tbody").on("dblclick", "tr", function(){
			    if( $(this).index() != $(this).parent().children().length - 1 ){
			        window.open("../design/index.jsp");
			    }
})
		}); 
	</script>
</body>
</html>
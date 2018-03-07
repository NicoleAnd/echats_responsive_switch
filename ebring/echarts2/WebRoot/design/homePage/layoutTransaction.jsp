<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bootstrap 实例 - 响应式表格</title>
<link rel="stylesheet" type="text/css" href="../css/normalize.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script src="../js/jquery-3.2.1.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link href="../css/bootstrap-table.css" rel="stylesheet">
<script src="../js/bootstrap-table.js"></script>
<script src="../js/bootstrap-table-zh-CN.js"></script>
<style>
body {
	background: #0f2b48;
	color: #fff;
}

.table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td,
	.table>tbody>tr>td, .table>tfoot>tr>td {
	border-top: 1px solid rgba(255, 255, 255, 0.3);
}

.table-responsive {
	border: 1px solid rgba(255, 255, 255, 0.3);
}

.table>thead>tr>th {
	border-bottom: 2px solid rgba(255, 255, 255, 0.3);
}

.table>tbody>tr:hover {
    background-color: #173E68;
}
.row{width:100%;}
.row1{width:30%;float:left;}
.row2{width:30%;float:left;}
.row3{width:30%;float:left;}
.input-group .form-control{width:48%;}
.input-group .form-control:first-child{border-radius:4px;}
.input-group-btn:last-child > .btn, .input-group-btn:last-child > .btn-group {z-index: 2;margin-right: 10px;}
</style>
</head>
<body>
	<div class="">	
	  
		<div class="input-group col-md-3" style="margin-top:0px positon:relative">  
	       <input type="text" class="form-control"placeholder="客户姓名" style="margin-left:1%;" / >
			<select class="form-control" style="margin-left:1%;">
			  <option value ="wechat" selected>微信支付</option>
			  <option value ="zfb">支付宝支付</option>
			  <option value="dk">点卡支付</option>
			  <option value="fast">快捷支付</option>
			</select>
	            <span class="input-group-btn">  
	               <button class="btn btn-info btn-search">查找</button>  
	            </span>  
	 	</div>  
		
		
	</div>
	<div class="table-responsive">
		<table id="table"></table>
		<!-- <table class="table" id="tableSim">
			<caption>响应式表格布局</caption>
			<thead>
				<tr>
					<th>产品编号</th>
					<th>客户姓名</th>
					<th>相似度</th>
				</tr>
			</thead>
			<tbody id="tbodySim">
			</tbody> 
		</table> -->
	</div>

</body>
<script type="text/javascript">
	var clickNo = 1;
	$('#table').bootstrapTable({
		height : 438,
		undefinedText : "",
		striped : false,
		paginationLoop : true,
		cache : true,
		clickToSelect : true,
		contentType : "application/json",
		dataType : "json",
		pageNumber : 1,
		pageSize : 9,
		pageList : [ 9, 50, 100],
		url : getCurrentAbsolutePath() + "/LayoutCustServlet",
		queryParams : function(params) {
			return {
				pageSize : params.limit,
				offset : params.offset,
				selTyp : "AGE_LVL",
				value : clickNo,
			}
		},
		columns : [ {
			field : 'custNo',
			title : '客户编号',
			align : 'center'
		}, {
			field : 'custName',
			title : '客户姓名',
			align : 'center'
		}, {
			field : 'gender',
			title : '性别',
			align : 'center',
			formatter : function(value,row,index){
				if(value != null && value == '1'){
					return "女";
				}
				if(value != null && value == '2'){
					return "男";
				}
				return value;
			}
		} ],
		pagination : true
	});
	/**
	 * 获取项目全路径 示例:http://127.0.0.1:8080/WebBookShop
	 * 
	 * @returns http://bootstrap-table.wenzhixin.net.cn/zh-cn/documentation/
	 */
	function getCurrentAbsolutePath() {
		// 获取当前网址，如： http://localhost:8083/proj/meun.jsp
		var curWwwPath = window.document.location.href;
		// 获取主机地址之后的目录，如： proj/meun.jsp
		var pathName = window.document.location.pathname;
		var pos = curWwwPath.indexOf(pathName);
		// 获取主机地址，如： http://localhost:8083
		var localhostPath = curWwwPath.substring(0, pos);
		// 获取带"/"的项目名，如：/proj
		var projectName = pathName.substring(0,
				pathName.substr(1).indexOf('/') + 1);
		var url = localhostPath + projectName;
		return url;
	}
</script>
</html>
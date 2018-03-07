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
</style>
</head>
<body>
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
	var clickNo = window.parent.document.getElementById("clickNo").value;
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
				selTyp : "OCCU_TYP",
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
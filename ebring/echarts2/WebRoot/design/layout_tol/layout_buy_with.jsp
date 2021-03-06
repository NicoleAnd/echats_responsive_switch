<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>布局2</title>
<script src="../js/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href="../css/normalize.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/animate.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<link rel="stylesheet" type="text/css" href="../css/layout1.css">
<link rel="stylesheet" type="text/css" href="../css/layoutstyle.css">
<style type="text/css">
.colselectstyle {
	width: 100%;
	height: 22px;
}

.colselectstyle label {
	float: left;
	margin-left: 1%;
}

.colselectstyle select {
	float: left;
	width: 20%;
}

.colpicstyle1 {
	width: 49%;
	height: 98%;
	float: left;
	margin: 1% 0.5% 1% 0.5%;
}

.customerPic {
	position: absolute;
	background: red;
	z-index: 9999;
	width: 2rem;
	height: 2rem;
	right: 0;
}
/* 公司大数据新增按钮 客户画像返回 */
.customerPic a {
	width: 105px;
	height: 25px;
	line-height: 25px;
	background: #CC3333;
	border: 1px solid #CC3333;
	box-shadow: 0px 6px 20px #000;
	border-top-left-radius: 12px;
	border-bottom-left-radius: 12px;
	right: 0;;
	top: 0px;
	z-index: 10;
	position: absolute;
}

.customerPic a {
	color: #fff;
	font-size: 12px;
}

.customerPic a img {
	height: 23px;
	float: left;
	margin-left: 7px;
}

.customerPic a:hover {
	background: #FF6666;
	border: 1px solid #FFCCCC;
	color: #fff;
}

.return {
	float: left;
	margin-left: 1rem;
}

.form-control {
	height: 22px;
}
</style>
</head>

<body style="padding: 0.5px;">
	<div class="wrap">
		<!-- 新增   客户画像返回 -->
		<div id='wrap1' class="containerall">
			<div class="righthide current">
				<div class="colselectstyle">
					<form role="form">
						<div class="form-group">
							<label for="name">产品列表：</label> <select
								style="color: #000; width: 330px; padding: 1px 2px;"
								id="custInfo" onchange="seleT()">
							</select>
							<input type="hidden" id="custNo" value="">
						</div>
					</form>
				</div>
				<div class="colpicstyle1">
					<div class="pageone borderstyle1">
						<div class="titlestyle pagetitle">
							<span id="titlesecond" class="fl">产品关联度</span>
						</div>
						<div class="bodystyle pagebody">
							<iframe id="ifr1" src="../echartLine/tableBuyWithData.jsp" frameborder="0" width="100%"
								height="100%" scrolling="no"></iframe>
						</div>
					</div>
				</div>
				<div class="colpicstyle1">
					<div class="pageone borderstyle1">
						<div class="titlestyle pagetitle">
							<span id="titlesecond" class="fl">客户信息</span>
						</div>
						<div class="bodystyle pagebody">
							<iframe id="ifr2" src="../echartLine/tableCust.jsp" frameborder="0" width="100%"
								height="100%" scrolling="no"></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- <script src="js/bootstrap.min.js"></script> -->
	<script type="text/javascript">
		$.ajax({
			type : "POST",
			url : getCurrentAbsolutePath() + '/CustServlet',
			/* data : {
				"prodId" : 16, "selectType" : "AGE" ,"sortName" : "AGE_LVL"
			}, */
			async : false,
			error : function(request) {
				alert("服务器连接异常，请稍后重试...");
			},
			success : function(data) {
				$("#custInfo").empty();
				var ret = JSON.parse(data);
				$.each(ret, function(i, item) {
					$("#custInfo").append(
							"<option value='"+item.custNo+"'>" + item.custName
									+ "</option>");
				});
			}
		});
		function seleT() {
			$("#custNo").val("");
			$("#ifr1").attr("src", "../echartLine/tableBuyWithData.jsp");
			$("#ifr2").attr("src", "../echartLine/tableCust.jsp");
		}
		
		function seleCustData(){
			$("#ifr2").attr("src", "../echartLine/tableCust.jsp");
		}

		/* $('.bodystyle').height() = $('.borderstyle').height() - $('.titilestyle').height(); */
		/* 单个图表的高度控制 */
		var colpicstyle = $('body').height() * 0.91 - 22 - 25;
		console.log(colpicstyle);
		var hPageone = colpicstyle - $('.pagetitle').height();
		$('.pagebody').css('height', hPageone);

		var hone = $('.cone').height() - $('.tone').height();
		$('.bone').css('height', hone);
		var htwo = $('.ctwo').height() - $('.ttwo').height();
		$('.btwo').css('height', htwo);
		var hthree = $('.cthree').height() - $('.tthree').height();
		$('.bthree').css('height', hthree);
		var hfour = $('.cfour').height() - $('.tfour').height();
		$('.bfour').css('height', hfour);
		var hfive = $('.cfive').height() - $('.tfive').height();
		$('.bfive').css('height', hfive);
		var hsix = $('.csix').height() - $('.tsix').height();
		$('.bsix').css('height', hsix);
		var hseven = $('.cseven').height() - $('.tseven').height();
		$('.bseven').css('height', hseven);
		var heeight = $('.ceeight').height() - $('.teeight').height();
		$('.beeight').css('height', heeight);
		var hnine = $('.cnine').height() - $('.tnine').height();
		$('.bnine').css('height', hnine);

		var index = $('.righthide').index($('.right.current')) + 1;
		function fanye(i) {
			// 当前div .right索引
			var length2 = $('.righthide').length - 1;
			var index1 = 0;
			var myarray = new Array("银行2016", "银行2017", "银行2018");
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
			$('.stitle span').html('二级标题' + myarray[index]);

		}

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
			var projectName = pathName.substring(0, pathName.substr(1).indexOf(
					'/') + 1);
			var url = localhostPath + projectName;
			return url;
		}
	</script>
</body>
</html>
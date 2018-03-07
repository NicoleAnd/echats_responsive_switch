<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>布局2</title>
<link rel="stylesheet" type="text/css" href="../css/normalize.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/animate.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<link rel="stylesheet" type="text/css" href="../css/layout1.css">
<link rel="stylesheet" type="text/css" href="../css/layoutstyle.css">

</head>

<body style="padding: 0.5px;">
	<div class="wrap">
		<div class="stitle">
			<div class="form-group">
				<span style="font-size:14px; color:cyan">产品列表：</span> <select
					style="color: #000; width: 330px; padding: 1px 2px;" id="custInfo"
					onchange="seleT()">
				</select>
			</div>
		</div>
		<div id='wrap1' class="containerall">
			<div class="righthide current">
				<div class="col1">
					<div class="col1row1 cone borderstyle1">
						<div class="titlestyle tone">
							<span id="titlesecond" class="fl">年龄分布</span> <a href="#"
								data-method="setTop" class="enlargeicon layui-btn" title="可放大查看"
								onclick="window.parent.showOpen(this,'./echartLine/echartAge.jsp')"></a>
						</div>
						<div class="bodystyle bone">
							<iframe id="ifr1" src="../echartLine/echartAge.jsp"
								frameborder="0" width="100%" height="100%" scrolling="no"></iframe>
						</div>
					</div>
					<div class="col1row2 borderstyle1 ctwo">
						<div class="titlestyle ttwo">
							<span class="fl">户籍地分布</span> <a href="#" data-method="setTop"
								class="enlargeicon layui-btn" title="可放大查看"
								onclick="window.parent.showOpen(this,'./echartLine/echartCen.jsp')"></a>
						</div>
						<div class="bodystyle btwo">
							<iframe id="ifr2" src="../echartLine/echartCen.jsp"
								frameborder="0" width="100%" height="100%" scrolling="no"></iframe>
						</div>
					</div>
					<div class="col1row3 borderstyle1 cthree">
						<div class="titlestyle tthree">
							<span class="fl">客户等级</span> <a href="#" data-method="setTop"
								class="enlargeicon layui-btn" title="可放大查看"
								onclick="window.parent.showOpen(this,'./echartLine/echartCust.jsp')"></a>
						</div>
						<div class="bodystyle bthree">
							<iframe id="ifr3" src="../echartLine/echartCust.jsp"
								frameborder="0" width="100%" height="100%" scrolling="no"></iframe>
						</div>
					</div>
				</div>
				<div class="col2">
					<div class="col2row1 borderstyle1 cfour">
						<div class="titlestyle tfour">
							<span class="fl">地区分布</span> <a href="#" data-method="setTop"
								class="enlargeicon layui-btn" title="可放大查看"
								onclick="window.parent.showOpen(this,'./echartLine/echartArea.jsp')"></a>
						</div>
						<div class="bodystyle bfour">
							<iframe id="ifr4" src="../echartLine/echartArea.jsp"
								frameborder="0" width="100%" height="100%" scrolling="no"></iframe>
						</div>
					</div>
					<div class="col2row2">
						<div class="col2row2col1 borderstyle1 cfive">
							<div class="titlestyle tfive">
								<span class="fl">存款级别</span> <a href="#" data-method="setTop"
									class="enlargeicon layui-btn" title="可放大查看"
									onclick="window.parent.showOpen(this,'./echartLine/echartDeplvl.jsp')"></a>
							</div>
							<div class="bodystyle bfive">
								<iframe id="ifr5" src="../echartLine/echartDeplvl.jsp"
									frameborder="0" width="100%" height="100%" scrolling="no"></iframe>
							</div>
						</div>
						<div class="col2row2col2 borderstyle1 csix">
							<div class="titlestyle tseven">
								<span class="fl">贷款级别</span> <a href="#" data-method="setTop"
									class="enlargeicon layui-btn" title="可放大查看"
									onclick="window.parent.showOpen(this,'./echartLine/echartLoanlvl.jsp')"></a>
							</div>
							<div class="bodystyle bseven">
								<iframe id="ifr6" src="../echartLine/echartLoanlvl.jsp"
									frameborder="0" width="100%" height="100%" scrolling="no"></iframe>
							</div>

						</div>
					</div>
				</div>
				<div class="col3">
					<div class="col3row1 borderstyle1 cseven">
						<div class="titlestyle tsix">
							<span class="fl">文化程度</span> <a href="#" data-method="setTop"
								class="enlargeicon layui-btn" title="可放大查看"
								onclick="window.parent.showOpen(this,'./echartLine/echartEdulvl.jsp')"></a>
						</div>
						<div class="bodystyle bsix">
							<iframe id="ifr7" src="../echartLine/echartEdulvl.jsp"
								frameborder="0" width="100%" height="100%" scrolling="no"></iframe>
						</div>
					</div>
					<div class="col3row2 borderstyle1 ceeight">
						<div class="titlestyle tnine">
							<span class="fl">职业类型</span> <a href="#" data-method="setTop"
								class="enlargeicon layui-btn" title="可放大查看"
								onclick="window.parent.showOpen(this,'./echartLine/echartOccuTyp.jsp')"></a>
						</div>
						<div class="bodystyle bnine">
							<iframe id="ifr8" src="../echartLine/echartOccuTyp.jsp"
								frameborder="0" width="100%" height="100%" scrolling="no"></iframe>
						</div>
					</div>
					<div class="col3row3 borderstyle1 cnine">
						<div class="titlestyle teeight">
							<span class="fl">月资金流量</span> <a href="#" data-method="setTop"
								class="enlargeicon layui-btn" title="可放大查看"
								onclick="window.parent.showOpen(this,'./echartLine/echartMonflow.jsp')"></a>
						</div>
						<div class="bodystyle beeight">
							<iframe id="ifr9" src="../echartLine/echartMonflow.jsp"
								frameborder="0" width="100%" height="100%" scrolling="no"></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="../js/jquery-3.2.1.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
	/* $('.bodystyle').height() = $('.borderstyle').height() - $('.titilestyle').height(); */
	/* 单个图表的高度控制 */
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
		var myarray = new Array("", "", "");
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
		$('.stitle span').html('产品列表' + myarray[index]);
	}
	function seleT() {
		window.parent.document.getElementById("custInfo").value = $("#custInfo")
				.val();
		$("#ifr1").attr("src", "../echartLine/echartAge.jsp");
		$("#ifr2").attr("src", "../echartLine/echartCen.jsp");
		$("#ifr3").attr("src", "../echartLine/echartCust.jsp");
		$("#ifr4").attr("src", "../echartLine/echartArea.jsp");
		$("#ifr5").attr("src", "../echartLine/echartDeplvl.jsp");
		$("#ifr6").attr("src", "../echartLine/echartLoanlvl.jsp");
		$("#ifr7").attr("src", "../echartLine/echartEdulvl.jsp");
		$("#ifr8").attr("src", "../echartLine/echartOccuTyp.jsp");
		$("#ifr9").attr("src", "../echartLine/echartMonflow.jsp");
	}
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
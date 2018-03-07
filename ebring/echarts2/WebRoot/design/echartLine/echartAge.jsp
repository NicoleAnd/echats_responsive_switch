<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>echart模拟</title>
<script src="../js/jquery-3.2.1.js"></script>
<script src="../js/echarts.min.js"></script>
<script src="../js/echart_theme.js"></script>
</head>

<body>
	<div id="main0" style="width: 100%; height: 100%;"></div>
</body>
<script type="text/javascript">
	var echart = echarts.init(document.getElementById('main0'), 'echart_theme');
	var userJson = new Array();
	var userJson1 = new Array();
	var proid = window.parent.document.getElementById("custInfo").value;
	$.ajax({
		type : "POST",
		url : getCurrentAbsolutePath() + '/UserServlet',
		data : {
			"prodId" : proid, "selectType" : "AGE" ,"sortName" : "AGE_LVL", "paraType" : "A02"
		},
		async : false,
		error : function(request) {
			alert("服务器连接异常，请稍后重试...");
		},
		success : function(data) {
			var ret = JSON.parse(data);
			jQuery.each(ret, function(i, val) {
				userJson[i] = val.ageLvl;
				userJson1[i] = val.prodId;
			});
		}
	});
	option = {
		tooltip : {
			trigger : 'item',
			formatter : "{a} <br/>{b}: {c} ({d}%)"
		},
		legend : {
			orient : 'vertical',
			x : 'left',
			data : userJson1,
			textStyle : { //图例文字的样式
				color : 'white',
				fontSize : 8
			},
			/* orient:'vertical',
			left:'0', */
			width : 5,
			height : 5,
			itemGap : 0,
		},
		grid : {
			left : '15%',
			bottom : '20%',
		/* right: '2%', 
		
		top:'10%'   */
		},
		series : [ {
			name : '年龄分布',
			type : 'pie',
			radius : [ '60%', '80%' ],
			center : ['50%', '60%'],
			avoidLabelOverlap : false,
			label : {
				normal : {
					show : false,
					position : 'center'
				},
				emphasis : {
					show : true,
					textStyle : {
						fontSize : '30',
						fontWeight : 'bold'
					}
				}
			},
			labelLine : {
				normal : {
					show : false
				}
			},
			data : [ {
				value : userJson[0],
				name : userJson1[0]
			}, {
				value : userJson[1],
				name : userJson1[1]
			}, {
				value : userJson[2],
				name : userJson1[2]
			}, {
				value : userJson[3],
				name : userJson1[3]
			} ]
		} ]
	};
	//每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
	window.onresize = echart.resize;
	echart.setOption(option);
	echart.on("click", eConsole);
	function eConsole(param) {
		top.document.getElementById("clickNo").value = param.dataIndex;
		var url = getCurrentAbsolutePath() + '/design/layout_windows/layoutAgeData.jsp';
		openModel('600px','500px','年龄分布',url);
	}
	function openModel(width, height, title, url) {
		top.layer.open({
			type : 2,
			skin : 'layui-layer-lan', // 样式类名
			shift : 2,
			offset : [ "100px", '' ],
			area : [ width, height ], // 宽高
			shadeClose : false, // 开启遮罩关闭
			title : [ title, true ],
			content : [url, "11s"],
		});
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
		var projectName = pathName.substring(0,
				pathName.substr(1).indexOf('/') + 1);
		var url = localhostPath + projectName;
		return url;
	}
</script>
</body>
</html>

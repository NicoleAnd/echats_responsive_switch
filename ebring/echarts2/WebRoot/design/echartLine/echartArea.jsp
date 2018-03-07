<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>echart模拟</title>
    <script src="../js/jquery-3.2.1.js"></script>
	<script src="../js/echarts.min.js"></script>
	<!-- <script src="js/shaanxi_theme.js"></script> -->
	<script src="../js/SXmap1_theme.js"></script>
	<script src="../js/shanxi.js"></script>
  </head>
  
  <body>
    <div id="main111" style="width:100%;height:100%;"></div>
</body>
<script type="text/javascript">
	var mycars = new Array();
	$.ajax({
		type : "POST",
		url : getCurrentAbsolutePath() + '/UserServlet',
		data : {
			"prodId" : window.parent.document.getElementById("custInfo").value, "selectType" : "AREA" ,"sortName" : "OPEN_AREA", "paraType" : "A10"
		},
		async : false,
		error : function(request) {
			alert("服务器连接异常，请稍后重试...");
		},
		success : function(data) {
			var ret = JSON.parse(data);
			jQuery.each(ret, function(i, val) {
				mycars[i] = parseInt(val.ageLvl);
			});
		}
	});

	
	var userJson = {
		"西安市" : mycars[0],
		"铜川市" : mycars[1],
		"宝鸡市" : mycars[2],
		"咸阳市" : mycars[3],
		"渭南市" : mycars[4],
		"延安市" : mycars[5],
		"汉中市" : mycars[6],
		"榆林市" : mycars[7],
		"安康市" : mycars[8],
		"商洛市" : mycars[9]
	};
	
	var echart = echarts.init(document.getElementById('main111'),
			'SXmap1_theme');
	option = {
		tooltip : {
			trigger : 'item'
		},
		legend : {
			data : [ '' ],
			textStyle : { //图例文字的样式
				color : 'white',
				fontSize : 10
			},
			orient : 'vertical',
			x : 'left',
			width : 5,
			height : 5,
			itemGap : 0,
		},
		visualMap : {
			min : 295000,
			max : 305000,
			splitNumber : 5,
			textStyle : {
				color : '#fff'
			},
			bottom : '50'
		},
		series : [ {
			name : '地区分布',
			type : 'map',
			mapType : '陕西',
			left : 'center',
			/* center: [106.55, 35.67],//定位地图在页面中的中心显示位置 */
			zoom : 1.1,//地图大小
			//roam: false,//不可缩放
			label : {
				normal : {
					show : false,//选中事显示标签
					fontSize : 3
				},
				emphasis : {
					show : true,//
					fontSize : 3
				}
			},
			data : Object.keys(userJson).map(function(key) {
				return {
					name : key.replace('.js', ''),
					value : userJson[key]
				}
			})
		} ]
	};

	//每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
	window.onresize = echart.resize;
	echart.setOption(option);
	echart.on("click", eConsole);
	function eConsole(param) {
		top.document.getElementById("clickNo").value = param.dataIndex;
		var url = getCurrentAbsolutePath() + '/design/layout_windows/layoutAreaData.jsp';
		openModel('600px','500px','地区分布',url);
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
			content : url,
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

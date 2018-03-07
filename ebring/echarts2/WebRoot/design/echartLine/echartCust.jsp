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
	$.ajax({
		type : "POST",
		url : getCurrentAbsolutePath() + '/UserServlet',
		data : {
			"prodId" : window.parent.document.getElementById("custInfo").value, "selectType" : "CUST_CLAS" ,"sortName" : "CUST_CLAS", "paraType" : "A11"
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
			title : {
			/* text: '某地区蒸发量和降水量',
			subtext: '纯属虚构' */
				x: 'left',
				y: 'top'
			},
			tooltip : {
				trigger : 'axis'
			},
			/* legend : {
				data : [ '客户等级' ],
				textStyle : { //图例文字的样式
					color : 'white',
					fontSize : 8
				},
				orient : 'vertical',
				x : '5px',
				y: '5px',
				width : 5,
				height : 5,
				itemGap : 0,
			}, */
			grid : {
				left : '15%',
				bottom : '16%',
				top : '20%',
			},
			calculable : true,
			xAxis : [ {
				type : 'category',
				data : userJson1,
				axisLabel : {
					interval : 0,//横轴信息全部显示  
					rotate : -30,//-30度角倾斜显示  
					textStyle : {
						fontSize : 9,
						color : 'white'
					},//调整x轴的lable 让字体变小 

				},
				axisLine : {
					lineStyle : {
						color : 'white',
						width : 1,//这里是为了突出显示加上的 
						fontSize : 10
					}
				}
			} ],
			yAxis : [ {
				type : 'value',
				min : 326000,
				max : 329000,
				axisLabel : {
					show : true,
					textStyle : {
						fontSize : 9,
						color : 'white'
					},//调整x轴的lable 让字体变小 

				},
				splitLine : {
					lineStyle : {
						// 使用深浅的间隔色  
						color : [ 'white' ]
					}
				},
				nameTextStyle : {
					color : [ 'white' ]
				},
				axisLine : {
					lineStyle : {
						color : 'white',
						width : 1,//这里是为了突出显示加上的  
					}
				}

			} ],
			series : [
					{
						name : '客户等级',
						type : 'bar',
						itemStyle : {
							normal : {
								color : function(params){
									var colorList = ['#00F5FF', '#00FF7F', '#7FFF00', '#FFEC8B', '#FFC125', '#FF8247', '#1E90FF', '#9370DB'];
									if(params.data > 0 && params.data <= 325500){
										return colorList[0];
									}else if (params.data > 326000 && params.data <= 326500){
										return colorList[1];
									}else if (params.data > 326500 && params.data <= 327000){
										return colorList[2];
									}else if (params.data > 327000 && params.data <= 327500){
										return colorList[3];
									}else if (params.data > 327500 && params.data <= 328000){
										return colorList[4];
									}else if (params.data > 328000 && params.data <= 328500){
										return colorList[5];
									}else if (params.data > 328500 && params.data <= 329000){
										return colorList[6];
									}else {
										return colorList[8];
									}
								}
							}
						},
						data : userJson,
						/* markPoint : {
							data : [ {
								type : 'max',
								name : '最大值'
							}, {
								type : 'min',
								name : '最小值'
							} ]
						},
						markLine : {
							data : [ {
								type : 'average',
								name : '平均值'
							} ]
						} */
					} ]
	};
	//每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
	window.onresize = echart.resize;
	echart.setOption(option);
	echart.on("click", eConsole);
	function eConsole(param) {
		top.document.getElementById("clickNo").value = param.dataIndex;
		var url = getCurrentAbsolutePath() + '/design/layout_windows/layoutCustData.jsp';
		openModel('600px','500px','客户等级',url);
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

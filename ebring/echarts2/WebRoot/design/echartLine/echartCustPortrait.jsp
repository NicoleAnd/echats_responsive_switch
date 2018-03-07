<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>客户画像图</title>
<script src="../js/jquery-3.2.1.js"></script>
<script src="../js/echarts.min.js"></script>
<script src="../js/echart_theme.js"></script>
<style type="text/css">
html, body, #main {
	height: 100%;
	width: 100%;
	margin: 0;
	padding: 0;
	background: #0f2b48
}
</style>
</head>
<body>
	<div id="main"></div>
	<script type="text/javascript">
		var proid = 1;
		var userJson = new Array();
		$.ajax({
			type : "POST",
			url : getCurrentAbsolutePath() + '/CustPortraitServlet',
			data : {
				"prodId" : proid,
			},
			async : false,
			error : function(request) {
				alert("服务器连接异常，请稍后重试...");
			},
			success : function(data) {
				var ret = JSON.parse(data);
				jQuery.each(ret, function(i, val) {
					userJson[0] = val.ageLvl;
					userJson[1] = val.censusRegister;
					userJson[2] = val.openArea;
					userJson[3] = val.eduLvl;
					userJson[4] = val.occuTyp;
					userJson[5] = val.custClas;
					userJson[6] = val.depLvl;
					userJson[7] = val.loanLvl;
					userJson[8] = val.monFlow;
				});
			}
		});
		var myChart = echarts.init(document.getElementById('main'));
		option = {
			/* title: { text: '客户画像' }, */
			tooltip : {
				formatter : function(x) {
					return x.data.des;
				}
			},
			series : [ {
				type : 'graph',
				layout : 'force',
				roam : true,
				edgeSymbol : [ 'circle', 'arrow' ],
				edgeSymbolSize : [ 4, 10 ],
				edgeLabel : {
					normal : {
						textStyle : {
							fontSize : 12
						}
					}
				},
				force : {
					repulsion : 400,
					edgeLength : [ 10, 50 ],
					layoutAnimation : true
				},
				draggable : true,
				itemStyle : {
					normal : {
						color : '#83c1ff'
					}
				},
				lineStyle : {
					normal : {
						width : 1,
						color : '#fff'

					}
				},
				edgeLabel : {
					normal : {
						show : true,
						formatter : function(x) {
							return x.data.name;
						}
					}
				},
				label : {
					normal : {
						show : true,
						position : 'right',//相对于节点标签的位置
						//回调函数，你期望节点标签上显示什么
						formatter : function(params) {
							return params.data.label;
						},
						textStyle : {}
					}
				},

				data : [ { //{value:6, symbol:'images/进步啦.png',symbolSize:25}
					name : '101',
					symbol : 'image://../images/1.png',
					label : "最佳客户",
					des : '',
					symbolSize : 50,
				}, {
					name : '201',
					label : "年龄分布",
					des : '',
					symbol : 'roundRect',
					symbolSize : 20
				}, {
					name : '202',
					label : "户籍地分布",
					des : '',
					symbol : 'roundRect', //图例形状 包括'circle', 'rect', 'roundRect', 'triangle', 'diamond', 'pin', 'arrow''image://images/1.png'
					symbolSize : 20
				}, {
					name : '203',
					label : "地区分布",
					des : '',
					symbol : 'roundRect',
					symbolSize : 20
				}, {
					name : '204',
					label : "文化程度",
					des : '',
					symbol : 'roundRect',
					symbolSize : 20
				}, {
					name : '205',
					label : "职业类型",
					des : '',
					symbol : 'roundRect',
					symbolSize : 20
				}, {
					name : '206',
					label : "客户等级",
					des : '',
					symbol : 'roundRect',
					symbolSize : 20
				}, {
					name : '207',
					label : "存款级别",
					des : '',
					symbol : 'roundRect',
					symbolSize : 20
				}, {
					name : '208',
					label : "贷款级别",
					des : '',
					symbol : 'roundRect',
					symbolSize : 20
				}, {
					name : '209',
					label : '月资金流量',
					des : '',
					symbol : 'roundRect',
					symbolSize : 20
				}, {
					name : '301',
					label : userJson[0],
					des : '',
					symbolSize : 20
				}, {
					name : "302",
					label : userJson[1],
					des : '',
					symbolSize : 20
				}, {
					name : "303",
					label : userJson[2],
					des : '',
					symbolSize : 20
				}, {
					name : "304",
					label : userJson[3],
					des : '',
					symbolSize : 20
				}, {
					name : '305',
					label : userJson[4],
					des : '',
					symbolSize : 20
				}, {
					name : "306",
					label : userJson[5],
					des : '',
					symbolSize : 20
				}, {
					name : "307",
					label : userJson[6],
					des : '',
					symbolSize : 20
				}, {
					name : "308",
					label : userJson[7],
					des : '',
					symbolSize : 20
				}, {
					name : "309",
					label : userJson[8],
					des : '',
					symbolSize : 20
				} ],
				links : [ {
					source : '101',
					target : '201',
					name : '',
					des : userJson[0]
				}, {
					source : '101',
					target : '202',
					name : '',
					des : userJson[1]
				}, {
					source : '101',
					target : '203',
					name : "",
					des : userJson[2]
				}, {
					source : '101',
					target : '204',
					name : "",
					des : userJson[3]
				}, {
					source : '101',
					target : '205',
					name : "",
					des : userJson[4]
				}, {
					source : '101',
					target : '206',
					name : "",
					des : userJson[5]
				}, {
					source : '101',
					target : '207',
					name : "",
					des : userJson[6]
				}, {
					source : '101',
					target : '208',
					name : "",
					des : userJson[7]
				}, {
					source : '101',
					target : '209',
					name : "",
					des : userJson[8]
				}, {
					source : '201',
					target : '301',
					name : "",
					lineStyle : {
						normal : {
							type : 'dotted',
							color : '#fff',
							length : '12px'
						}
					}
				}, {
					source : '202',
					target : '302',
					name : "",
					lineStyle : {
						normal : {
							type : 'dotted',
							color : '#fff',
							length : '12px'
						}
					}
				}, {
					source : '203',
					target : '303',
					name : "",
					lineStyle : {
						normal : {
							type : 'dotted',
							color : '#fff',
							length : '12px'
						}
					}
				}, {
					source : '204',
					target : '304',
					name : "",
					lineStyle : {
						normal : {
							type : 'dotted',
							color : '#fff',
							length : '12px'
						}
					}
				}, {
					source : '205',
					target : '305',
					name : "",
					lineStyle : {
						normal : {
							type : 'dotted',
							color : '#fff',
							length : '12px'
						}
					}
				}, {
					source : '206',
					target : '306',
					name : "",
					lineStyle : {
						normal : {
							type : 'dotted',
							color : '#fff',
							length : '12px'
						}
					}
				}, {
					source : '207',
					target : '307',
					name : "",
					lineStyle : {
						normal : {
							type : 'dotted',
							color : '#fff',
							length : '12px'
						}
					}
				}, {
					source : '208',
					target : '308',
					name : "",
					lineStyle : {
						normal : {
							type : 'dotted',
							color : '#fff',
							length : '12px'
						}
					}
				}, {
					source : '209',
					target : '309',
					name : "",
					lineStyle : {
						normal : {
							type : 'dotted',
							color : '#fff',
							length : '12px'
						}
					}
				} ]
			} ]
		};
		console.info(JSON.stringify(option));
		myChart.setOption(option);
		function eConsole(param) {
			/* alert("1112:"+param.dataIndex); */
			var url = getCurrentAbsolutePath() + '/design/layout_windows/tableCustData.jsp';
			openModel('600px','400px','年龄分布',url);
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
			var projectName = pathName.substring(0, pathName.substr(1).indexOf(
					'/') + 1);
			var url = localhostPath + projectName;
			return url;
		}
	</script>
</body>
</html>
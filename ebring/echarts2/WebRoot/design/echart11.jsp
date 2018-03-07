<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>echart模拟</title>
    <script src="js/jquery-3.2.1.js"></script>
	<script src="js/echarts.min.js"></script>
	<script src="js/echart_theme.js"></script>
	
  </head>
  
  <body style="background:transparent">
    <div id="main11" style="width:100%;height:100%;"></div>
</body>
<script type="text/javascript">
    var echart=echarts.init(document.getElementById('main11'),'echart_theme');
        option = {
    // 给echarts图设置背景色transparent
        backgroundColor: 'transparent',                  // -----------> // 给echarts图设置背景色   
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['微信支付', '支付宝支付', '点卡支付', '快捷支付']
        },

        calculable: true,


        xAxis: [{
            type: 'category',
            // boundaryGap: false,
            data: function() {
                var list = [];
                for (var i = 10; i <= 18; i++) {
                    if (i <= 12) {
                        list.push('2016-' + i + '-01');
                    } else {
                        list.push('2017-' + (i - 12) + '-01');
                    }
                }
                return list;
            }()
        }],
        yAxis: [{

            type: 'value'
        }],
        series: [{
            name: '微信支付',
            type: 'line',
            data: [1800, 1500, 600, 1300, 500, 1100, 800, 1200]
        }, {
            name: '支付宝支付',
            type: 'line',
            data: [1600, 700, 500, 1400, 700, 1500, 1400, 600]
        }, {
            name: '点卡支付',
            type: 'line',
            data: [500, 700, 500, 400, 700, 500, 400, 700]
        }, {
            name: '快捷支付',
            type: 'line',
            data: [1300, 1500, 1100, 1200, 800, 1000, 500, 900]
        }]
    };


        //每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
        window.onresize = echart.resize;
        echart.setOption(option);
        
        echart.on("click", eConsole);
	function eConsole(param) {
		
		/* top.document.getElementById("clickNo").value = param.dataIndex; */
		var url = getCurrentAbsolutePath() + '/design/homePage/layoutTransaction.jsp';
		
		openModel('600px','540px','交易监控查询',url);
		
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

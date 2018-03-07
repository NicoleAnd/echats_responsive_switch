<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>echart模拟</title>
	<script src="js/echarts.min.js"></script>
	<script src="js/echart_theme.js"></script>
  </head>
  
  <body style="background:transparent">
    <div id="main9" style="width:100%;height:100%;"></div>
</body>
<script type="text/javascript">
    var echart=echarts.init(document.getElementById('main9'),'echart_theme');
        option = {
    // 给echarts图设置背景色transparent
        backgroundColor: 'transparent',                  // -----------> // 给echarts图设置背景色   
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['充值', '消费', '积分', '返现']
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
            name: '充值',
            type: 'line',
            data: [1000, 800, 500, 800, 500, 500, 1000, 800]
        }, {
            name: '消费',
            type: 'line',
            data: [600, 700, 500, 400, 700, 500, 400, 700]
        }, {
            name: '积分',
            type: 'line',
            data: [60, 70, 50, 40, 70, 50, 40, 70]
        }, {
            name: '返现',
            type: 'line',
            data: [300, 350, 250, 200, 350, 250, 200, 350]
        }]
    };


        //每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
        window.onresize = echart.resize;
        echart.setOption(option);
</script>

    

  </body>
</html>

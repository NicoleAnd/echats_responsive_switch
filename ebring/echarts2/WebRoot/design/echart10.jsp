<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>echart模拟</title>
	<script src="js/echarts.min.js"></script>
	<script src="js/echart_theme.js"></script>
  </head>
  
  <body style="background:transparent">
    <div id="main10" style="width:100%;height:100%;"></div>
</body>
<script type="text/javascript">
    var echart=echarts.init(document.getElementById('main10'),'echart_theme');
        option = {
    // 给echarts图设置背景色transparent
        backgroundColor: 'transparent',                  // -----------> // 给echarts图设置背景色   
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['舆论关注', '产品关注数量','产品满意度关注']
        },

        calculable: true,


        xAxis: [{
            type: 'category',
            // boundaryGap: false,
            data: function() {
                var list = [];
                for (var i = 21; i <= 27; i++) {
                    /* if (i <= 12) { */
                        list.push('2018-'+'02' + '-'+i);
                    /* } else {
                        list.push('2018-'+'02' +'-'+i);
                    } */
                }
                return list;
            }()
        }],
        yAxis: [{

            type: 'value'
        }],
        series: [{
            name: '舆论关注',
            type: 'line',
            data: [700, 500, 300, 600, 500, 350, 480]
        }, {
            name: '产品关注数量',
            type: 'line',
            data: [600, 700, 500, 400, 700, 500, 400, 700]
        }, {
            name: '产品满意度关注',
            type: 'line',
            data: [900, 800, 900, 700, 800, 600, 500, 900]
        }]
    };


        //每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
        window.onresize = echart.resize;
        echart.setOption(option);
</script>

    

  </body>
</html>

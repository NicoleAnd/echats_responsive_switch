<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>echart模拟</title>
	<script src="js/echarts.min.js"></script>
	<script src="js/echart_theme.js"></script>
  </head>
  
  <body>
    <div id="main8" style="width:100%;height:100%;"></div>
</body>
<script type="text/javascript">
    var echart=echarts.init(document.getElementById('main8'),'echart_theme');
        option = {
    /* tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    }, */
    legend: {
        data:['直接访问','邮件营销','联盟广告','视频广告','搜索引擎'],
        textStyle:{    //图例文字的样式
	        color:'white',
	        fontSize: 8
	    },
        orient: 'vertical',
        x: 'left',
        width:5,
  		height:5,
  		itemGap:0,
    },
     grid: {
        left: '15%',
        bottom: '16%',
        /* right: '2%', 
        bottom: '30%',
        top:'10%'   */
    },
    xAxis : [
        {
            type : 'category',
            data : ['周一','周二','周三','周四','周五','周六','周日'],
            axisLabel:{  
                         interval:0,//横轴信息全部显示  
                         rotate:-30,//-30度角倾斜显示  
                         textStyle:{ 
	                     	fontSize:9,
	                     	color:'white' 
	                     },//调整x轴的lable 让字体变小 
                         
                    }, 
                    axisLine:{  
                        lineStyle:{  
                            color:'white',  
                            width:1,//这里是为了突出显示加上的 
                            fontSize: 10
                        }  
                    }  
        }
    ],
    yAxis : [
        {
            type : 'value',
            axisLabel: {
                    	show: true,
	                     textStyle:{ 
	                     	fontSize:9,
	                     	color:'white' 
	                     },//调整x轴的lable 让字体变小 
	                     
                        },
                	splitLine: {  
                        lineStyle: {  
                            // 使用深浅的间隔色  
                            color: ['white']  
                        }  
                     },
                     nameTextStyle: {  
                        color: ['white']  
                        },  
                    axisLine:{  
                        lineStyle:{  
                            color:'white',  
                            width:1,//这里是为了突出显示加上的  
                        }  
                    }  
		            
		        },
    ],
    series : [
        {
            name:'直接访问',
            type:'bar',
            data:[320, 332, 301, 334, 390, 330, 320]
        },
        {
            name:'邮件营销',
            type:'bar',
            stack: '广告',
            data:[120, 132, 101, 134, 90, 230, 210]
        },
        {
            name:'联盟广告',
            type:'bar',
            stack: '广告',
            data:[220, 182, 191, 234, 290, 330, 310]
        },
        {
            name:'视频广告',
            type:'bar',
            stack: '广告',
            data:[150, 232, 201, 154, 190, 330, 410]
        },
        {
            name:'搜索引擎',
            type:'bar',
            data:[862, 1018, 964, 1026, 1679, 1600, 1570],
            markLine : {
                lineStyle: {
                    normal: {
                        type: 'dashed'
                    }
                },
                data : [
                    [{type : 'min'}, {type : 'max'}]
                ]
            }
        },
       
       
    ]
};

        //每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
        window.onresize = echart.resize;
        echart.setOption(option);
</script>

    

  </body>
</html>

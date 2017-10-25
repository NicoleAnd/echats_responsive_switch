<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>echart模拟</title>
	<script src="js/echarts.min.js"></script>
	<script src="js/echart_theme.js"></script>
  </head>
  
  <body>
    <div id="main5" style="width:100%;height:100%;"></div>
</body>
<script type="text/javascript">
    var echart=echarts.init(document.getElementById('main5'),'echart_theme');
        option = {
    title : {
        /* text: '某地区蒸发量和降水量',
        subtext: '纯属虚构' */
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['蒸发量','降水量'],
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
    /* toolbox: {
        show : true,
        feature : {
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    }, */
    calculable : true,
    xAxis : [
        {
            type : 'category',
            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
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
            name:'蒸发量',
            type:'bar',
            data:[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
            markPoint : {
                data : [
                    {type : 'max', name: '最大值'},
                    {type : 'min', name: '最小值'}
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name: '平均值'}
                ]
            }
        },
        {
            name:'降水量',
            type:'bar',
            data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
            markPoint : {
                data : [
                    {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183},
                    {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name : '平均值'}
                ]
            }
        }
    ]
};


        //每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
        window.onresize = echart.resize;
        echart.setOption(option);
</script>

    

  </body>
</html>

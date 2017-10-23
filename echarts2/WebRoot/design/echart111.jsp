<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>echart模拟</title>
	<script src="js/echarts.js"></script>
	<!-- <script src="js/shaanxi_theme.js"></script> -->
	<script src="js/SXmap1_theme.js"></script>
	<script src="js/shanxi.js"></script>
	
  </head>
  
  <body>
    <div id="main111" style="width:100%;height:100%;"></div>
</body>
<script type="text/javascript">
var depositJson = {//存款
   	 "lastyear":{ 
	    	"安康市": 100,
	   		"宝鸡市": 209,
	   		"汉中市": 100,
	   		"商洛市": 70,
	   		"铜川市": 50,
	   		"渭南市": 70,
	   		"西安市": 400,
	   		"咸阳市": 200,
	   		"延安市": 108,
	   		"榆林市": 117
          },
        "thisyear":{ 
       	"安康市": 180,
      		"宝鸡市": 269,
      		"汉中市": 108,
      		"商洛市": 79,
      		"铜川市": 150,
      		"渭南市": 100,
      		"西安市": 480,
      		"咸阳市": 200,
      		"延安市": 98,
      		"榆林市": 107
         }
   	};
   var creditJson = {//贷款
   		"lastyear":{ 
				"安康市": 140,
				"宝鸡市": 229,
				"汉中市": 78,
				"商洛市": 89,
				"铜川市": 110,
				"渭南市": 120,
				"西安市": 430,
				"咸阳市": 180,
				"延安市": 128,
				"榆林市": 117
		       },
		     "thisyear":{ 
		    	"安康市": 150,
		   		"宝鸡市": 209,
		   		"汉中市": 100,
		   		"商洛市": 70,
		   		"铜川市": 60,
		   		"渭南市": 79,
		   		"西安市": 450,
		   		"咸阳市": 200,
		   		"延安市": 108,
		   		"榆林市": 137
	           }
   	};
    var echart=echarts.init(document.getElementById('main111'),'SXmap1_theme');
    option = {
            /* title: {
                text: '公司存/贷款',
                subtext: '今年数据',
                left: 'left'
            }, */
            tooltip: {
                trigger: 'item'
            },
            legend: {
                orient: 'vertical',
                left: '0',
                data:['存款','贷款'] 
            },
            visualMap: {
                min: 100,
                max: 1000,
                splitNumber: 5,
                textStyle:{color:'#fff'},
                bottom:'50'
            },
            
            /* toolbox: {
                show: true,
                orient: 'vertical',
                left: 'right',
                top: 'center'
            }, */
            series: [
                {
                    name: '存款',
                    type: 'map',
                    mapType: '陕西',
                    left: 'center',
                    /* center: [106.55, 35.67],//定位地图在页面中的中心显示位置 */
                    zoom: 1.1,//地图大小
                    //roam: false,//不可缩放
                    label: {
                        normal: {
                            show: false,//选中事显示标签
                            fontSize:3
                        },
                        emphasis: {
                            show: true,//
                            fontSize:3
                        }
                    },
                    data: Object.keys(depositJson.thisyear).map(function (key) {
        	            return {
        	                name: key.replace('.js', ''),
        	                value: depositJson.thisyear[key]
        	            }
        	        })
                },
                {
                    name: '贷款',
                    type: 'map',
                    mapType: '陕西',
                    left: 'center',
                   /*  center: [106.55, 35.67],//定位地图在页面中的中心显示位置 */
                    zoom: 1.1,//地图大小
                    label: {
	                	normal: {
		                    show: false,//选中事显示标签
		                    fontSize:3
		                },
		                emphasis: {
		                    show: true,//
		                    fontSize:3
		                }
                    },
                    data: Object.keys(creditJson.thisyear).map(function (key) {
        	            return {
        	                name: key.replace('.js', ''),
        	                value: creditJson.thisyear[key]
        	            }
        	        })
                }
            ]
        };
    
        //每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
        window.onresize = echart.resize;
        echart.setOption(option);
</script>

    

  </body>
</html>

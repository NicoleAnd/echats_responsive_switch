<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>echart模拟</title>
    <script src="../js/jquery-3.2.1.js"></script>
	<script src="../js/echarts.min.js"></script>
	<script src="../js/echart_theme.js"></script>
	<style>
		body{margin:0;padding:0;}
	</style>
  </head>
  
  <body>
    <div id="main1" style="width:100%;height:100%;"></div>
  </body>
<script type="text/javascript">

    var echart=echarts.init(document.getElementById('main1'),'echart_theme');
    var userJson = new Array();
    var userJson1 = new Array();
	$.ajax({
		type : "POST",
		url : getCurrentAbsolutePath() + '/CustSimServlet',
		data : {
			"type" : "yqzs"
		},
		async : false,
		error : function(request) {
			alert("服务器连接异常，请稍后重试...");
		},
		success : function(data) {
			var ret = JSON.parse(data);
			jQuery.each(ret, function(i, val) {
				userJson[i] = val.custNo;
				userJson1[i] = val.prodId;
			});
		}
	});
	
    var option = {
   /*  title: {
        text: '中国银行舆情走势图',
        x : 'center',
        y : '20px',
        textStyle:{
            color: '#FF7F50',
            fontStyle: 'normal',
            fontWeight: 'normal',
            fontFamily: '黑体',
            fontSize : 28,
        }
    }, */
    /* tooltip : {
        trigger: 'axis',
        axisPointer: {
            type: 'cross',
            label: {
                backgroundColor: '#6a7985'
            }
        }
    }, */
    legend: {
       data:['舆情走势',''],
	   textStyle:{    //图例文字的样式
	        color:'white',
	        fontSize: 8
	    },
        orient: 'vertical',
        x: 'left',
        /* y: '30px', */
        width:5,
  		height:5,
  		itemGap:0,   
	},
    /* toolbox: {
        feature: {
            saveAsImage: {}
        }
    }, */
    grid: {
        left: '15%',
        bottom: '10%',
        right: '15%',
        /* top:'20%' */
       
    },
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : userJson,
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
            name:'舆情走势',
            type:'line',
            stack: '客户量',
            areaStyle: {normal: {}},
            data:userJson1,
        }
    ]
};
        //每次窗口大小改变的时候都会触发onresize事件，这个时候我们将echarts对象的尺寸赋值给窗口的大小这个属性，从而实现图表对象与窗口对象的尺寸一致的情况
        window.onresize = echart.resize;
        echart.setOption(option);
        
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

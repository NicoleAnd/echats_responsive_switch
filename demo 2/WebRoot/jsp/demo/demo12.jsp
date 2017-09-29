<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ECharts">
    <title>demo7-地图平分段</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="./css/style.css"> -->
    
    
</head>
<style type="text/css">
/* body{background:url('./img/space-2511845.jpg') no-repeat;background-size:cover;} */
body{background-color:transparent;}
@media(max-width: 1440px){
.left{height:17rem;width:45rem;border:1px solid rgba(70,130,180,.6);}
.center{height:34rem;width:45rem;border:1px solid #4682b4;}
.right{height:17rem;width:45rem;border:1px solid rgba(70,130,180,.6);}     
.foot1{height:22rem;width:45rem;border:1px solid rgba(70,130,180,.6);}     
.foot2{height:22rem;width:45rem;border:1px solid rgba(70,130,180,.6);}     
.foot3{height:22rem;width:45rem;border:1px solid rgba(70,130,180,.6);}
}
@media(min-width: 1440px){
.left{height:21rem;width:46rem;border:1px solid rgba(70,130,180,.6);}
.center{height:42rem;width:46rem;border:1px solid #4682b4;}
.right{height:21rem;width:45rem;border:1px solid rgba(70,130,180,.6);}     
.foot1{height:23rem;width:46rem;border:1px solid rgba(70,130,180,.6);}     
.foot2{height:23rem;width:46rem;border:1px solid rgba(70,130,180,.6);}     
.foot3{height:23rem;width:45rem;border:1px solid rgba(70,130,180,.6);}
}
@media (max-width: 1024px){
.left{height:17rem;width:33rem;border:1px solid rgba(70,130,180,.6);}      
.center{height:34rem;width:33rem;border:1px solid #4682b4;}
.right{height:17rem;width:33rem;border:1px solid rgba(70,130,180,.6);}     
.foot1{height:23rem;width:33rem;border:1px solid rgba(70,130,180,.6);}     
.foot2{height:23rem;width:33rem;border:1px solid rgba(70,130,180,.6);}     
.foot3{height:23rem;width:33rem;border:1px solid rgba(70,130,180,.6);}
}
table tr td div{margin:0px;
		background: radial-gradient(rgba(70,130,180,.7), transparent);
		background: -webkit-radial-gradient(rgba(70,130,180,.7), transparent);
        background: -o-radial-gradient(rgba(70,130,180,.7), transparent);
        background: -moz-radial-gradient(rgba(70,130,180,.7), transparent);}
.table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td {
    border-top: 0px;
}
</style>
<body style='margin:0px;padding:0px;width:100%;height:100%;min-width: 1024px;'>
	<div class="table-responsive">
    	<table class="table" >
              <tr>
                  <td>
                      <table border="0" cellpadding="0" cellspacing="0">
                          <tr>
                              <td>
                                  <div id="left1Map" class="left"></div>
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <div id="left2Map" class="left"></div>
                              </td>
                          </tr>
                      </table>
                  </td>
                  <td>
                      <div id="center1Map" class="center"></div>
                  </td>
                  <td>
                      <table border="0" cellpadding="0" cellspacing="0">
                          <tr>
                              <td>
                                  <div id="right1Map" class="right"></div>
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <div id="right2Map" class="right"></div>
                              </td>
                          </tr>
                      </table>
                  </td>
              </tr>
              <tr>
                  <td>
                  	<div id="foot1Map" class="foot1"></div>
                  </td>
                  <td>
                  	<div id="foot2Map" class="foot2"></div>
                  </td>
                  <td>
                  	<div id="foot3Map" class="foot3"></div>
                  </td>
              </tr>

      </table>
  </div>
  
   
    <script  src="/demo/js/jquery-1.3.2.min.js"></script>
    <script  src="/demo/js/echarts/echarts.js"></script>
    
    <script type="text/javascript" src="/demo/js/shanxi/ankang.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi/baoji.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi/hanzhong.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi/shangluo.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi/tongchuan.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi/weinan.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi/xian.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi/xianyang.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi/yanan.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi/yulin.js"></script>
	<script type="text/javascript" src="/demo/js/shanxi.js"></script>
	<script type="text/javascript" src="/demo/js/china.js"></script>
    <script type="text/javascript">
    var colors = ['#5d9cec', '#ffd700', '#f15755', '#3ad2dc', '#62c87f'];
    //left
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
    var marketShareJson = {//四大行市场份额
    	  "deposit":{
			"农行": 180,
			"工行": 239,
			"建行": 108,
			"中行": 267
		   },
		   "credit":{
		    "农行": 150,
			"工行": 200,
			"建行": 100,
			"中行": 207
       	   }
    	};

    var fourbansdataJson = {//四大行金融数据（亿元）
      	  "deposit":{
  			"农行": 180,
  			"工行": 239,
  			"建行": 108,
  			"中行": 267
  		   },
  		   "credit":{
  		    "农行": 150,
  			"工行": 200,
  			"建行": 100,
  			"中行": 207
           }
      	};
    //left1
    left1chart = echarts.init(document.getElementById('left1Map'));

    left1option = {
    	color: colors,
    	backgroundColor: 'rgba(0,0,0,0)',
   	    title : {
   	        text: '公司存款',
   	        textStyle: {
		    	color: '#fff'
		  	},
   	        subtext: '柱状图+折线图',
   	        subtextStyle: {
    	      color : '#fff'
	        }
   	    },
   	    tooltip : {//触发类型
   	        trigger: 'axis'
   	    },
   	    legend: {
   	        /* data:['去年','今年'] */
   	         data:[ {name: '去年',
             textStyle:{color:"#5d9cec"}
               },
              {name:'今年',
              textStyle:{color:"#ffd700"}}
          ],
   	    },
   	    toolbox: {
   	        show : true,//是否显示工具栏组件
   	        itemSize:13,//工具栏大小
   	        itemGap:6,//工具栏间隔大小
   	        iconStyle:{
     	    	  emphasis:{
  	   	    	  color: {
  			   	     type: 'linear',
  			   	     x: 0,
  			   	     y: 0,
  			   	     x2: 0,
  			   	     y2: 1,
  			   	     colorStops: [{
  			   	         offset: 0, color: '#696969' // 0% 处的颜色
  			   	     }, {
  			   	         offset: 1, color: '#696969' // 100% 处的颜色
  			   	     }],
  			   	     globalCoord: false // 缺省为 false
     	 			}
   	    	  }
     	        },
   	        feature : {
	   	    	dataZoom: {//数据区域缩放。目前只支持直角坐标系的缩放。
		            yAxisIndex: 'none'
		        },
   	            dataView : {readOnly: false},//{show: true, readOnly: false,textColor:'#fff',buttonColor:'#fff',buttonTextColor:'#fff'},
   	            magicType : {show: true, type: ['line', 'bar']},
   	            restore : {show: true}
   	        }
   	    },
   	    calculable : true,//是否显示拖拽用的手柄（手柄能拖拽调整选中范围）。
   	    xAxis : [
   	        {
   	            type : 'category',
   	            boundaryGap: ['20%', '20%'],
   	            nameRotate: 60,//名称旋转角度
	   	        min: 0,
	   	        max: 10,//值越大，柱状图越窄
	   	        splitNumber: 20,//坐标轴的分割段数，需要注意的是这个分割段数只是个预估值，最后实际显示的段数会在这个基础上根据分割后坐标轴刻度显示的易读程度作调整。
   	            data : Object.keys(depositJson.lastyear),
   	            axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },                        
   	        }
   	    ],
   	    yAxis : [
   	        {
   	            type : 'value',
   	            axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },  
   	        }
   	    ],
   	    series : [
   	        {
   	            name:'去年',
   	            type:'bar',
   	            data: Object.keys(depositJson.lastyear).map(function (key) {
    	            return depositJson.lastyear[key];
    	        }),
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
   	            name:'今年',
   	            type:'bar',
   	            data: Object.keys(depositJson.thisyear).map(function (key) {
    	            return depositJson.thisyear[key];
    	        }),
   	            markPoint : {
   	                data : [
   	   	                    {type : 'max', name: '最大值'},
   	   	                    {type : 'min', name: '最小值'}
   	                ]
   	            },
   	            markLine : {
   	                data : [
   	                    {type : 'average', name : '平均值'},
	                    [{
	                        symbol: 'none',
	                        x: '90%',
	                        yAxis: 'max'
	                    }, {
	                        symbol: 'circle',
	                        label: {
	                            normal: {
	                                position: 'start',
	                                formatter: '最大值',
	                                
	                            }
	                        },
	                        type: 'max',
	                        name: '最高点'
	                    }]
   	                ]
   	            }
   	        }
   	    ]
   	};

    /* left1chart.setOption(left1option, true); */
    left1chart.setOption(left1option,true);
    window.addEventListener("resize", function() {
        left1chart.resize();
    });

    //left1结束

    //left2开始
    left2chart = echarts.init(document.getElementById('left2Map'));

    left2option = {
    		color: colors,
    		backgroundColor: 'rgba(0,0,0,0)',
    	    title: {
		        text: '公司贷款',
		        textStyle: {
			    	color: '#fff'
			  	},
	   	        subtext: '柱状图+折线图',
	   	        subtextStyle: {
	    	      color : '#fff'
		        }
		      
		    },
		    tooltip : {
		        trigger: 'axis',
		        axisPointer: {
		            type: 'cross',
		            label: {
		                backgroundColor: '#6a7985'
		            }
		        }
		    },
		    legend: {
		        /* data:['去年','今年'] */
		        data:[ {name: '去年',
             textStyle:{color:"#5d9cec"}
               },
              {name:'今年',
              textStyle:{color:"#ffd700"}}
          ],
		    },
	   	    toolbox: {
	   	        show : true,//是否显示工具栏组件
	   	        itemSize:13,//工具栏大小
	   	        itemGap:6,//工具栏间隔大小
	   	        iconStyle:{
	     	    	  emphasis:{
	  	   	    	  color: {
	  			   	     type: 'linear',
	  			   	     x: 0,
	  			   	     y: 0,
	  			   	     x2: 0,
	  			   	     y2: 1,
	  			   	     colorStops: [{
	  			   	         offset: 0, color: '#696969' // 0% 处的颜色
	  			   	     }, {
	  			   	         offset: 1, color: '#696969' // 100% 处的颜色
	  			   	     }],
	  			   	     globalCoord: false // 缺省为 false
	     	 			}
	   	    	  }
	     	        },
	   	        feature : {
		   	    	dataZoom: {//数据区域缩放。目前只支持直角坐标系的缩放。
			            yAxisIndex: 'none'
			        },
	   	            dataView : {readOnly: false},//{show: true, readOnly: false,textColor:'#fff',buttonColor:'#fff',buttonTextColor:'#fff'},
	   	            magicType : {show: true, type: ['line', 'bar']},
	   	            restore : {show: true}
	   	        }
	   	    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis : [
		        {
		            type : 'category',
		            boundaryGap : false,
		            data : Object.keys(creditJson.lastyear),
		            axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },
		        }
		    ],
		    yAxis : [
		        {
		            type : 'value',
		            axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },
		        }
		    ],
		    series : [
		        {
		            name:'去年',
		            type:'line',
		            stack: '总量',
		            //itemStyle: {normal: {color:'#7fff00'}},//折线拐点标志的样式
		            //lineStyle: {normal: {color:'#7fff00'}},//线条样式
		            //areaStyle: {normal: {color:'#7fff00'}},//区域填充样式
		            areaStyle: {normal: {}},
		            data: Object.keys(creditJson.lastyear).map(function (key) {
	    	            return creditJson.lastyear[key];
	    	        })
		        },
		        {
		            name:'今年',
		            type:'line',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'top'
		                }
		            },
		            areaStyle: {normal: {}},
		            data: Object.keys(creditJson.thisyear).map(function (key) {
	    	            return creditJson.thisyear[key];
	    	        })
		        }
		    ]

    };

    /* left2chart.setOption(left2option, true); */
    left2chart.setOption(left2option,true);
    window.addEventListener("resize", function() {
        left2chart.resize();
    });
      //left2结束
      	
    //center1开始
    center1chart = echarts.init(document.getElementById('center1Map'));
    center1option = {
    		color: colors,
    		backgroundColor: 'rgba(0,0,0,0)',
            title: {
                text: '公司存/贷款',
                subtext: '今年数据',
                left: 'center',
                textStyle: {
			    	color: '#fff'
			  	},
	   	        
	   	        subtextStyle: {
	    	      color : '#fff'
		        }
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                /* data:['存款','贷款'] */
	                data:[ {name: '存款',
	             textStyle:{color:"#5d9cec"}
	               },
	              {name:'贷款',
	              textStyle:{color:"#ffd700"}}
	          ],
            },
            visualMap: {
                min: 100,
                max: 1000,
                splitNumber: 5,
    	        color: ['#d94e5d','#eac736','#50a3ba'],
    	        textStyle: {
    	            color: '#fff'
    	        }
            },
            
            toolbox: {
                show: true,
                orient: 'vertical',
                left: 'right',
                top: 'center'
            },
            series: [
                {
                    name: '存款',
                    type: 'map',
                    mapType: '陕西',
                    left: '50',
                    center: [106.55, 35.67],//定位地图在页面中的中心显示位置
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
                    left: '50',
                    center: [106.55, 35.67],//定位地图在页面中的中心显示位置
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
    /* center1chart.setOption(center1option, true);  */
    center1chart.setOption(center1option,true);
    window.addEventListener("resize", function() {
        center1chart.resize();
    });
    //center1结束
    
        //right1开始
    right1chart = echarts.init(document.getElementById('right1Map'));
    right1option = {
    		color: colors,
    		backgroundColor: 'rgba(0,0,0,0)',
    		
    		title : [
    		  {
       	        text: '四大行市场份额',
       	        textStyle: {
		    	color: '#fff',
		    	left: 'left',
		    	
		  	},
		  	grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
   	        subtextStyle: {
		    	color: '#fff'
	        },
       	     fontSize: 5,
       	        x: '50%',
    	        textAlign: 'right'
       	      },
       	      {
       	        text: '存款市场占比',
       	        x: '25%',
       	        y: '80%',
      	        textAlign: 'center',
      	        textStyle: {
			    	color: '#fff'
			  	},
         	  },
        	  {
         	    text: '贷款市场占比',
         	    x: '75%',
         	    y: '75%',
      	        textAlign: 'center',
      	        textStyle: {
			    	color: '#fff'
			  	},
         	  }
       	    ],
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b}: {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                x: 'right',
                itemGap: 4,//图例每项之间的间隔
    	        itemWidth: 20,//图例标记的图形宽度。
    	        itemHeight: 8,//图例标记的图形高度。
                data: Object.keys(marketShareJson.deposit),
                textStyle: {
		    	color: '#fff'
		  	},
            },
            series: [
                {
                    name:'存款市场占比',
                    type:'pie',
                    radius: ['30%', '50%'],//饼图的半径，数组的第一项是内半径，第二项是外半径。
        	        center: ['25%', '50%'],//饼图的中心（圆心）坐标，数组的第一项是横坐标，第二项是纵坐标。
        	                              //支持设置成百分比，设置成百分比时第一项是相对于容器宽度，第二项是相对于容器高度。
                    avoidLabelOverlap: false,
                    label: {
                        normal: {
                            show: false,
                            position: 'center',
                            
                        },
                        emphasis: {
                            show: true,
                            textStyle: {
                                fontSize: '30',
                                fontWeight: 'bold',
                                
                            }
                        }
                    },
                    labelLine: {
                        normal: {
                            show: false
                        }
                    },
                    data:  Object.keys(marketShareJson.deposit).map(function (key) {
        	            return {
        	                name: key,
        	                value: marketShareJson.deposit[key]
        	            }
        	        })
                },
                {
                    name:'贷款市场占比',
                    type:'pie',
                    radius: ['30%', '50%'],//饼图的半径，数组的第一项是内半径，第二项是外半径。
        	        center: ['75%', '50%'],//饼图的中心（圆心）坐标，数组的第一项是横坐标，第二项是纵坐标。
        	                              //支持设置成百分比，设置成百分比时第一项是相对于容器宽度，第二项是相对于容器高度。
                    avoidLabelOverlap: false,
                    label: {
                        normal: {
                            show: false,
                            position: 'center'
                        },
                        emphasis: {
                            show: true,
                            textStyle: {
                                fontSize: '30',
                                fontWeight: 'bold'
                            }
                        }
                    },
                    labelLine: {
                        normal: {
                            show: false
                        }
                    },
                    data:  Object.keys(marketShareJson.credit).map(function (key) {
        	            return {
        	                name: key,
        	                value: marketShareJson.credit[key]
        	            }
        	        })
                }
            ]
        };
    /* right1chart.setOption(right1option, true);  */
    right1chart.setOption(right1option,true);
    window.addEventListener("resize", function() {
        right1chart.resize();
    });
    //right1结束
    
    //right2开始
    right2chart = echarts.init(document.getElementById('right2Map'));
    right2option = {
    		color: colors,
    		backgroundColor: 'rgba(0,0,0,0)',
		    title: {
		        text: '四大行金融数据(亿元)',
		        textStyle: {
		    	color: '#fff'
		  	},
   	        
   	        subtextStyle: {
    	      color : '#fff'
	        }
		    },
		    tooltip: {
		        trigger: 'axis',
		        axisPointer: {//坐标轴指示器配置项
		            type: 'shadow'
		        }
		    },
		    legend: {
		        /* data: ['贷款', '存款'], */
		        left: 'right',
		        data:[ {name: '存款',
	             textStyle:{color:"#5d9cec"}
	               },
	              {name:'贷款',
	              textStyle:{color:"#ffd700"}}
	          ],
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis: {
		        type: 'value',
		        boundaryGap: [0, 0.01],
		        axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },
		    },
		    yAxis: {
		        type: 'category',
		        data: Object.keys(fourbansdataJson.deposit),
		        axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },
		    },
		    series: [
		        {
		            name: '贷款',
		            type: 'bar',
		            data:   Object.keys(fourbansdataJson.deposit).map(function (key) {
        	            return {
        	                name: key,
        	                value: fourbansdataJson.deposit[key]
        	            }
        	        })
		        },
		        {
		            name: '存款',
		            type: 'bar',
		            data:   Object.keys(fourbansdataJson.credit).map(function (key) {
        	            return {
        	                name: key,
        	                value: fourbansdataJson.credit[key]
        	            }
        	        })
		        }
		    ]
		};
    /* right2chart.setOption(right2option, true);  */
    right2chart.setOption(right2option,true);
    window.addEventListener("resize", function() {
        right2chart.resize();
    });
    //right2结束
    
        //foot2开始
    foot2chart = echarts.init(document.getElementById('foot2Map'));

    center1chart.on('click', function (param) {
  	    // 控制台打印数据的名称
  	        var selected = param.selected;
		    var selectedProvince;
		    var name = param.name;
		    if (param.name) {
	            selectedProvince = name;
	       }
		    if (typeof selectedProvince == 'undefined') {
		    	center1option.series.splice(1);
		    	center1option.legend = null;
		    	center1option.dataRange = null;
		    	center1chart.setOption(center1option, true);
		        return;
		    }
		    var foot2option = {
		    		color: colors,
		    		backgroundColor: 'rgba(0,0,0,0)',
		            tooltip : {
		                trigger: 'item',
		                formatter: '{b}'
		            },
		            series: [
		            {
		            	name: '随机数据',
				        type: 'map',
				        mapType: selectedProvince,
				        showLegendSymbol: false,
				        itemStyle:{
				            normal:{label:{show:false}},
				            emphasis:{label:{show:true}}
				        },
				        mapLocation: {
				            x: '35%'
				        },
				        roam: true,
				        data:[
				            {name: '碑林区',value: Math.round(Math.random()*1000)},
				            {name: '长安区',value: Math.round(Math.random()*1000)},
				            {name: '高陵区',value: Math.round(Math.random()*1000)},
				            {name: '白水县',value: Math.round(Math.random()*1000)},
				            {name: '澄城县',value: Math.round(Math.random()*1000)},
				            {name: '大荔县',value: Math.round(Math.random()*1000)},
				            {name: '富平县',value: Math.round(Math.random()*1000)},
				            {name: '韩城县',value: Math.round(Math.random()*1000)},
				            {name: '合阳县',value: Math.round(Math.random()*1000)}
				        ]
		              }
		             ],
		  		   animation: false
		       };
		    foot2option.legend = {
		        x:'right',
		        data:['随机数据']
		    };
		    foot2option.dataRange = {
		        orient: 'horizontal',
		        x: 'right',
		        min: 0,
		        max: 1000,
		        color:['orange','yellow'],
		        text:['高','低'],           // 文本，默认为数值文本
		        splitNumber:0
		    };
		    /* foot2chart.setOption(foot2option, true); */
		    foot2chart.setOption(foot2option,true);
		    window.addEventListener("resize", function() {
		        foot2chart.resize();
		    });
  	});
    
    
    //foot2结束
    //foot1
    foot1chart = echarts.init(document.getElementById('foot1Map'));

    foot1option = {
    	color: colors,
    	backgroundColor: 'rgba(0,0,0,0)',
   	    title : {
   	        text: '公司存款',
   	        textStyle: {
		    	color: '#fff'
		  	},
   	        subtext: '柱状图+折线图',
   	        subtextStyle: {
    	      color : '#fff'
	        }
   	    },
   	    tooltip : {//触发类型
   	        trigger: 'axis'
   	    },
   	    legend: {
   	        /* data:['去年','今年'] */
   	        data:[ {name: '去年',
             textStyle:{color:"#5d9cec"}
               },
              {name:'今年',
              textStyle:{color:"#ffd700"}}
          ],
   	    },
   	    toolbox: {
   	        show : true,//是否显示工具栏组件
   	        itemSize:13,//工具栏大小
   	        itemGap:6,//工具栏间隔大小
   	        iconStyle:{
     	    	  emphasis:{
  	   	    	  color: {
  			   	     type: 'linear',
  			   	     x: 0,
  			   	     y: 0,
  			   	     x2: 0,
  			   	     y2: 1,
  			   	     colorStops: [{
  			   	         offset: 0, color: '#696969' // 0% 处的颜色
  			   	     }, {
  			   	         offset: 1, color: '#696969' // 100% 处的颜色
  			   	     }],
  			   	     globalCoord: false // 缺省为 false
     	 			}
   	    	  }
     	        },
   	        feature : {
	   	    	dataZoom: {//数据区域缩放。目前只支持直角坐标系的缩放。
		            yAxisIndex: 'none'
		        },
   	            dataView : {readOnly: false},//{show: true, readOnly: false,textColor:'#fff',buttonColor:'#fff',buttonTextColor:'#fff'},
   	            magicType : {show: true, type: ['line', 'bar']},
   	            restore : {show: true}
   	        }
   	    },
   	    calculable : true,//是否显示拖拽用的手柄（手柄能拖拽调整选中范围）。
   	    xAxis : [
   	        {
   	            type : 'category',
   	            boundaryGap: ['20%', '20%'],
   	            nameRotate: 60,//名称旋转角度
	   	        min: 0,
	   	        max: 10,//值越大，柱状图越窄
	   	        splitNumber: 20,//坐标轴的分割段数，需要注意的是这个分割段数只是个预估值，最后实际显示的段数会在这个基础上根据分割后坐标轴刻度显示的易读程度作调整。
   	            data : Object.keys(depositJson.lastyear),
   	            axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },
   	        }
   	    ],
   	    yAxis : [
   	        {
   	            type : 'value',
   	            axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },
   	        }
   	    ],
   	    series : [
   	        {
   	            name:'去年',
   	            type:'bar',
   	            data: Object.keys(depositJson.lastyear).map(function (key) {
    	            return depositJson.lastyear[key];
    	        }),
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
   	            name:'今年',
   	            type:'bar',
   	            data: Object.keys(depositJson.thisyear).map(function (key) {
    	            return depositJson.thisyear[key];
    	        }),
   	            markPoint : {
   	                data : [
   	   	                    {type : 'max', name: '最大值'},
   	   	                    {type : 'min', name: '最小值'}
   	                ]
   	            },
   	            markLine : {
   	                data : [
   	                    {type : 'average', name : '平均值'},
	                    [{
	                        symbol: 'none',
	                        x: '90%',
	                        yAxis: 'max'
	                    }, {
	                        symbol: 'circle',
	                        label: {
	                            normal: {
	                                position: 'start',
	                                formatter: '最大值'
	                            }
	                        },
	                        type: 'max',
	                        name: '最高点'
	                    }]
   	                ]
   	            }
   	        }
   	    ]
   	};

    /* foot1chart.setOption(foot1option, true); */
    foot1chart.setOption(foot1option,true);
    window.addEventListener("resize", function() {
        foot1chart.resize();
    });
    //foot1结束

    //foot3开始
    foot3chart = echarts.init(document.getElementById('foot3Map'));

    foot3option = {
    		color: colors,
    		backgroundColor: 'rgba(0,0,0,0)',
    	    title: {
		        text: '公司贷款',
		        textStyle: {
			    	color: '#fff'
			  	},
	   	        subtext: '柱状图+折线图',
	   	        subtextStyle: {
	    	      color : '#fff'
		        }
		    },
		    tooltip : {
		        trigger: 'axis',
		        axisPointer: {
		            type: 'cross',
		            label: {
		                backgroundColor: '#6a7985'
		            }
		        }
		    },
		    legend: {
		        /* data:['去年','今年'] */
		        data:[ {name: '去年',
             textStyle:{color:"#5d9cec"}
               },
              {name:'今年',
              textStyle:{color:"#ffd700"}}
          ],
		    },
	   	    toolbox: {
	   	        show : true,//是否显示工具栏组件
	   	        itemSize:13,//工具栏大小
	   	        itemGap:6,//工具栏间隔大小
	   	        iconStyle:{
	     	    	  emphasis:{
	  	   	    	  color: {
	  			   	     type: 'linear',
	  			   	     x: 0,
	  			   	     y: 0,
	  			   	     x2: 0,
	  			   	     y2: 1,
	  			   	     colorStops: [{
	  			   	         offset: 0, color: '#696969' // 0% 处的颜色
	  			   	     }, {
	  			   	         offset: 1, color: '#696969' // 100% 处的颜色
	  			   	     }],
	  			   	     globalCoord: false // 缺省为 false
	     	 			}
	   	    	  }
	     	        },
	   	        feature : {
		   	    	dataZoom: {//数据区域缩放。目前只支持直角坐标系的缩放。
			            yAxisIndex: 'none'
			        },
	   	            dataView : {readOnly: false},//{show: true, readOnly: false,textColor:'#fff',buttonColor:'#fff',buttonTextColor:'#fff'},
	   	            magicType : {show: true, type: ['line', 'bar']},
	   	            restore : {show: true}
	   	        }
	   	    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis : [
		        {
		            type : 'category',
		            boundaryGap : false,
		            data : Object.keys(creditJson.lastyear),
		            axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },
		        }
		    ],
		    yAxis : [
		        {
		            type : 'value',
		            axisLine:{
                   lineStyle:{color:'#fff'}
                },                         
                axisLabel: {
	                textStyle: {color: '#fff'}
                },
		        }
		    ],
		    series : [
		        {
		            name:'去年',
		            type:'line',
		            stack: '总量',
		            //itemStyle: {normal: {color:'#7fff00'}},//折线拐点标志的样式
		            //lineStyle: {normal: {color:'#7fff00'}},//线条样式
		            //areaStyle: {normal: {color:'#7fff00'}},//区域填充样式
		            areaStyle: {normal: {}},
		            data: Object.keys(creditJson.lastyear).map(function (key) {
	    	            return creditJson.lastyear[key];
	    	        })
		        },
		        {
		            name:'今年',
		            type:'line',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'top'
		                }
		            },
		            areaStyle: {normal: {}},
		            data: Object.keys(creditJson.thisyear).map(function (key) {
	    	            return creditJson.thisyear[key];
	    	        })
		        }
		    ]

    };


   /*  foot3chart.setOption(foot3option, true); */
    foot3chart.setOption(foot3option,true);
    window.addEventListener("resize", function() {
        foot3chart.resize();
    });
    //联动
    echarts.connect([left1chart, left2chart, center1chart]);
    echarts.connect([right1chart, right2chart]);
    
    </script>
</body>
</html>
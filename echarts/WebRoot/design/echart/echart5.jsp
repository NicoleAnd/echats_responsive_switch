<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>echart模拟</title>
	<script src="js/echarts.min.js"></script>
	<script src="js/purple-passion.js"></script>
	
  </head>
  
  <body>
    <div id="main5" style="width:100%;height:100%;"></div>
</body>
<script type="text/javascript">
    var echart=echarts.init(document.getElementById('main5'),'purple-passion');
        var option={
            baseOption:{
                    title:{
                    text:'模拟商店一周销售情况',
                    subtext:'虚拟数据',
                    textStyle:{
			            fontSize: 13,
        				fontWeight: 'bolder',
			        	color: 'white'
			        },
			        subtextStyle: {
						fontSize : 10,
						fontWeight:'normal',
						color : 'white'
					},        
                },
                legend:{
                    data:['购买金额','销售金额'],
                    textStyle:{    //图例文字的样式
				        color:'white',
				        fontSize: 10
				    },
                   	/* orient:'vertical',
                   	left:'right' */
                },
                xAxis:{
                    data:['周一','周二','周三','周四','周五','周六','周日'],
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
                    
                },
                yAxis:{
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
                tooltip:{
                    show:true,
                    formatter:'系列名:{a}<br />类目:{b}<br />数值:{c}'
                },
                series:[{
                    name:'购买金额',
                    type:'bar',
                    data:[200,312,431,241,175,275,369],
                    markPoint: {
                        data: [
                            {type: 'max', name: '最大值'},
                            {type: 'min', name: '最小值'}
                        ]
                    },
                    markLine:{
                        data:[
                            {type:'average',name:'平均值',itemStyle:{
                                normal:{
                                    color:'yellow'   
                                }
                            }}
                        ],
                        label : {
							normal : {
								textStyle : {
									fontWeight : 'normal',
									fontSize : 9
								}
							}
						}, 
                        
                    }
                },{
                    name:'销售金额',
                    type:'line',
                    data:[321,432,543,376,286,298,400],
                    markPoint: {
                        data: [
                            {type: 'max', name: '最大值'},
                            {type: 'min', name: '最小值'}
                        ]
                    },
                    markLine:{
                        data:[
                            {type:'average',name:'平均值',itemStyle:{
                                normal:{
                                    color:'pink'  
                                }
                                
                            }}
                        ],
                        label : {
							normal : {
								textStyle : {
									fontWeight : 'normal',
									fontSize : 9
								}
							}
						}, 
                    }
                }]
            },
            media:[
                {
                    //小与1000像素时候响应
                    query:{
                        maxWidth:1000
                    },
                    option:{
                        title:{
                            show:true,
                            /* text:'测试一下' */
                        }
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

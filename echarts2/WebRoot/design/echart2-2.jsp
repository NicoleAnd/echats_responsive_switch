<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>ECharts 实现人民的名义关系图谱</title>
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/echarts.min.js"></script>
    <script src="js/echart_theme.js"></script>
    <style type="text/css">
        html, body, #main { height: 100%; width: 100%; margin: 0; padding: 0;background:#0f2b48 }
    </style>
</head>
<body>
    <div id="main" style=""></div>
    <script type="text/javascript">
        var myChart = echarts.init(document.getElementById('main'));
        option = {
            /* title: { text: '客户画像' }, */
            tooltip: {
                formatter: function (x) {
                    return x.data.des;
                }
            },
            series: [
                {
                    type: 'graph',
                    layout: 'force',
                    symbolSize: 50,
                    roam: true,
                    edgeSymbol: ['circle', 'arrow'],
                    edgeSymbolSize: [4, 10],
                    edgeLabel: {
                        normal: {
                            textStyle: {
                                fontSize: 16
                            }
                        }
                    },
                    force: {
                        repulsion: 1500,
                        edgeLength: [10, 50]
                    },
                    draggable: true,
                    itemStyle: {
                        normal: {
                            color: '#83c1ff'
                        }
                    },
                    lineStyle: {
                        normal: {
                            width: 1,
                            color: '#fff'

                        }
                    },
                    edgeLabel: {
                        normal: {
                            show: true,
                            formatter: function (x) {
                                return x.data.name;
                            }
                        }
                    },
                    label: {
                        normal: {
                            show: true,
                            textStyle: {
                            }
                        }
                    },
             
                    data: [
                        {	//{value:6, symbol:'images/进步啦.png',symbolSize:25}
                            name: '公孙离',
                            /* icon:'image://./images/1.png',  */
                            symbol:'image://images/1.png', 
                            des: '阿离是个被教坊收养的混血魔种。',      
             				symbolSize: 200,
                        }, {
                            name: '性格',
                            des: '',
                            symbol:'roundRect',
                            symbolSize: 80
                        },  {
                            name: '兴趣爱好',
                            des: '',
                            symbol:'roundRect',              //图例形状 包括'circle', 'rect', 'roundRect', 'triangle', 'diamond', 'pin', 'arrow''image://images/1.png'
                            symbolSize: 80

                        }, {
                            name: '特长',
                            des: '',
                            symbol:'roundRect',
                            symbolSize: 80
                        }, {
                            name: '学识',
                            des: '专、本、硕、博',
                            symbol:'roundRect',
                            symbolSize: 80
                        },  {
                            name: '形象',
                            des: '',
                            symbol:'roundRect',
                            symbolSize: 80
                        },  {
                            name: '人物关系',
                            des: '',
                            symbol:'roundRect',
                            symbolSize: 80
                        },  {
                            name: '外向',
                            des: '',
                            symbolSize: 50
                        },  {
                            name: '敏捷',
                            des: '',
                            symbolSize: 50
                        },  {
                            name: '跳舞',
                            des: '',
                            symbolSize: 50
                        },  {
                            name: '博士',
                            des: '',
                            symbolSize: 50
                        },  {
                            name: '甜美',
                            des: '',
                            symbolSize: 50
                        },  {
                            name: '无',
                            des: '',
                            symbolSize: 50
                        }
                    ],
                    links: [
                        {
                            source: '公孙离',
                            target: '性格',
                            name: '',
                            des: '外向'
                        }, {
                            source: '公孙离',
                            target: '兴趣爱好',
                            name: ''
                        }, {
                            source: '公孙离',
                            target: '特长',
                            name: ""
                        }, {
                            source: '公孙离',
                            target: '学识',
                            name: ""
                        }, {
                            source: '公孙离',
                            target: '形象',
                            name: ""
                        }, {
                            source: '公孙离',
                            target: '人物关系',
                            name: ""
                        }, {
                            source: '性格',
                            target: '外向',
                            name: "",
                            lineStyle: {
                                normal: {
                                    type: 'dotted',
                                    color: '#fff',
                                    length:'12px'
                                }
                            }
                        }, {
                            source: '特长',
                            target: '敏捷',
                            name: "",
                            lineStyle: {
                                normal: {
                                    type: 'dotted',
                                    color: '#fff',
                                    length:'12px'
                                }
                            }
                        }, {
                            source: '兴趣爱好',
                            target: '跳舞',
                            name: "",
                            lineStyle: {
                                normal: {
                                    type: 'dotted',
                                    color: '#fff',
                                    length:'12px'
                                }
                            }
                        }, {
                            source: '学识',
                            target: '博士',
                            name: "",
                            lineStyle: {
                                normal: {
                                    type: 'dotted',
                                    color: '#fff',
                                    length:'12px'
                                }
                            }
                        }, {
                            source: '形象',
                            target: '甜美',
                            name: "",
                            lineStyle: {
                                normal: {
                                    type: 'dotted',
                                    color: '#fff',
                                    length:'12px'
                                }
                            }
                        }, {
                            source: '人物关系',
                            target: '无',
                            name: "",
                            lineStyle: {
                                normal: {
                                    type: 'dotted',
                                    color: '#fff',
                                    length:'12px'
                                }
                            }
                        }]
                }
            ]
        };
        myChart.setOption(option);
    </script>
</body>
</html>
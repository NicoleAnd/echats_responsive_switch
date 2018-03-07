<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head >
  <meta charset="utf-8">
	<script type="text/javascript" src="echarts.js"></script>
	<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript" src="china-main-city-map.js" charset="utf-8"></script>
	<script src="../js/echart_theme.js"></script>
  </head>
  
  <body style="background:#0f2b48">
 <div id= "mainbmap" style="width:100%;height:100%;"></div>
 <div id = "contextMenu" style = "position: absolute;background:#000;opacity:0.8;cursor: pointer;border-radius: 2px;padding:8px 30px;display:none;color: #fff;font-size:14px;">返回上一级</div>
 <script type="text/javascript">
 
var myChart = echarts.init(document.getElementById('mainbmap'));
//存储切换的每一级地图信息
var mapStack = [];
var curMap = {};
//初始化地图
/* loadMap('100000', 'china'); */
loadMap('610000', '陕西');//"陕西": '610000',
/**
   绑定用户切换地图区域事件
   cityMap对象存储着地图区域名称和区域的信息(name-code)
   当mapCode有值说明可以切换到下级地图
   此时保存上级地图的编号和名称
*/
myChart.on('mapselectchanged', function(params) {	
	var name = params.batch[0].name;
	var mapCode = cityMap[name];
	if (!mapCode) {
		alert('无此区域地图显示');
		return;
	}
	loadMap(mapCode, name);	
	//将上一级地图信息压入mapStack
    mapStack.push({
		mapCode: curMap.mapCode,
		mapName: curMap.mapName
	});	
});
/**
   绑定右键事件
*/
myChart.on('contextmenu', function(params) {
   $('#contextMenu').css({
       left: params.event.offsetX,
	   top: params.event.offsetY
   }).show();
});
/**
   响应图表的右键事件，返回上一级地图
*/
$('#contextMenu').on('click', function () {
    $(this).hide();
	//获取上一级地图信息
    var map = mapStack.pop();
	if (!mapStack.length && !map) {
	    alert('已经到达最上一级地图了');
		return;
	}
	loadMap(map.mapCode, map.mapName);	
});
/**
   加载地图：根据地图所在省市的行政编号，
   获取对应的json地图数据，然后向echarts注册该区域的地图
   最后加载地图信息
   @params {String} mapCode:地图行政编号,for example['中国':'100000', '湖南': '430000']
   @params {String} mapName: 地图名称
*/
function loadMap(mapCode, mapName) {
    $.getJSON('china-main-city/' + mapCode + '.json', function (data) {
	     if (data) {
		     echarts.registerMap(mapName, data);
			 var option = {
				tooltip: {
					trigger: 'item',
					formatter: '{b}'
				},
				series: [
					{
						name: '',
						type: 'map',
						mapType: mapName,
						selectedMode : 'multiple',
						label: {
							normal: {
								show: true
							},
							emphasis: {
								show: true
							}
						},
						data:[
						]
					}
				]
			 };
			 /* window.onresize = echart.resize; */
			 myChart.setOption(option);
			 //存储当前地图的信息
			 curMap = {
				mapCode: mapCode,
				mapName: mapName
			 };		
		 } else {
             alert('无法加载该地图');
		 }		 
	});
	 
}

 
 </script>
     
  </body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>风险预警</title>

<link rel="stylesheet" type="text/css" href="../css/normalize.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<link rel="stylesheet" type="text/css" href="../css/layout.css">
<style>
	.wrap{width:100%;height:100%;background:#0f2b48;}
	.manageOne{width:48%;height:80%;float:left;margin:7% 1% 0 1%;}
	.manageTwo{width:48%;height:80%;float:left;margin:7% 1% 0 0;}
	.layui-layer-shade{opacity:0.3}
</style>
</head> 
<body>
	<div class="header">
       <div class="headerleft">
           <span class="f18 fl lh50 ml10">15:29:59</span>
           <div style="float: left;margin-left:10px;">
               <span class="f12">2017/10/16</span>
               <span class="f12">星期二</span>
           </div>
       </div>
       <div class="headercenter">
           <div class="headercenterdiv">
			<img src="../img/zgyh.png" class="repos logoimg" >
			<span class="f15">陕西省分行&nbsp;&nbsp;</span>
			<span class="f18">|&nbsp;&nbsp;大数据可视化平台</span>
           </div>         
       </div>  
       <div class="headerright">
       	<div class="nav-icon glyphicon glyphicon-flag"></div>
           <span class="f12">担当社会责任，做最好的银行</span>
       </div>
   </div>
   <div class="wrap">
   		<div class="manageOne borderstyle1">
   			<div class="titlestyle tone">
				<span id="titlesecond" class="fl">风险状况</span> 
				<a href="#"data-method="setTop" class="enlargeicon layui-btn" title="可放大查看"onclick="window.parent.showOpen(this,'./echartLine/echartAge.jsp')"></a>
			</div>	
			<div class="bodystyle bone"><iframe src="../echartLine/tableCustData.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
   		</div>
   		<div class="manageTwo borderstyle1">
   			<div class="titlestyle tone">
				<span id="titlesecond" class="fl">风险预警</span> 
				<a href="#"data-method="setTop" class="enlargeicon layui-btn" title="可放大查看"onclick="window.parent.showOpen(this,'./echartLine/echartAge.jsp')"></a>
			</div>
			<div class="bodystyle bone"><iframe src="../echartLine/echartCustPortrait.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe></div>
   		</div>
   </div>
   
   <script src="../js/jquery-3.2.1.js"></script>
   <script src="../js/navmove.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/leftNav.js"></script>
	<script src="../js/layer/layer.js"></script>
	<script src="../js/layerui/layui.js" charset="utf-8"></script>
	<script src="../js/layout.js"></script>
</body>

</html>

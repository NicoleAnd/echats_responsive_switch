<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>布局2</title> 
   
   <link href='../css/bootstrap.css' rel='stylesheet' type='text/css'>
   <link href='../css/onepage-scroll.css' rel='stylesheet' type='text/css'>
   <link href='../css/homePageScroll.css' rel='stylesheet' type='text/css'>
  <style>
    html {height: 100%;}
    body {background: #E2E4E7;padding: 0;text-align: center;font-family: 'open sans';position: relative;margin: 0;height: 100%;
      -webkit-font-smoothing: antialiased;}
    .wrapper {height: 100% !important;height: 100%;margin: 0 auto; overflow: hidden;}
    a {text-decoration: none;}
    h1, h2 {width: 100%;float: left;}
    h1 {margin-top: 100px;color: #000;margin-bottom: 5px;font-size: 70px;letter-spacing: -4px;font-weight: 100;}
    h1 span {font-size: 26px;margin: 0 5px;text-transform: capitalize;background: rgba(0,0,0,0.85);
      display: inline-block;color: #6D461D;text-shadow: 0 2px 8px rgba(0, 0, 0, 0.75);padding: 3px 10px;
      border-radius: 5px 5px;-webkit-border-radius: 5px 5px;-moz-border-radius: 5px 5px;}
    h2 {color: #6D461D;font-weight: 100;margin-top: 0;margin-bottom: 10px;}
    .pointer {color: #9b59b6;font-family: 'Pacifico', cursive;font-size: 30px;margin-top: 15px;}
    .code1 {margin: 20px 1%;float: left;width: 48%;height: auto;background: rgba(0,0,0,0.1);border: rgba(0,0,0,0.05) 5px solid;
      border-radius: 5px;padding:5px;color: white;text-align: center;font-size: 15px;margin-top: 25px;display: block;
      box-sizing: border-box;-webkit-box-sizing: border-box;-moz-box-sizing: border-box;}
    /* code.html {color: #7EC9E6;}
    code.js {color: #FFAD00;} */
    .main {float: left;width: 100%;margin: 0 auto;}
    .main h1 {padding:150px 50px;float: left;width: 100%;font-size: 45px;font-weight: 100;color: white;margin: 0;
      box-sizing: border-box;-webkit-box-sizing: border-box;-moz-box-sizing: border-box;}
    .main h1.demo1 {background: #1ABC9C;}
    .reload.bell {font-size: 12px;padding: 20px;width: 45px;text-align: center;height: 47px;
      border-radius: 50px;-webkit-border-radius: 50px;-moz-border-radius: 50px;}
    .reload.bell #notification {font-size: 25px;line-height: 140%;}
    .reload, .btn{
      background: #CC3126;display: inline-block;padding: 0.7em;text-decoration: none;
      color: #fff;width: 100px;line-height: 140%;font-size: 17px;font-family: open sans;font-weight: bold;
      border: 4px solid #A2261E;border-radius: 5px;-moz-border-radius: 5px;-webkit-border-radius: 5px;}
    .reload:hover{background: #444;color:#fff;}
    .btn {width: 200px;color: rgb(255, 255, 255);border: 4px solid rgb(0, 0, 0);background: rgba(3, 3, 3, 0.75);}
    .clear {width: auto;}
    .btn:hover, .btn:hover {background: #444;}
    .btns {width: 410px;margin: 50px auto;}
    .credit {text-align: center;color: rgba(0,0,0,0.5);padding: 10px;width: 410px;clear: both;}
    .credit a {color: rgba(0,0,0,0.85);text-decoration: none;font-weight: bold;text-align: center;}
    .back {position: absolute;top: 0;left: 0;text-align: center;display: block;padding: 7px;
      width: 100%;background: rgba(255, 255, 255, 0.25);font-weight: bold;font-size: 13px;color: #000;
      box-sizing: border-box;-moz-box-sizing: border-box;-webkit-box-sizing: border-box;  
      transition: all 500ms ease-in-out;-webkit-transition: all 500ms ease-in-out;-moz-transition: all 500ms ease-in-out;-o-transition: all 500ms ease-in-out;}
    .back:hover {color: black;background: rgba(255, 255, 255, 0.5);} 
    header {position: relative;z-index: 10;}
    .main section .page_container {position: relative;top: 20%;margin: 0 auto 0;max-width: 950px;z-index: 3;}
    .main section  {overflow: hidden;}
    .main section > img {position: absolute;max-width: 100%;z-index: 1;}
    .main section.page1 {background:rgb(230, 217, 200);}
    .main section.page1 h1 {text-align: left;padding: 0;margin-bottom: 15px;font-size: 70px;color: black;}
    .main section.page1 h2 {color: rgba(0,0,0,0.85);text-align: center;width: 435px;line-height: 160%;}
    .main section .page_container .btns {clear: both;float: left;text-align: center;width: 435px;}
    .main section .page_container .btns a{text-align: center;}
    .main section.page2 {background: #0f2b48;}
    .main section.page2 > img {position: absolute;top: -300px;left: 50%;margin-left: -1095px;}
    .main section.page2 .page_container {/* margin-top: 240px; */overflow: hidden;}
    .main section.page2 h1 {text-align: center;padding: 0;margin-top: 15px;font-size: 50px;letter-spacing: -1px;color: white;}
    .main section.page2 h2 {color: rgba(255,255,255,0.85);text-align: center;line-height: 160%;font-weight: 100;}
    .viewing-page-2 .back{background: rgba(0, 0, 0, 0.25);color: #FFF;}
    .main section.page3 {background:url(../images/tilted-phone.png) no-repeat 156px -150px ;}
    .main section.page3 .page_container {overflow: hidden;width: 500px;right: -285px;}
    .main section.page3 h1 {text-align: left;padding: 0;margin-bottom: 0;font-size: 70px;letter-spacing: -1px;color: black;}
    .main section.page3 h2 {color: rgba(0,0,0,0.85);text-align: left;line-height: 160%;font-weight: 100;font-size: 21px;}
    .titlebtn a{display:block;}
	</style>
	
</head>
<body>
  <div class="wrapper">
	  <div class="main">
	    
      <section class="page1">
        <div class="page_container">
          <h1>中国银行大数据</h1>
          <h2>The large data analysis platform of the Bank of China</h2>
          <p class="credit">深度洞察行业数据，提供灵活易用的业务链的大数据分析解决方案</p>
          <div class="btns">
  	        <a class="reload btn" href="#">了解更多</a>
  	      </div>
  	    </div>
  	    <img src="../images/bigdata5.png" alt="phones">
      </section>
	    
	    <section class="page2 htmleaf-container">
			<div class="container">
			  <div id="single-quad" class="carousel slide" data-ride="carousel" data-shift="1">
				<div class="carousel-inner">
				  <ul class="row item active">
					<li class="col-xs-3 one">
					  <div class="titlebtn">
					  	<a href="institutionalManagement.jsp" target="_blank">
					  		<div class="titlecon"><h2>机构经营</h2></div>
						  	<div class="echartcon">
						  	  <iframe src="../echart9.jsp"  frameborder="0" width="100%" height="80%" scrolling="no" ></iframe>
						  	</div>
					  	</a>
					  </div>
					</li>
					<li class="col-xs-3 two">
					  <div class="titlebtn">
					  	<a href="productSales.jsp" target="_blank">
						  	<div class="titlecon"><h2>产品销售</h2></div>
						  	<div class="echartcon">
						  	  <iframe src="../echart9.jsp"  frameborder="0" width="100%" height="80%" scrolling="no" ></iframe>
						  	</div>
						</a>
					  </div>
					</li>
					<li class="col-xs-3 three">
					  <div class="titlebtn">
					  	<a href="publicOpinion.jsp" target="_blank">
							<div class="titlecon"><h2>舆论关注</h2></div>
						  	<div class="echartcon">
						  	  <iframe src="../echart10.jsp"  frameborder="0" width="100%" height="80%" scrolling="no" ></iframe>
						  	</div>
						</a>
					  </div>					
					</li>
					<li class="col-xs-3 four">
					  <div class="titlebtn">
					  	<a href="transactionMonitor.jsp" target="_blank">
						  	<div class="titlecon"><h2>交易监控</h2></div>
						  	<div class="echartcon">
						  	  <iframe src="../echart11.jsp"  frameborder="0" width="100%" height="80%" scrolling="no" ></iframe>
						  	</div>
						 </a>
					  </div>						
					</li>
				  </ul>
				  <ul class="row item">
					<li class="col-xs-3 five">
					  <div class="titlebtn">
					  	<a href="riskWarning.jsp" target="_blank">
						  	<div class="titlecon"><h2>风险预警</h2></div>
						  	<div class="echartcon">
						  	  <iframe src="../echart9.jsp"  frameborder="0" width="100%" height="80%" scrolling="no" ></iframe>
						  	</div>
						</a>
					  </div>						
					</li>
					
				  </ul>
				</div>

				<a class="carousel-control left" href="#single-quad" data-slide="prev">Previous</a>
				<a class="carousel-control right" href="#single-quad" data-slide="next">Next</a>
			  </div>
			</div>

	      <!-- <div class="page_container">
	      <div class="code1">机构经营</div>
	      <div class="code1">产品营销</div>
	      <div class="code1">舆论关注</div>
	      <div class="code1">期待更新</div> -->
          <h1>中国银行经营概况</h1>
          <h2>The general situation of Chinese bank management</h2>
      </section>
    </div>
  </div>
<script src="../js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="../js/jquery.onepage-scroll.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script src="../js/homePageScroll.js"></script>
<script>
	  $(document).ready(function(){
      $(".main").onepage_scroll({
        sectionContainer: "section"
      });
		});
		
	</script>
</body>

</html>

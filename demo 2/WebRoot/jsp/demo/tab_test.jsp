<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>中国银行</title>

<link rel="stylesheet" href="css/style.css"/>
<link rel="stylesheet" href="css/horizontal.css"/>

</head>
<body>

<div class="wrap">
	<input id="slide-1-trigger" type="radio" name="slides" checked> 
	<section class="slide slide-one">
		<iframe id="main" class="ui-layout-center" name="main"
			src="demo12.jsp" frameborder="0" scrolling="auto" width="100%" height=100%
			 style="overflow: hidden;">
				</iframe>
	</section>
  
	<input id="slide-2-trigger" type="radio" name="slides"> 
	<section class="slide slide-two">
	</section>
  
	<input id="slide-3-trigger" type="radio" name="slides">
	<section class="slide slide-three">
	</section>
  
	<input id="slide-4-trigger" type="radio" name="slides">
	<section class="slide slide-four">
	</section>    
	<header>   <!-- header contains our navigation elements -->
	  <label for="slide-1-trigger">Slide One</label>   <!-- slide-1-trigger -is the id name of our first radio button-->
	  <label for="slide-2-trigger">Slide Two</label>
	  <label for="slide-3-trigger">Slide Three</label>
	  <label for="slide-4-trigger">Slide Four</label>
	</header> 
</div>
</body>
</html>
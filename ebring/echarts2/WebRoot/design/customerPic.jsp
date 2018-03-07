<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>客户画像</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/customerPic.css">
    <style>
    .wraper{width:100%;height:100%;}
    .content{background:pink;width:100%;height:15%;}
    .selec{background:blue;width:50%;height:100%;}
    .formstyle{width:100%;height:100%;}
	.form-group{width:100%;margin-top: 5%;}
    </style>
</head>
<body>
	<div class="wraper">
		<div class="content">
			<!-- 下拉菜单 -->
			<div class="selec">
				<form class="form-inline formstyle" role="form">
					<div class="form-group">
						<label>下拉框:</label>
						<select class="form-control" id="numbers" style="width:30%">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
			    </form>
			</div>
			<!-- 客户图像 -->
			<div class="customer">
				<div class="photo"><img src="img/photos/1.png"></div>
			</div>
		</div>
	</div>
</body>
</html>
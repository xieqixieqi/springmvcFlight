<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/loginindex.css" />
<script type="text/javascript" src="staticjs/jquery-3.2.1.js"></script>
<script src="staticjs/login.js"></script>


</head>
<body>


	<div class="bg">
		<div class="wel">征收系统管理</div>
		<div class="user">
			<div style="">用户名</div>
			<input value="MyAdmin" id="name" type="text" name="用户"
				placeholder="用户名可为~_英文字母、中文" />
		</div>
		<div class="password">
			<div id="yonghu">密&nbsp;&nbsp;&nbsp;码</div>
			<input value="MyAdmin" id="pwd" class="" type="password" name="密码"
				placeholder="密码长度不可少于6位数" />
		</div>
		<div class="rem">
			<input type="checkbox" name="" id="" value="" />
			<div id="reb">记住密码</div>
		</div>
		<div class="fg">
			<div style="font-size: 11px; margin-top: 11px;">
				<a style="font-size: 11px;" href="#">忘记密码？</a>
			</div>
		</div>
		<input onclick="mylogin();" class="btn" type="button" name="登录"
			value="登录" />
	</div>


</body>
</html>
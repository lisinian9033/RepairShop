<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>后台登录 - 汽车服务商店系统</title>
<script src="${pageContext.request.contextPath }/js/jquery-2.2.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/login.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/login.js"></script>
</head>
<body class="login_bg">
	<section class="loginBox">
		<header class="loginHeader">
			<h1>汽车服务商店后台登陆</h1>
		</header>
		<section class="loginCont">
			<form class="loginForm" name="actionForm" id="actionForm" method="post">
				<div class="info">${msg }</div>
				<div class="inputbox">
					<label for="user">用户名：</label> <input type="text" id="loginname" 
						name="loginname" value="" placeholder="请输入用户名" required />
				</div>
				<div class="inputbox">
					<label for="mima">密码：</label> <input type="password" id="password"
						name="password" value="" placeholder="请输入密码" required />
				</div>
				<ul id="formtip"></ul>
				<div class="subBtn">
					<input type="button" id="loginBtn" value="登录" /> 
					<input type="reset" id="resetBtn" value="重置" />
				</div>
			</form>
		</section>
	</section>
	    <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath}"/>
</body>
</html>

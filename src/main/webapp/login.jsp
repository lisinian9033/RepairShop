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
<script src="${pageContext.request.contextPath }/js/index.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/login.css" />
<script type="text/javascript">
$(function(){
	$("#resetBtn").click(function(){
		$("#loginname").val('');
		$("#password").val('');
	});

	$("#loginBtn").click(function(){
		alert(1);
		var path=$("#path").val();
		alert(path);
		var user = new Object();
		user.loginname = $.trim($("#loginname").val());
		user.password = $.trim($("#password").val());
		alert(user.loginname);
		alert(user.password);
		if(user.loginname == "" || user.loginname == null){
			$("#loginname").focus();
		 	$("#formtip").css("color","red");
		 	$("#formtip").html("对不起，登录账号不能为空。");
		}else if(user.password == "" || user.password == null){
			$("#password").focus();
			$("#formtip").css("color","red");
			$("#formtip").html("对不起，登录密码不能为空。");
		}else{
			$("#formtip").html("");
			$.ajax({
				url:path+"/AdminLogin",
				type: 'POST',
				data:$("#actionForm").serializeArray(),
				dataType: "json",
				success:function(result){
					if(result.success==true){//登录成功
						alert("登陆成功！！！正在为您跳转首页，请确定....");
						window.location.href=path+'/pages/index.jsp';
					}else{
						$("#formtip").css("color","red");
						
						$("#loginname").val('');
						$("#password").val('');
						$("#formtip").html("登陆失败！请重试。");
					}
				}
			});
		}
	});
});


</script>
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
					<input type="submit" id="loginBtn" value="登录" /> 
					<input type="reset" id="resetBtn" value="重置" />
				</div>
			</form>
		</section>
	</section>
	    <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath}"/>
</body>
</html>

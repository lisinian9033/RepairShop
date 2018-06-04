
$("#resetBtn").click(function(){
	alert(111);
	$("#loginname").val('');
	$("#password").val('');
});

$("#loginBtn").click(function(){
	alert(1);
	var path=$("#path").val();
	var user = new Object();
	user.logincode = $.trim($("#loginname").val());
	user.password = $.trim($("#password").val());
	
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
			data:$("#loginForm").serializeArray(),
			dataType: "json",
			success:function(result){
				if(result.success==true){//登录成功
					alert("登陆成功！！！正在为您跳转首页，请确定....");
					window.location.href=path+'/pages/index';
				}else{
					$("#formtip").css("color","red");
					$("#formtip").html("登陆失败！请重试。");
					$("#loginname").val('');
					$("#password").val('');
				}
			}
			});
	}
});


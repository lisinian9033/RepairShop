<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>储值卡升级</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/datepicker.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box editpro_box">
				<form action="#" method="post" id="pcard_form">
					<ul class="addpro_box adduser_box">
						<li>
							<label>原储值卡：</label>
							<input type="text" value="红钻储值卡" name="classify" readonly/>
						</li>
						<li>
							<label>升级卡种：</label>
							<select name="pcard">
								<option value="1">白金储值卡</option>
								<option value="2">黄钻储值卡</option>
							</select>
						</li>
						<li>
							<label>需补金额：</label>
							<input type="text" placeholder="请输入需补金额，例：10或10.55" name="digits" required data-rule-digits="true" data-msg-required="需补金额不能为空" data-msg-digits="请输入正确的金额"/>
						</li>
						<li>
							<label>销售人员：</label>
							<select name="staff">
								<option value="1">无销售</option>
								<option value="2">张三</option>
								<option value="3">李四</option>
							</select>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="确认升级" class="btn blue_btn submit"/>
					</div>
				</form>
			</div>
		</div>
		<!--javascript include-->
		<script src="${pageContext.request.contextPath }/js/jquery-2.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.form.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.cxselect.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/other.js"></script>
		<script>
			$(function(){
				$("body").other({formId:"#pcard_form",formUrl:"#"});//formUrl 表单请求地址,linkHref 请求成功后跳转地址，此页面不需要，已删除
			});
		</script>
	</body>
</html>
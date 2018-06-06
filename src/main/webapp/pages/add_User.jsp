<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>会员添加</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/datepicker.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>会员添加</h2>
			<div class="cont_box">
				<form action="${pageContext.request.contextPath }/addUser" method="post" id="user_form">
					<ul class="addpro_box adduser_box">
						<li>
							<label>姓名：</label>
							<input type="text" placeholder="请输入姓名" name="userName" required data-rule-fullname="true" data-msg-required="会员姓名不能为空"/>
						</li>
						<li>
							<label>手机号：</label>
							<input type="text" placeholder="请输入手机号" name="userPhone" required data-rule-mobile="true" data-msg-required="会员手机号不能为空"/>
						</li>
						<li>
							<label>性别：</label>
							<div class="radio_box">
								<i class="fa fa-circle-thin fa-1x"></i>
								<input type="radio" name="userSex" class="input_radio" value="男" required data-msg-required="性别不能为空"/><span>男</span>
							</div>
							<div class="radio_box">
								<i class="fa fa-circle-thin fa-1x"></i>
								<input type="radio" name="userSex" class="input_radio" value="女"/><span>女</span>
							</div>
						</li>
						<li>
							<label>车牌：</label>
							<input type="text" placeholder="请输入车牌号码" name="userCarno" required data-rule-isCarNo="true" data-msg-required="车牌号码不能为空"/>
						</li>
						<li>
							<label>行驶里程：</label>
							<input type="text" placeholder="请输入行驶里程" name="userMileage" required data-rule-mileage="true" data-msg-required="行驶里程不能为空"/>
						</li>
						<li>
							<label>保险到期日：</label>
							<input type="text" class="choose_date" placeholder="请选择保险到期日" name="userInsurance" readonly required data-msg-required="保险到期日不能为空"/>
						</li>
						<li>
							<label>车品牌型号：</label>
							<div class="select_group" id="carmodel">
								<select name="userCarbrand" class="carbrand" id="carbrand" data-msg-required="爱车品牌型号不能为空">
									<option value="">请选择爱车品牌</option>
									<option value="奔驰" selected="selected">奔驰</option>
									<option value="宝马">宝马</option>
									<option value="大众">大众</option>
									<option value="丰田">丰田</option>
									<option value="兰博基尼">兰博基尼</option>
									<option value="劳斯莱斯">劳斯莱斯</option>
									<option value="东风">东风</option>
									<option value="长安">长安</option>
									<option value="Jeep">Jeep</option>
									<option value="奥拓">奥拓</option>
								</select>
							</div>
						</li>
						<li>
							<label>备注：</label>
							<textarea rows="3" name="userNote"></textarea>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="submit" value="添加会员" class="btn blue_btn"/>
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
				$("body").other({formId:"#user_form",formUrl:"",linkHref:""});//formUrl 表单请求地址,linkHref 请求成功后跳转地址，可不填
				$("#carmodel").cxSelect({
					url: "",//${pageContext.request.contextPath }/js/carModel.json//品牌车型号
					selects: ["carbrand", "carmodela", "carmodelb", "carmodelc"],
					emptyStyle: "none"
				});
			});
		</script>
	</body>
</html>
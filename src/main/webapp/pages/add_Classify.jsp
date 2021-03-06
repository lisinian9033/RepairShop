<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>添加商品分类</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box" style="margin-top:20px;">
				<form action="${pageContext.request.contextPath }/insertGoodsClassify" method="post" id="add_cyform">
					<ul class="addpro_box">
						<li>
							<label>商品分类名称：</label>
							<input type="text" placeholder="请输入商品分类名称" name="classifyName" required data-rule-proname="true" data-msg-required="商品分类名称不能为空" data-msg-proname="请输入正确的商品分类名称"/>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="submit" value="确定" class="btn blue_btn"/>
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
		<script src="${pageContext.request.contextPath }/js/other.js"></script>
		<script>
			$(function(){
				$("body").other({formId:"#add_cyform",formUrl:"#"});//formUrl 表单请求地址
			});
		</script>
	</body>
</html>

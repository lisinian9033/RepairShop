<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>本店会员</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>本店会员</h2>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>手机号</th>
						<th>姓名</th>
						<th>性别</th>
						<th>车牌号</th>
						<th>公里数</th>
						<th>保险到期日期</th>
						<th>爱车品牌</th>
						<th>备注</th>
						<th width="268">操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${userList }" var="u">
					<tr id="1"><!--此处id为进行查看该会员相关信息时，当前数据的唯一标识-->
						<td>${u.userPhone }</td>
						<td>${u.userName }</td>
						<td>${u.userSex }</td>
						<td>${u.userCarno }</td>
						<td>${u.userMileage }</td>
						<td><fm:formatDate value="${u.userInsurance }" pattern="yyyy-MM-dd"/></td>
						<td>${u.userCarbrand }</td>
						<td>${u.userNote }</td>
						<td>
							<a href="${pageContext.request.contextPath }/OrList?orderUser=${u.userName }" class="table_btn table_edit see_order" >
								<i class="fa fa-eye"></i>
								<span>查看订单</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_info edit_btn">
								<i class="fa fa-eye"></i>
								<span>查看详情</span>
							</a>
							<a  class="table_btn table_del del_btn delUser" userNo=${u.userNo } userName=${u.userName } data-toggle="tooltip" data-placement="top" data-original-title="删除员工基本信息">
								<i class=""></i>
								<span>删除</span>
							</a>
						</td>
					</tr>
					</c:forEach>
					</tbody>
			</table>
		</div>
		</div>
		<!--javascript include-->
		<script src="${pageContext.request.contextPath }/js/jquery-2.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableWrap:[1,2,8],tableAas:[ 0,"desc"],tableSearch:true});
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"会员详情",Twidth:"1200",Theight:"800",editUrl:"${pageContext.request.contextPath }/pages/user_Detail.jsp"});//editUrl 编辑请求地址
				//查看当前会员的订单
				//$(".see_order").click(function(){
					//var Wparent = window.parent.document,
					//orderUser = $(this);
					//$.ajax({
						//type:"post",
						//url:"${pageContext.request.contextPath }/OrList",
						//data:{"orderUser":orderUser},
						//success:function(data){
						//	$("body",Wparent).find(".nav li p[data-id='order']").trigger("click");
						//	$("body",Wparent).find("iframe").prop("src","${pageContext.request.contextPath }/pages/order_List.jsp");
						//}
					//});
				//});
			});
		</script>
	</body>
</html>

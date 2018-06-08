<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>订单列表</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>订单列表</h2>
			<form action="#" method="post" id="order_shform">
				<div class="search_box clearfix">
					<input type="text" class="f_left" name="order_code" placeholder="输入手机号或订单号查询" style="margin-right:15px;"/>
					<label class="f_left">开始日期：</label>
					<div class="date_box">
						<input type="text" name="start" id="start_date" readonly/>
						<i class="fa fa-calendar"></i>
					</div>
					<label class="f_left">结束日期：</label>
					<div class="date_box">
						<input type="text" name="end" id="end_date" readonly/>
						<i class="fa fa-calendar"></i>
					</div>
					<input type="button" value="搜索" class="btn blue_btn search"/>
				</div>
			</form>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table">
				<thead>
					<tr>
						<th>订单号</th>
						<th>金额</th>
						<th>支付方式</th>
						<th>会员</th>
						<th>手机号</th>
						<th>状态</th>
						<th>开单日期</th>
						<th>订单备注</th>
						<th width="200">操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${ol }" var="ol">
					<tr id="1"><!--此处id为进行编辑或删除时该条数据的唯一标识-->
						<td>${ol.orderNo }</td>
						<td>${ol.orderPrice }</td>
						<td>${ol.orderPaytype }</td>
						<td>${ol.orderUser }</td>
						<td>${ol.orderPhone }</td>
						<td>${ol.orderStatus }</td>
						<td><fm:formatDate value="${ol.orderTime }" pattern="yyyy-MM-dd"/></td>
						<td width="200">
							<div class="order_remark">${ol.orderNote }</div>
						</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_info detail_btn">
								<i class="fa fa-eye"></i>
								<span>订单详情</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
								<i class="fa fa-edit"></i>
								<span>编辑订单</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_del del_btn">
								<i class="fa fa-recycle"></i>
								<span>退单</span>
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
				$("body").other({tableId:"#table_box",tableWrap:[0,1,2,3,4,7,8],tableAas:[6,"desc"]});
				$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",deleteTxt:"确认要退单吗？",Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 退单请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".detail_btn",even:"click",tipTit:"订单详情",Twidth:"800",Theight:"600",editUrl:"${pageContext.request.contextPath }/pages/order_Detail.jsp"});//editUrl 编辑请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"编辑订单",Twidth:"800",Theight:"600",editUrl:"${pageContext.request.contextPath }/pages/order_edit.jsp"});//editUrl 编辑请求地址
				//订单搜索
				$(".search").click(function(){
					var data = {"startDate":$("#order_shform").find("input[name='start']").val(),"endDate":$("#order_shform").find("input[name='end']").val(),"orderId":$("#order_shform").find("input[name='order_code']").val()};
					$.ajax({
						type:"post",
						url:"${pageContext.request.contextPath }/pages/search_Order.html",
						data:data,
						success:function(data){
							$(".table").remove();
							$(".cont_box").append(data);
							$("body").other({tableId:"#table_box",tableWrap:[0,1,2,3,4,7,8],tableAas:[6,"desc"]});
							$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",deleteTxt:"确认要退单吗？",Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 退单请求地址
							$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"订单详情",Twidth:"800",Theight:"600",editUrl:"${pageContext.request.contextPath }/pages/order_Detail.jsp"});//editUrl 编辑请求地址
						},
						error:function(data){
							alert(data);
						}
					});
				});
			});
		</script>
	</body>
</html>

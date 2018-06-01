<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>员工列表</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>员工列表</h2>
			<div class="cont_box">
				<form action="#" method="post" id="staff_form">
					<div class="search_formbox clearfix">
						<button type="button" id="job" class="btn blue_btn curr">全部员工</button>
						<button type="button" id="quit" class="btn blue_btn ">在职员工</button>
						<button type="button" id="dimission" class="btn blue_btn">离职员工</button>
						<button type="button" id="practice" class="btn blue_btn">实习员工</button>
					</div>
					<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
					<thead>
						<tr>
							<th>员工编号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>岗位</th>
							<th>电话</th>
							<th>录入时间</th>
							<th>状态</th>
							<th width="268">操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${slist}" var="list">
						<tr id="1"><!--此处id为进行编辑或查看时该条数据的唯一标识-->
							<td>${list.staffNo }</td>
							<td>${list.staffName }</td>
							<td>${list.staffSex }</td>
							<td>${list.staffCareer }</td>
							<td>${list.staffPhone }</td>
							<td><fm:formatDate value="${list.staffEntrytime  }" pattern="yyyy-MM-dd"/></td>
							<td>${list.staffStatus }</td>
							<td>
								<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
									<i class="fa fa-edit"></i>
									<span>编辑</span>
								</a>
								<a href="javascript:void(0);" class="table_btn table_info see_btn">
									<i class="fa fa-eye"></i>
									<span>查看业绩</span>
								</a>
								<a  class="table_btn table_del del_btn delStaff" staffNo=${list.staffNo } staffName=${list.staffName } data-toggle="tooltip" data-placement="top" data-original-title="删除员工基本信息">
								<i class="fa fa-trash-o"></i>
								<span>删除</span>
								</a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
		</div>
		</div>
		<!--javascript include-->
		<script src="${pageContext.request.contextPath }/js/jquery-2.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableWrap:[1,7],tableAas:[ 0,"desc"],tableSearch:true});
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"编辑员工信息",Twidth:"700",Theight:"460",editUrl:"${pageContext.request.contextPath }/pages/edit_Staff.jsp"});//editUrl 编辑员工信息请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".see_btn",even:"click",tipTit:"员工业绩",Twidth:"998",Theight:"600",editUrl:"${pageContext.request.contextPath }/pages/staff_Achievement.jsp"});//editUrl 员工业绩请求地址
				//员工筛选
				$(".search_formbox .btn").click(function(){
					var dataId = $(this).prop("id"),//员工状态id
						that = $(this);
					$.ajax({
						type:"post",
						url:"#",
						data:{"id":dataId},
						success:function(data){
							that.addClass("curr").siblings().removeClass("curr");
						}
					});
				});
				
				$("#job").click(function(){//全部员工
					$.ajax({
						type:"post",
						url:"#",
						data:{"staffStatus":""},
						success:function(data){
							that.addClass("curr").siblings().removeClass("curr");
						}
					});
				});
				$("#quit").click(function(){//在职员工
					$.ajax({
						type:"post",
						url:"#",
						data:{"staffStatus":"在职"},
						success:function(data){
							that.addClass("curr").siblings().removeClass("curr");
						}
					});
				});
				$("#dimission").click(function(){//离职员工
					$.ajax({
						type:"post",
						url:"#",
						data:{"staffStatus":"离职"},
						success:function(data){
							that.addClass("curr").siblings().removeClass("curr");
						}
					});
				});
				$("#practice").click(function(){//实习员工
					$.ajax({
						type:"post",
						url:"#",
						data:{"staffStatus":"实习"},
						success:function(data){
							that.addClass("curr").siblings().removeClass("curr");
						}
					});
				});
			});
		</script>
	</body>
</html>

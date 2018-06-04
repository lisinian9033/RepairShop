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
				<form action="${pageContext.request.contextPath }/selectByStatus" id="staff_form" method="post">
					<div class="search_formbox clearfix">
					<%--curr--%>
					    <button type="submit" id="job" class="btn blue_btn" value="" name="staffStatus" >全部员工</button>
						<button type="submit" id="quit" class="btn blue_btn" value="在职" name="staffStatus">在职员工</button>
						<button type="submit" id="dimission" class="btn blue_btn" value="离职" name="staffStatus">离职员工</button>
						<button type="submit" id="practice" class="btn blue_btn" value="实习" name="staffStatus">实习员工</button>
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
					<c:if test="${not empty slist}">
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
								<a href="javascript:void(0);" class="table_btn table_edit edit_btn" staffNo=${list.staffNo }>
									<i class="fa fa-edit"></i>
									<span>编辑</span>
								</a>
								<a href="javascript:void(0);" class="table_btn table_info see_btn" staffNo=${list.staffNo }>
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
						</c:if>
						<c:if test="${empty slist}">
						<c:forEach items="${ss}" var="s">
						<tr id="1"><!--此处id为进行编辑或查看时该条数据的唯一标识-->
							<td>${s.staffNo }</td>
							<td>${s.staffName }</td>
							<td>${s.staffSex }</td>
							<td>${s.staffCareer }</td>
							<td>${s.staffPhone }</td>
							<td><fm:formatDate value="${s.staffEntrytime  }" pattern="yyyy-MM-dd"/></td>
							<td>${s.staffStatus }</td>
							<td>
								<a href="javascript:void(0);" class="table_btn table_edit edit_btn" staffNo=${s.staffNo }>
									<i class="fa fa-edit"></i>
									<span>编辑</span>
								</a>
								<a href="javascript:void(0);" class="table_btn table_info see_btn" staffNo=${s.staffNo }>
									<i class="fa fa-eye"></i>
									<span>查看业绩</span>
								</a>
								<a  class="table_btn table_del del_btn delStaff" staffNo=${s.staffNo } staffName=${s.staffName } data-toggle="tooltip" data-placement="top" data-original-title="删除员工基本信息">
								<i class="fa fa-trash-o"></i>
								<span>删除</span>
								</a>
							</td>
						</tr>
						</c:forEach>
						</c:if>
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
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"编辑员工信息",Twidth:"700",Theight:"460",editUrl:"${pageContext.request.contextPath }/selectByStatusNo"});//editUrl 编辑员工信息请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".see_btn",even:"click",tipTit:"员工业绩",Twidth:"998",Theight:"600",editUrl:"${pageContext.request.contextPath }/pages/staff_Achievement.jsp"});//editUrl 员工业绩请求地址
				//员工筛选
				
			});
		</script>
	</body>
</html>

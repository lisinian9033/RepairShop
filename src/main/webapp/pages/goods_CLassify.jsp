<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>商品分类管理</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>商品分类管理</h2>
			<div class="search_box clearfix">
				<button type="button" class="btn blue_btn add_classify">添加商品分类</button>
			</div>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>商品分类名称</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr id="1"><!--此处id为进行入库或出库时该条数据的唯一标识-->
						<td>高级洗护</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
								<i class="fa fa-edit"></i>
								<span>编辑</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_del del_btn">
								<i class="fa fa-trash-o"></i>
								<span>删除</span>
							</a>
						</td>
					</tr>
					<tr id="2">
						<td>车内饰品</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
								<i class="fa fa-edit"></i>
								<span>编辑</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_del del_btn">
								<i class="fa fa-trash-o"></i>
								<span>删除</span>
							</a>
						</td>
					</tr>
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
				$("body").other({tableId:"#table_box",tableAas:[ 0,"desc"]});
				$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 删除请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"编辑商品分类",Twidth:"400",Theight:"200",editUrl:"${pageContext.request.contextPath }/pages/edit_Classify.jsp"});//editUrl 编辑商品分类请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".add_classify",even:"click",tipTit:"添加商品分类",Twidth:"400",Theight:"200",editUrl:"${pageContext.request.contextPath }/pages/add_Classify.jsp"});//editUrl 添加商品分类请求地址
			});
		</script>
	</body>
</html>

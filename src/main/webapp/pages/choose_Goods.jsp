<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>选择商品</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box editpro_box">
				<form action="#" method="post" id="choose_form">
					<ul class="addpro_box">
						<li>
							<label>商品选择：</label>
							<select name="googs" required data-msg-required="请选择商品">
								<option value="">请选择</option>
								<!--value为商品id，data-price为商品的价格-->
								<option value="1" data-price="100">香水</option>
								<option value="2">毛巾</option>
								<option value="3">太阳镜</option>
								<option value="4">太阳镜</option>
								<option value="5">太阳镜</option>
								<option value="6">太阳镜</option>
							</select>
						</li>
						<li>
							<label>销售：</label>
							<div class="f_left choose_span choose_radio">
								<!--这里span需要传销售的id-->
								<span id="33">刘一</span>
								<span id="44">陈二</span>
								<span>张三</span>
								<span>李四</span>
								<span>王五</span>
								<span>赵六</span>
								<span>孙七</span>
								<span>周八</span>
								<span>吴九</span>
							</div>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="确认选择" class="btn blue_btn"/>
					</div>
				</form>
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
				$(".choose_radio span").click(function(){
					$(this).addClass("curr").siblings().removeClass("curr");
				});
				$("#choose_form").validate({
					errorElement:"div"
				});
				$(".btn").click(function(){
					var Wparent = window.parent.document,
						flag = $("#choose_form").valid();
					if (!flag) {  
						//alert("没有通过验证");  
						return;  
					}else{
						var html,
							googsName = $("select[name='googs']").find("option:selected").text(),
							goodsId = $("select[name='googs']").find("option:selected").val(),
							price = $("select[name='googs']").find("option:selected").attr("data-price"),
							staffId = $(".choose_span").find(".curr").prop("id"),
							staff = $(".choose_span").find(".curr").text();
							if(staff==null||staff==""||staff=="undefined"){
								staff="-";
							}
							if(staffId==null||staffId==""||staffId=="undefined"){
								staffId="";
							}
						html = "<li class='data_goods'><span>"+googsName+"</span>，本商品价值<em class='goods_pic'>"+price+"元</em>，销售：<span>"+staff+"</span><span class='del_spend'>删除<i class='fa fa-close'></i></span></li>";
						$("iframe[name='cont_box']",Wparent).contents().find(".spend_info ul").append(html);
						var list = $("iframe[name='cont_box']",Wparent).contents().find(".spend_info ul li"),
							picArr = [0,0],total,totalu;
						$(list).each(function(){
							var goodsPic = $(this).find(".goods_pic").text(),
								severPic = $(this).find(".sever_pic").text(),
								severUpic = $(this).find(".sever_upic").text();
							if(goodsPic==null||goodsPic=="undefind"||goodsPic==""){
								goodsPic = 0;
							}
							if(severPic==null||severPic=="undefind"||severPic==""){
								severPic = 0;
							}
							if(severUpic==null||severUpic=="undefind"||severUpic==""){
								severUpic = 0;
							}
							total = parseInt(goodsPic)+parseInt(severPic);
							totalu = parseInt(goodsPic)+parseInt(severUpic);
							totalAll = picArr[0]+total;
							totaluAll = picArr[1]+totalu;
							picArr = [totalAll,totaluAll];
						});
						$("iframe[name='cont_box']",Wparent).contents().find(".spend_info .totalpic").text(picArr[0]+"元");
						$("iframe[name='cont_box']",Wparent).contents().find(".spend_info .totalupic").text(picArr[1]+"元");
						$("iframe[name='cont_box']",Wparent).contents().find(".spend_info",Wparent).show();
						var googsData = {"goodsId":goodsId,"staffId":staffId};
						window.parent.frames["cont_box"].goodsData.push(googsData);
						$(".tip_bg",Wparent).remove();
						$(".tip_box",Wparent).remove();
					};
				
				});
			});
		</script>
	</body>
</html>

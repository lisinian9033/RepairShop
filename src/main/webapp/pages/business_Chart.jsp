<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>业绩报表</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>业绩报表</h2>
			<div class="cont_box">
				<!--周、月-->
				<select>
					<option>最近一周</option>
					<option>最近一月</option>
				</select>
				<!--canvas图标start-->
				<div id="stock_chart" style="width:90%;height:400px"></div>
			</div>
			
				
		</div>
		<!--javascript include-->
		<script src="${pageContext.request.contextPath }/js/jquery-2.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script>
		<script src="${pageContext.request.contextPath }/cdn.bootcss.com/echarts/3.1.10/echarts.min.js"></script>
		<script src="js/other.js"></script>
		<script>
			// 基于准备好的dom，初始化echarts实例
			var myChart = echarts.init(document.getElementById('stock_chart'));
			// 显示标题，图例和空的坐标轴
			myChart.setOption({
				title:{
			        text:"营业数据表"
			    },
				grid:{
					top:70,
					bottom:10
				},
				tooltip: {
					trigger:"axis"
				},
			    legend:{
			        data:["开单数量","总营业额","储值卡消费总额"]
			    },
			    toolbox: {
			        show : true,
			        feature : {
			            mark : {show: true},
			            dataView : {show: true, readOnly: false},
			            magicType : {show: true, type: ['line', 'bar']},
			            restore : {show: true},
			            saveAsImage : {show: true}
			        }
			    },
				xAxis: {
					name: "日期",
					type: "category",
					boundaryGap: false,
					splitLine: {
						show: true
					},
					data: []
				},
				yAxis: {
					name: "金额"
				},
				series: [{
					name: "金额",
					type: "line",
					smooth: true, //是否平滑曲线展示
					areaStyle: {
						normal: {
							color: "rgba(165, 210, 240, 0.8)" //区域填充颜色
						}
					},
					markPoint:{
						data:[
							{type:"max",name:"最大值"},  
							{type:"min",name:"最小值"}  
						]
					}, 
					data: []
				}]
			});
		</script>
	</body>
</html>

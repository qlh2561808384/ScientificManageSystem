<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="common.jsp"%>
	</head>
	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="#">首页</a>
				</li>
			</ul>
		</div>

		<div class="mainindex">


			<div class="welinfo">
				<span><img src="${pageContext.request.contextPath}/common/images/sun.png" alt="天气" /> </span>
				<b>${username },你好，欢迎使用本系统</b>
			</div>
 

			<div class="xline"></div>



			<div class="box"></div>

			<div class="welinfo">
				<span><img src="${pageContext.request.contextPath}/common/images/dp.png" alt="提醒" /> </span>
				<b>本系统使用指南</b>
			</div>

			<ul class="infolist">
				<li>
					<span>您可以快速进行信息发布管理操作</span>
				</li>
				<li>
					<span>您可以快速发布信息</span>
				</li>
				<li>
					<span>您可以进行密码修改、账户设置等操作</span>
				</li>
			</ul>

			<div class="xline"></div>
		</div>

	</body>
</html>

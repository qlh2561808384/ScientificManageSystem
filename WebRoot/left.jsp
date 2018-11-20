<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="common.jsp"%>
</head>
<body style="background: #f0f9fd;">
	<div class="lefttop">
		<span></span>系统菜单
	</div>
	<dl class="leftmenu">
		<c:if test="${type == 'admin'}">
			<dd>
				<div class="title">
					<span><img
						src="${pageContext.request.contextPath}/common/images/leftico01.png" />
					</span>用户管理
				</div>
				<ul class="menuson">
					<li class="active"><cite></cite><a
						href="${pageContext.request.contextPath}/admin/User/saveOrUpdate.jsp"
						target="Conframe">增加用户</a><i></i></li>
					<li><cite></cite><a
						href="${pageContext.request.contextPath}/User-getAllUtil.action"
						target="Conframe">查询用户</a><i></i></li>
				</ul>
			</dd>
		</c:if>
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/common/images/leftico05.png" />
				</span>公告管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a
					href="${pageContext.request.contextPath}/Notice-initUtil.action"
					target="Conframe">增加</a><i></i></li>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/Notice-getAllUtil.action"
					target="Conframe">查询</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/common/images/leftico07.png" />
				</span>科研项目管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a
					href="${pageContext.request.contextPath}/Scientific-initUtil.action"
					target="Conframe">增加</a><i></i></li>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/Scientific-getAllUtil.action"
					target="Conframe">查询</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/common/images/leftico03.png" />
				</span>科研成果管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a
					href="${pageContext.request.contextPath}/Fruit-initUtil.action"
					target="Conframe">增加</a><i></i></li>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/Fruit-getAllUtil.action"
					target="Conframe">查询</a><i></i></li>
			</ul>
		</dd>
		<c:if test="${type == 'admin'}">
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/common/images/leftico02.png" />
				</span>科研审查管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a
					href="${pageContext.request.contextPath}/Examination-initUtil.action"
					target="Conframe">增加</a><i></i></li>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/Examination-getAllUtil.action"
					target="Conframe">查询</a><i></i></li>
			</ul>
		</dd>
		</c:if>
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/common/images/leftico04.png" />
				</span>科研信息管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a
					href="${pageContext.request.contextPath}/Info-initUtil.action"
					target="Conframe">增加</a><i></i></li>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/Info-getAllUtil.action"
					target="Conframe">查询</a><i></i></li>
			</ul>
		</dd>
		
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/common/images/leftico06.png" />
				</span>论文管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a
					href="${pageContext.request.contextPath}/Paper-initUtil.action"
					target="Conframe">增加</a><i></i></li>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/Paper-getAllUtil.action"
					target="Conframe">查询</a><i></i></li>
			</ul>
		</dd>
		
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/common/images/leftico08.png" />
				</span>获奖管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a
					href="${pageContext.request.contextPath}/Winning-initUtil.action"
					target="Conframe">增加</a><i></i></li>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/Winning-getAllUtil.action"
					target="Conframe">查询</a><i></i></li>
			</ul>
		</dd>
	</dl>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="../comlist.jsp"%>
		<script type="text/javascript">
			$(function () {
				$(".datepicker").datepicker();
			})
		</script>
	</head>
	<body
		style="margin-left: 4px; margin-top: 2px; width: 99%; height: 99%;">
		
		
		<div class="alert alert-info">
			当前位置
			<b class="tip"></b>用户管理
			<b class="tip"></b>查询界面
		</div>
		
		
		
		<ec:table items="pageModel.list"
			action="${pageContext.request.contextPath}/User-getAllUtil.action"
			imagePath="${pageContext.request.contextPath}/common/img/table/*.gif"
			title="公告列表" width="100%" rowsDisplayed="5" var="tmp">
			<ec:exportXls fileName="User.xls" tooltip="Excel" />
			<ec:row>
				<ec:column property="s_2" title="姓名" />
				<ec:column property="s_3" title="出生日期" />
				<ec:column property="s_4" title="性别" />
				<ec:column property="s_5" title="联系方式" />
				<ec:column property="s_6" title="紧急联系人" />
				<ec:column filterable="false" viewsDenied="xls" alias="id4"
					title="身份类型">
					<c:if test="${tmp.s_11 == 'admin'}">
								管理员
								</c:if>
					<c:if test="${tmp.s_11 != 'admin'}">
								普通用户
								</c:if>
				</ec:column>
				<ec:column sortable="false" filterable="false" viewsDenied="xls"
					alias="id2" title="具体操作">
					<c:if test="${type == 'admin'}">
						<a target="Conframe"
							href="${pageContext.request.contextPath}/User-selectUtil.action?util.id=${tmp.id }">修改
						</a>
						<a target="Conframe"
							href="${pageContext.request.contextPath}/User-deleteUtil.action?util.id=${tmp.id }">删除
						</a>
					</c:if>
					<c:if test="${type != 'admin'}">
						<a target="Conframe"
							href="${pageContext.request.contextPath}/User-selectUtil.action?util.id=${tmp.id }">查看
						</a>
					</c:if>
				</ec:column>
			</ec:row>
		</ec:table>
	</body>
</html>

			 
							 
					  
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
	<body style="margin-left: 4px;margin-top: 2px;width: 99%;height: 99%;">
		<div class="alert alert-info">
			��ǰλ��
			<b class="tip"></b>����������
			<b class="tip"></b>��ѯ����
		</div>
		<div class="alert alert-info">
			ͨ��ͳ�ƣ�${count}
		</div>
		<ec:table items="pageModel.list"
			action="${pageContext.request.contextPath}/Examination-getAllUtil.action"
			imagePath="${pageContext.request.contextPath}/common/img/table/*.gif"
			title="��������б�" width="100%" rowsDisplayed="5" var="tmp"><ec:exportXls fileName="Examination.xls" tooltip="Excel" /><ec:row>
				<ec:column property="fruit.s_0" title="���гɹ�" />
				<ec:column property="s_0" title="�������" />
				<ec:column property="s_1" title="���ʱ��" />
				<ec:column property="s_2" title="״̬" />
				<ec:column property="s_3" title="�����" />
				<ec:column sortable="false" filterable="false" viewsDenied="xls"
					alias="id2" title="�������">
						<c:if test="${type == 'admin'}">
							<a target="Conframe"
								href="${pageContext.request.contextPath}/Examination-selectUtil.action?util.id=${tmp.id }">�޸�
							</a>
							<a target="Conframe"
										href="${pageContext.request.contextPath}/Examination-deleteUtil.action?util.id=${tmp.id }">ɾ��
							</a>
						</c:if>
								<c:if test="${type != 'admin'}">
									<a target="Conframe"
										href="${pageContext.request.contextPath}/Examination-selectUtil.action?util.id=${tmp.id }">�鿴
							</a>
						</c:if>
				</ec:column>
				</ec:row>
		</ec:table>
	</body>
</html>

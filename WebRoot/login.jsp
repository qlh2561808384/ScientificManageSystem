<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title><spring:message code="system_name" /></title>


		<script type="text/javascript">
	function flushCode() {
		document.getElementById("codeimg").src = "imageServlet.servlet?random="
				+ Math.random();
	}
	$(function() {
		$('.loginbox').css({
			'position' : 'absolute',
			'left' : ($(window).width() - 692) / 2
		});
		$(window).resize(function() {
			$('.loginbox').css({
				'position' : 'absolute',
				'left' : ($(window).width() - 692) / 2
			});
		})
	});
</script>
	</head>
	<body
		style="background-color: #1c77ac; background-image: url(images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">

		<div id="mainBody">
			<div id="cloud1" class="cloud"></div>
			<div id="cloud2" class="cloud"></div>
		</div>


		<div class="logintop">
			<span  > <spring:message code="system_name" /> </span>
		</div>
		<form action="login.action" method="post">
			<div class="loginbody">

				<span class="systemlogo"><span  style="margin-left: 420px;font-size: 40px;color:#FFFFFF;"> 欢迎光临<spring:message code="system_name" /> </span>
	</span>

				<div class="loginbox">

					<ul>
						<li>
							<input name="util.s_0" type="text" class="loginuser"
								onclick="JavaScript:this.value=''" />
						</li>
						<li>
							<input name="util.s_1" type="password" class="loginpwd"
								onclick="JavaScript:this.value=''" />
						</li>
						<li>
							<input name="code" type="text" class="logincd"
								onclick="JavaScript:this.value=''" />
							&nbsp;&nbsp;&nbsp;
							<img id="safecode" src="imageServlet" onClick="flushCode()" />
						</li>
						<li>
							<input name="" type="submit" class="loginbtn" value="登录" />
							<label>
							</label>
							<label>
								<a href="register.jsp">新用户注册？</a>
							</label>

							<font color=red><s:property value="errMsg" /> </font>
						</li>
					</ul>


				</div>

			</div>


		</form>


	</body>
</html>

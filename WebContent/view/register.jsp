<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>天府看图网</title> 
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<script type="text/javascript" src="<%=basePath %>images/login/login.js"></script>
<link href="<%=basePath %>css/login/login2.css" rel="stylesheet" type="text/css" />
</head>
<body style="background: #fff url(<%=basePath %>images/1.jpg) 50% 0 no-repeat;">
<h1>
		看图网<sup>2017</sup>
	</h1>
	<div class="login" style="margin-top: 50px;">
		<div class="header">
			<div class="switch" id="switch">
				<a class="switch_btn_focus" id="switch_qlogin" href="<%=basePath %>view/login.jsp"
					tabindex="7">快速登录</a> <a class="switch_btn" id="switch_login"
					href="<%=basePath %>view/register.jsp" tabindex="8">快速注册</a>
				<div class="switch_bottom" id="switch_bottom"
					style="position: absolute; width: 64px; left: 153px;"></div>
			</div>

		</div>

		<!--注册-->

		
		<div class="web_login">
			<form name="form2" id="regUser" accept-charset="utf-8"
				action="<%=basePath %>insertusernotbyid" method="post">
				<ul class="reg_form" id="reg-ul">
					<div id="userCue" class="cue">
					<c:choose>  
  						<c:when test="${empty msg}"> 请输入正确格式 </c:when>  
   						<c:when test="${not empty msg}">${msg }  </c:when>  
					</c:choose> 
					</div>
					
					<li><label for="userName" class="input-tips2">用户名：</label>
						<div class="inputOuter2">
							<input type="text" id="userName" name="userName" maxlength="16"
								class="inputstyle2" />
						</div></li>
					<li><label for="passwd" class="input-tips2">密码：</label>
						<div class="inputOuter2">
							<input type="password" id="userPwd" name="userPwd" maxlength="16"
								class="inputstyle2" />
						</div></li>
					<li>
						<div class="inputArea">
							<input type="submit" id="reg"
								style="margin-top: 10px; margin-left: 85px;" class="button_blue"
								value="同意协议并注册" /> <a href="#" class="zcxy" target="_blank">注册协议</a>
						</div>
					</li>
					<div class="cl"></div>
				</ul>
			</form>
		</div>
	</div>
	</div>
	<div class="jianyi">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站</div>
</body>
</html>
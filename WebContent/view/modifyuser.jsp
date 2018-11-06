<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!--- basic page needs
   ================================================== -->
<meta charset="utf-8">
<title>Standard Format Post - Abstract</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- mobile specific metas
   ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
   ================================================== -->
<link rel="stylesheet" href="<%=basePath%>css/index/base.css">
<link rel="stylesheet" href="<%=basePath%>css/index/vendor.css">
<link rel="stylesheet" href="<%=basePath%>css/index/main.css">


<!-- script
   ================================================== -->
    <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    
  

<!-- favicons
	================================================== -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="<%=basePath%>images/index/favicon.ico"
	type="image/x-icon">

</head>

<body id="top">

	<!-- header 
   ================================================== -->
	<header class="short-header">

	<div class="gradient-block"></div>

	<div class="row header-content">

		<div class="logo">
			<a href="index.html">Author</a>
		</div>

		<nav id="main-nav-wrap">
		<ul class="main-navigation sf-menu">
			<li class="current"><a href="<%=basePath%>selectindex?page=1" title="">主页</a></li>
			<li class="has-children"><a href="single-standard.html" title="">博客</a>
				<ul class="sub-menu">
					<li><a href="<%=basePath%>view/blogeditor.jsp">写博客</a></li>
					<li><a href="<%=basePath%>view/searchblogbyname.jsp">搜索博客</a></li>
					<li><a href="single-gallery.html">搜索用户</a></li>
				</ul></li>
			<li><a href="style-guide.html" title="">账号信息</a>
			<ul class="sub-menu">
					<li><a href="<%=basePath%>view/showuserdata.jsp">个人主页</a></li>
					<li><a href="<%=basePath%>view/modifyuser.jsp">密码修改</a></li>
					<li><a href="<%=basePath%>logout">退出登录</a></li>
				</ul></li>
			<li><a href="about.html" title="">关于</a></li>
			<li><a href="contact.html" title="">联系</a></li>
		</ul>
		</nav>
		<!-- end main-nav-wrap -->

		<div class="search-wrap">

			<form role="search" method="get" class="search-form" action="#">
				<label> <span class="hide-content">Search for:</span> <input
					type="search" class="search-field" placeholder="Type Your Keywords"
					value="" name="s" title="Search for:" autocomplete="off">
				</label> <input type="submit" class="search-submit" value="Search">
			</form>

			<a href="#" id="close-search" class="close-btn">Close</a>

		</div>
		<!-- end search wrap -->

		<div class="triggers">
			<a class="search-trigger" href="#"><i class="fa fa-search"></i></a> <a
				class="menu-toggle" href="#"><span>Menu</span></a>
		</div>
		<!-- end triggers -->

	</div>

	</header>
	<!-- end header -->
    
    <div id="content" style="">
    
    <div style='height:10px;margin:0 auto'></div>
    
 	<div style='height:40px;margin:0 auto'></div>
 	<form id="blogcontent"  action="<%=basePath%>modifyuserpwd" method="post">
	
    <h3 align="center" style='height:50px;margin:0 auto'>你的新密码</h3 >
    <input type="hidden" id="username" name="userName" class="username" value="${sessionScope.user.getUserName()}">
    <input type="password" id="blogKeyword" name="userPwd" maxlength="4" class="keyword" style='margin:0 auto;background: #FFFFFF;height:45px;color: #000000'/>
    <div style='height:40px;margin:0 auto'></div>
<div align="center" style='margin:0 auto'>
		<input  type="submit"  value="上传" id="sub"/></div>
	</form>
	</div>
	
	<!-- footer
   ================================================== -->
	<footer>

	<div class="footer-main">

		<div class="row">

			<div class="col-four tab-full mob-full footer-info">

				<h4>左下标题1</h4>

				<p>
					左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1左下内容1
				</p>

			</div>
			<!-- end footer-info -->

			<div class="col-two tab-1-3 mob-1-2 site-links">

				<h4>友情链接</h4>

				<ul>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#">Terms</a></li>
					<li><a href="#">Privacy Policy</a></li>
				</ul>

			</div>
			<!-- end site-links -->

			<div class="col-two tab-1-3 mob-1-2 social-links">

				<h4>分享</h4>

				<ul>
					<li><a href="#">Twitter</a></li>
					<li><a href="#">Facebook</a></li>
					<li><a href="#">Dribbble</a></li>
					<li><a href="#">Google+</a></li>
					<li><a href="#">Instagram</a></li>
				</ul>

			</div>
			<!-- end social links -->

			<div class="col-four tab-1-3 mob-full footer-subscribe">

				<h4>右下标题1</h4>

				<p>随便写点啥</p>

				<div class="subscribe-form">

					<form id="mc-form" class="group" novalidate="true">

						<input type="email" value="" name="dEmail" class="email"
							id="mc-email" placeholder="这是一个好看的文本框" required=""> <input
							type="submit" name="subscribe"> <label for="mc-email"
							class="subscribe-message"></label>

					</form>

				</div>

			</div>
			<!-- end subscribe -->

		</div>
		<!-- end row -->

	</div>
	<!-- end footer-main -->

	<div class="footer-bottom">
		<div class="row">

			<div class="col-twelve">
				<div class="copyright">
					<span>© Copyright Abstract styleshout 2018</span> <span>More
						Templates <a href="http://www.google.com/" target="_blank"
						title="不存在的网站">不存在的网站</a> - Collect from <a
						href="http://www.baidu.com/" title="百度" target="_blank">我自己</a>
					</span>
				</div>

				<div id="go-top">
					<a class="smoothscroll" title="Back to Top" href="#top"><i
						class="icon icon-arrow-up"></i></a>
				</div>
			</div>

		</div>
	</div>
	<!-- end footer-bottom --> </footer>
	<script src="<%=basePath%>js/index/jquery-2.1.3.min.js"></script>
	<script src="<%=basePath%>js/index/plugins.js"></script>
	<script src="<%=basePath%>js/index/jquery.appear.js"></script>
	<script src="<%=basePath%>js/index/main.js"></script>
</body>

</html>
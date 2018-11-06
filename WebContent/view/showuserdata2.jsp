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
<link rel="stylesheet" href="<%=basePath%>/css/index/main.css">
<link rel="stylesheet" href="<%=basePath%>css/user/common.css">
<link rel="stylesheet" href="<%=basePath%>css/user/iconfont.css">
<link rel="stylesheet" href="<%=basePath%>css/user/main.css">
<link rel="stylesheet" href="<%=basePath%>css/user/weike.css">

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
			<li class="current"><a href="<%=basePath%>selectindex?page=1"
				title="">主页</a></li>
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
		<div id="dakuag"
			style="background: #fff url(../images/4.jpg); width: 100%; height: 300px; position: relative;">
			<div id="xiaokuang"
				style="width: 120px; height: 120px; margin: auto; position: absolute; top: 0; left: 0; bottom: 0; right: 0; background: #fff url(../../headimages/1.jpg)">
			</div>
			<div id="username"
				style="width: 120px; height: 120px; margin: auto; position: absolute; top: 0; left: 0; bottom: -300px; right: 0">昵称：${user.getUserName()}</div>
		</div>
	</div>

	<div style="height: 40px"></div>






	<section class="container home">
	<div class="row">
		<div class="col-md-9 col-lg-9">
			<div class="class flat showtextdiv">
				<div class="section-header">
					<h2>
						<a target="_blank"
							href="http://shihsf.com/article/selectTAText?ID_=6360">《RJTHDJD》</a>
					</h2>
				</div>
				<div class="empty-item"
					style="text-align: left; padding-left: 20px; width: 1050px">
					<i class="iconfont icon-yonghu"></i> <span>好人</span> <i
						class="iconfont icon-biao" style="padding-left: 20px"></i> <span>2018-01-18
						13:10:38</span>
					<div
						style="display: inline-block; float: right; padding-right: 30px">
					</div>
				</div>
			</div>
			<div class="class flat showtextdiv"></div>
			<div class="class flat showtextdiv"></div>
		</div>
	</div>
	</section>
<script src="<%=basePath%>js/index/jquery-2.1.3.min.js"></script>
	<script src="<%=basePath%>js/index/plugins.js"></script>
	<script src="<%=basePath%>js/index/jquery.appear.js"></script>
	<script src="<%=basePath%>js/index/main.js"></script>
</body>

</html>
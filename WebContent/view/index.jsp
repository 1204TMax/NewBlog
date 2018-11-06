<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>

<!--- basic page needs
   ================================================== -->
<meta charset="utf-8">
<title>Abstract</title>

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
<script src="<%=basePath%>js/index/modernizr.js"></script>
<script src="<%=basePath%>js/index/pace.min.js"></script>

<!-- favicons
	================================================== -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

</head>

<script type="text/javascript">
	var func(){
		window.onload= function(){
		   document.getElementById('selectindex').submit();
		   } 

}
func();
func();
</script>
<body id="top">
	<form action="<%=basePath%>selectindex" id=selectindex>
		<input type="hidden" id="page" name="page" value="1" />
	</form>

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
					<li><a href="<%=basePath%>view/searchuser.jsp">搜索用户</a></li>
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


	<!-- masonry
   ================================================== -->
	<section id="bricks">

	<div class="row masonry">

		<!-- brick-wrapper -->
		<div class="bricks-wrapper">

			<div class="grid-sizer"></div>

			<div class="brick entry featured-grid animate-this">
				<div class="entry-content">
					<div id="featured-post-slider" class="flexslider">
						<ul class="slides">

							<li>
								<div class="featured-post-slide">

									<div class="post-background"
										style="background-image:url('<%=basePath%>images/index/thumbs/featured/featured-1.jpg');"></div>

									<div class="overlay"></div>

									<div class="post-content">
										<ul class="entry-meta">
											<li>欢迎来到天府Blog</li>
										</ul>

										<h1 class="slide-title">
											<a href="<%=basePath%>view/index.jsp" title="">欢迎来到天府Blog</a>
										</h1>
									</div>

								</div>
							</li>
							<!-- /slide -->

							<li>
								<div class="featured-post-slide">

									<div class="post-background"
										style="background-image:url('<%=basePath%>images/index/thumbs/featured/featured-2.jpg');"></div>

									<div class="overlay"></div>

									<div class="post-content">
										<ul class="entry-meta">
											<li>您可以浏览公开的博客并评论</li>
										</ul>

										<h1 class="slide-title">
											<a href="<%=basePath%>view/index.jsp" title="">您可以浏览博客并评论</a>
										</h1>
									</div>

								</div>
							</li>
							<!-- /slide -->

							<li>
								<div class="featured-post-slide">

									<div class="post-background"
										style="background-image:url('<%=basePath%>images/index/thumbs/featured/featured-3.jpg');;"></div>

									<div class="overlay"></div>

									<div class="post-content">
										<ul class="entry-meta">
											<li>您可以自己撰写博客</li>
										</ul>

										<h1 class="slide-title">
											<a href="<%=basePath%>view/index.jsp" title="">您可以自己撰写博客</a>
										</h1>
									</div>

								</div>
							</li>
							<!-- end slide -->

						</ul>
						<!-- end slides -->
					</div>
					<!-- end featured-post-slider -->
				</div>
				<!-- end entry content -->
			</div>

			<article class="brick entry format-standard animate-this">

			<div class="entry-thumb">
				<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(0)}"
					class="thumb-link"> <img
					src="${srcs.get(0) }${photonames.get(0)}" alt="building">

				</a>
			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(0) }</a>

						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(0)}">${titles.get(0)}</a>
					</h1>

				</div>
				<div class="entry-excerpt">${descriptions.get(0)}</div>
			</div>

			</article>
			<!-- end article -->

			<article class="brick entry format-standard animate-this">

			<div class="entry-thumb">
				<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(1)}"
					class="thumb-link"> <img
					src="${srcs.get(1) }${photonames.get(1)}" alt="ferris wheel">
				</a>
			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(1) }</a>
						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(1)}">${titles.get(1)}
						</a>
					</h1>

				</div>
				<div class="entry-excerpt">${descriptions.get(1)}</div>
			</div>

			</article>
			<!-- end article -->

			<div class="copyrights">
				Collect from <a href="http://www.google.com/">打不开的网站</a>
			</div>

			<!-- format audio here -->
			<article class="brick entry format-audio animate-this">

			<div class="entry-thumb">
				<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(2)}"
					class="thumb-link"> <img
					src="${srcs.get(2) }${photonames.get(2)}" alt="concert">
				</a>
			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(2) }</a>
						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(2)}">${titles.get(2)}</a>
					</h1>

				</div>
				<div class="entry-excerpt">${descriptions.get(2)}</div>
			</div>

			</article>
			<!-- /article -->

			<article class="brick entry format-quote animate-this">

			<div class="entry-thumb">
				<blockquote>
					<p>温馨提示：您可以注册一个用户，免费撰写自己的博客</p>
				</blockquote>
			</div>

			</article>
			<!-- end article -->

			<article class="brick entry animate-this">

			<div class="entry-thumb">
				<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(3)}"
					class="thumb-link"> <img
					src="${srcs.get(3) }${photonames.get(3)}" alt="Shutterbug">
				</a>
			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(3) }</a>
						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(3)}">${titles.get(3)}</a>
					</h1>

				</div>
				<div class="entry-excerpt">
					<%=basePath%>selectblogbyid?blogId=${blogids.get(3)}
				</div>
			</div>

			</article>
			<!-- end article -->

			<article class="brick entry animate-this">

			<div class="entry-thumb">
				<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(4)}"
					class="thumb-link"> <img src="${srcs.get(4) }${photonames.get(4)}"
					alt="USAF rocket">
				</a>
			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(0) }</a>
						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(4)}">${titles.get(4)}</a>
					</h1>

				</div>
				<div class="entry-excerpt">${descriptions.get(4)}</div>
			</div>

			</article>
			<!-- end article -->

			<article class="brick entry format-gallery group animate-this">

			<div class="entry-thumb">

				<div class="post-slider flexslider">
					<ul class="slides">
						<li><img src="${srcs.get(5) }${photonames.get(5)}"></li>
					</ul>
				</div>

			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(5) }</a>
						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(5)}">${titles.get(5)}</a>
					</h1>

				</div>
				<div class="entry-excerpt">${descriptions.get(5)}</div>
			</div>

			</article>
			<!-- end article -->

			<article class="brick entry format-link animate-this">

			<div class="entry-thumb">
				<div class="link-wrap">
					<p>温馨提示2：您可以浏览所有公开的博客</p>

				</div>
			</div>

			</article>
			<!-- end article -->


			<article class="brick entry animate-this">

			<div class="entry-thumb">
				<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(6)}"
					class="thumb-link"> <img
					src="${srcs.get(6) }${photonames.get(6)}" alt="Pattern">
				</a>
			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(6) }</a>
						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(6)}">题目5</a>
					</h1>

				</div>
				<div class="entry-excerpt">${descriptions.get(6)}</div>
			</div>

			</article>
			<!-- end article -->

			<article class="brick entry format-video animate-this">

			<div class="entry-thumb video-image">
				<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(7)}"
					data-lity> <img src="${srcs.get(7) }${photonames.get(7)}"
					alt="bokeh">
				</a>
			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(7) }</a>
						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(7)}">${titles.get(7)}</a>
					</h1>

				</div>
				<div class="entry-excerpt">${descriptions.get(7)}</div>
			</div>

			</article>
			<!-- end article -->

			<article class="brick entry animate-this">

			<div class="entry-thumb">
				<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(8)}"
					class="thumb-link"> <img
					src="${srcs.get(8) }${photonames.get(8)}" alt="Lighthouse">
				</a>
			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(8) }</a>
						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(8)}">${titles.get(8)}</a>
					</h1>

				</div>
				<div class="entry-excerpt">${descriptions.get(8)}</div>
			</div>

			</article>
			<!-- end article -->

			<article class="brick entry animate-this">

			<div class="entry-thumb">
				<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(9)}"
					class="thumb-link"> <img
					src="${srcs.get(9) }${photonames.get(9)}" alt="Liberty">
				</a>
			</div>

			<div class="entry-text">
				<div class="entry-header">

					<div class="entry-meta">
						<span class="cat-links"> <a>作者:${usernames.get(9) }</a>
						</span>
					</div>

					<h1 class="entry-title">
						<a href="<%=basePath %>selectblogbyid?blogId=${blogids.get(9)}">题目7</a>
					</h1>

				</div>
				<div class="entry-excerpt">${descriptions.get(9)}</div>
			</div>

			</article>
			<!-- end article -->

		</div>
		<!-- end brick-wrapper -->

	</div>
	<!-- end row -->

	<div class="row">

		<nav class="pagination"> <span
			class="page-numbers prev inactive">Prev</span> <span
			class="page-numbers current">1</span> <a href="#"
			class="page-numbers">2</a> <a href="#" class="page-numbers">3</a> <a
			href="#" class="page-numbers">4</a> <a href="#" class="page-numbers">5</a>
		<a href="#" class="page-numbers">6</a> <a href="#"
			class="page-numbers">7</a> <a href="#" class="page-numbers">8</a> <a
			href="#" class="page-numbers">9</a> <a href="#"
			class="page-numbers next">Next</a> </nav>

	</div>

	</section>
	<!-- end bricks -->


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

	<!--
   <div id="preloader"> 
    	<div id="loader"></div>
   </div> 
-->

	<!-- Java Script
   ================================================== -->
	<script src="<%=basePath%>js/index/jquery-2.1.3.min.js"></script>
	<script src="<%=basePath%>js/index/plugins.js"></script>
	<script src="<%=basePath%>js/index/jquery.appear.js"></script>
	<script src="<%=basePath%>js/index/main.js"></script>

</body>

</html>
</html>
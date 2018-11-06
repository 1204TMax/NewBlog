<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<title>天府看图网</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- mobile specific metas
   ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
   ================================================== -->
<link rel="stylesheet" href="<%=basePath %>css/index/base.css">

<link rel="stylesheet" href="<%=basePath %>css/index/vendor.css">

<link rel="stylesheet" href="<%=basePath %>css/index/main.css">
<script src="<%=basePath%>js/index/modernizr.js"></script>
<script src="<%=basePath%>js/index/pace.min.js"></script>
<!-- script
   ================================================== -->
<!-- <script src="../js/index/modernizr.js"></script>
<script src="../js/index/pace.min.js"></script> -->

<!-- favicons
	================================================== -->
<link rel="shortcut icon" href="<%=basePath %>images/index/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="<%=basePath %>images/indexfavicon.ico" type="image/x-icon">

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


	<!-- content
   ================================================== -->
	<section id="content-wrap" class="blog-single">
		<div class="row">
			<div class="col-twelve">

				<article class="format-standard">

					<div class="content-media"></div>
					<div class="content-media">						
						<img src="${srcs.get(0) }${photonames.get(0)}">
						<img src="${src}${photoname}	">
					</div>
					<div class="primary-content">
					<h1 class="entry-title" >${blog.blogTitle }</h1>
					<ul class="entry-meta">
							<li class="date" >作者:</li>						
							<li class="cat">${user.getUserName() }</a></li>				
						</ul>	
						<p class="lead">
						${blog.blogContent }
						</p>
						<div class="author-profile"></div>
						<!-- end author-profile -->

					</div>
					<!-- end entry-primary -->

				</article>


			</div>
			<!-- end col-twelve -->
		</div>
		<!-- end row -->

		<div class="comments-wrap">
			<div id="comments" class="row">
				<div class="col-full">

					<h3>5 Comments</h3>

					<!-- commentlist -->
					<ol class="commentlist">

						<li class="depth-1">

							<div class="avatar">
								<img width="50" height="50" class="avatar"
									src="<%=basePath %>images/index/avatars/user-01.jpg" alt="">
							</div>

							<div class="comment-content">

								<div class="comment-info">
									<cite>Itachi Uchiha</cite>

									<div class="comment-meta">
										<time class="comment-time" datetime="2014-07-12T23:05">Jul
											12, 2014 @ 23:05</time>
										<span class="sep">/</span><a class="reply" href="#">Reply</a>
									</div>
								</div>

								<div class="comment-text">
									<p>Adhuc quaerendum est ne, vis ut harum tantas noluisse,
										id suas iisque mei. Nec te inani ponderum vulputate, facilisi
										expetenda has et. Iudico dictas scriptorem an vim, ei alia
										mentitum est, ne has voluptua praesent.</p>
								</div>

							</div>

						</li>

						<li class="thread-alt depth-1">

							<div class="avatar">
								<img width="50" height="50" class="avatar"
									src="<%=basePath %>images/index/avatars/user-04.jpg" alt="">
							</div>

							<div class="comment-content">

								<div class="comment-info">
									<cite>John Doe</cite>

									<div class="comment-meta">
										<time class="comment-time" datetime="2014-07-12T24:05">Jul
											12, 2014 @ 24:05</time>
										<span class="sep">/</span><a class="reply" href="#">Reply</a>
									</div>
								</div>

								<div class="comment-text">
									<p>Sumo euismod dissentiunt ne sit, ad eos iudico qualisque
										adversarium, tota falli et mei. Esse euismod urbanitas ut sed,
										et duo scaevola pericula splendide. Primis veritus
										contentiones nec ad, nec et tantas semper delicatissimi.</p>
								</div>

							</div>

							<ul class="children">

								<li class="depth-2">

									<div class="avatar">
										<img width="50" height="50" class="avatar"
											src="<%=basePath %>images/index/avatars/user-03.jpg" alt="">
									</div>

									<div class="comment-content">

										<div class="comment-info">
											<cite>Kakashi Hatake</cite>

											<div class="comment-meta">
												<time class="comment-time" datetime="2014-07-12T25:05">Jul
													12, 2014 @ 25:05</time>
												<span class="sep">/</span><a class="reply" href="#">Reply</a>
											</div>
										</div>

										<div class="comment-text">
											<p>Duis sed odio sit amet nibh vulputate cursus a sit
												amet mauris. Morbi accumsan ipsum velit. Duis sed odio sit
												amet nibh vulputate cursus a sit amet mauris</p>
										</div>

									</div>

									<ul class="children">

										<li class="depth-3">

											<div class="avatar">
												<img width="50" height="50" class="avatar"
													src="<%=basePath %>images/index/avatars/user-04.jpg" alt="">
											</div>

											<div class="comment-content">

												<div class="comment-info">
													<cite>John Doe</cite>

													<div class="comment-meta">
														<time class="comment-time" datetime="2014-07-12T25:15">July
															12, 2014 @ 25:15</time>
														<span class="sep">/</span><a class="reply" href="#">Reply</a>
													</div>
												</div>

												<div class="comment-text">
													<p>Investigationes demonstraverunt lectores legere me
														lius quod ii legunt saepius. Claritas est etiam processus
														dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
												</div>

											</div>

										</li>

									</ul>

								</li>

							</ul>

						</li>

						<li class="depth-1">

							<div class="avatar">
								<img width="50" height="50" class="avatar"
									src="<%=basePath %>images/index/avatars/user-02.jpg" alt="">
							</div>

							<div class="comment-content">

								<div class="comment-info">
									<cite>Shikamaru Nara</cite>

									<div class="comment-meta">
										<time class="comment-time" datetime="2014-07-12T25:15">July
											12, 2014 @ 25:15</time>
										<span class="sep">/</span><a class="reply" href="#">Reply</a>
									</div>
								</div>

								<div class="comment-text">
									<p>Typi non habent claritatem insitam; est usus legentis in
										iis qui facit eorum claritatem.</p>
								</div>

							</div>

						</li>

					</ol>
					<!-- Commentlist End -->

					<!-- respond -->
					<div class="respond">

						<h3>Leave a Comment</h3>

						<form name="contactForm" id="contactForm" method="post" action="">
							<fieldset>

								<div class="form-field">
									<input name="cName" type="text" id="cName" class="full-width"
										placeholder="Your Name" value="">
								</div>

								<div class="form-field">
									<input name="cEmail" type="text" id="cEmail" class="full-width"
										placeholder="Your Email" value="">
								</div>

								<div class="form-field">
									<input name="cWebsite" type="text" id="cWebsite"
										class="full-width" placeholder="Website" value="">
								</div>

								<div class="message form-field">
									<textarea name="cMessage" id="cMessage" class="full-width"
										placeholder="Your Message"></textarea>
								</div>

								<button type="submit" class="submit button-primary">Submit</button>

							</fieldset>
						</form>
						<!-- Form End -->

					</div>
					<!-- Respond End -->

				</div>
				<!-- end col-full -->
			</div>
			<!-- end row comments -->
		</div>
		<!-- end comments-wrap -->

	</section>
	<!-- end content -->


	<!-- footer
   ================================================== -->
	<footer>

		<div class="footer-main">

			<div class="row">

				<div class="col-four tab-full mob-full footer-info">

					<h4>About Our Site</h4>

					<p>Lorem ipsum Ut velit dolor Ut labore id fugiat in ut fugiat
						nostrud qui in dolore commodo eu magna Duis cillum dolor officia
						esse mollit proident Excepteur exercitation nulla. Lorem ipsum In
						reprehenderit commodo aliqua irure labore.</p>

				</div>
				<!-- end footer-info -->

				<div class="col-two tab-1-3 mob-1-2 site-links">

					<h4>Site Links</h4>

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

					<h4>Social</h4>

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

					<h4>Subscribe</h4>

					<p>Keep yourself updated. Subscribe to our newsletter.</p>

					<div class="subscribe-form">

						<form id="mc-form" class="group" novalidate="true">

							<input type="email" value="" name="dEmail" class="email"
								id="mc-email" placeholder="Type &amp; press enter" required="">

							<input type="submit" name="subscribe"> <label
								for="mc-email" class="subscribe-message"></label>

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
						<span>© Copyright Abstract 2016</span> <span>More Templates
							<a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
							- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
							target="_blank">网页模板</a>
						</span>
					</div>

					<div id="go-top">
						<a class="smoothscroll" title="Back to Top" href="#top"><i
							class="icon icon-arrow-up"></i></a>
					</div>
				</div>

			</div>
		</div>
		<!-- end footer-bottom -->

	</footer>

	

	<!-- Java Script
   ================================================== -->

	<script src="<%=basePath%>js/index/jquery-2.1.3.min.js"></script>
	<script src="<%=basePath%>js/index/plugins.js"></script>
	<script src="<%=basePath%>js/index/jquery.appear.js"></script>
	<script src="<%=basePath%>js/index/main.js"></script>
</body>
</html>
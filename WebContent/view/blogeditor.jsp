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
	
	<!-- end header -->
    
    <div id="content" style="">
    
    
    
 	
 	<form id="blogcontent" action="&lt;%=basePath%&gt;insertblog" method="post">
    <h3 align="center" style="height:50px;margin:0 auto">你的标题:</h3>
    
    <input type="text" id="blogTitle" name="blogTitle" maxlength="20" class="title" style="margin:0 auto;background: #FFFFFF;height:45px;color: #000000 ">
    
	
	
    
    
    
    
	
	
    
	
	
    
    
    
    <div style="height:20px;margin:0 auto"></div>
    
    <div id="test" align="center" style="height:50px;margin:0 auto"><h3>你的博文内容</h3></div>
    
    
    <div style="width:70%;margin:0 auto">
    
		<div id="div1" name="blogContent">
		<div style="background-color:#f1f1f1; border:1px solid #ccc;" class="w-e-toolbar" id="toolbar-elem12047584160883962"><div class="w-e-menu" style="z-index:10001;"><i class="w-e-icon-header"><i></i></i></div><div class="w-e-menu" style="z-index:10001;">
            <i class="w-e-icon-bold"><i>
        </i></i></div><div class="w-e-menu" style="z-index:10001;">
            <i class="w-e-icon-italic"><i>
        </i></i></div><div class="w-e-menu" style="z-index:10001;">
            <i class="w-e-icon-underline"><i>
        </i></i></div></div><div style="border:1px solid #ccc; border-top:none; height:300px; z-index:10000;" class="w-e-text-container"></div></div>
		 <div style="display:none"><textarea id="text1" name="blogContent" style="width:100%; height:200px;"></textarea></div>
		  <div style="height:20px;margin:0 auto"></div>
	<div align="center"><input type="submit" value="提交"></div>
	
	</div></form>
	
	<script type="text/javascript" src="js/wangEditor/wangEditor.js"></script>
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/wangEditor/wangEditor.min.js"></script>
	
	<script type="text/javascript">
		var E = window.wangEditor
		var editor = new E('#div1')
		editor.customConfig.zIndex = 100
		// 自定义菜单配置
    	editor.customConfig.menus = [
        'head',
        'bold',
        'italic',
        'underline'
    ]
		var E = window.wangEditor
        var editor = new E('#div1')
		 editor.customConfig.menus = [
		        'head',
		        'bold',
		        'italic',
		        'underline'
		    ]
		
		var $text1 = $('#text1')
		editor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            $text1.val(html)
        }
		editor.create()
		$text1.val(editor.txt.html())
	</script>
	
	
	
	<!-- footer
   ================================================== -->
	
	<script src="&lt;%=basePath%&gt;js/index/jquery-2.1.3.min.js"></script>
	<script src="&lt;%=basePath%&gt;js/index/plugins.js"></script>
	<script src="&lt;%=basePath%&gt;js/index/jquery.appear.js"></script>
	<script src="&lt;%=basePath%&gt;js/index/main.js"></script>


</div>

</body>

</html>
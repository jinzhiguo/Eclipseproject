<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/Common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../Res/css/style.css" rel="stylesheet" type="text/css" />
<script src="../Res/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
</head>
<body style="background:#0098DD">
    <div class="topleft">
    	<a target="_parent"><img src="../Res/images/top_logo.png" width="820px" title="系统首页" /></a>
    </div>
    <div class="topright">    
	    <ul>
			<li><span class="userimage">欢迎admin</span></li>
		    <li><a href="login.html" target="_parent">退出</a></li>
	    </ul>
    </div>
</body>
</html>
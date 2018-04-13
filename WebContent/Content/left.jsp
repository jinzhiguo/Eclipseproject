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
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>
</head>
<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>功能导航</div>
	<dl class="leftmenu">
	    <dd>
		    <div class="title">
		    	<span><img src="../Res/images/leftico01.png" /></span>信息管理
		    </div>
	    	<ul class="menuson">
		        <li ><cite></cite><a href="right.html" target="rightFrame">财务动态</a><i></i></li>
		        <li><cite></cite><a href="imgtable.html" target="rightFrame">处室通知</a><i></i></li>
		        <li><cite></cite><a href="form.html" target="rightFrame">处室信息</a><i></i></li>
		        <li><cite></cite><a href="imglist.html" target="rightFrame">人员信息</a><i></i></li>
		        <li><cite></cite><a href="imglist1.html" target="rightFrame">下载中心</a><i></i></li>
	        </ul>    
	    </dd>
	    <dd>
		    <div class="title">
		    	<span><img src="../Res/images/leftico02.png" /></span>系统设置
		    </div>
	    	<ul class="menuson">
		        <li><cite></cite><a href="${ctx}/channel/list.html" target="rightFrame">栏目管理</a><i></i></li>
		        <li><cite></cite><a href="error.html" target="rightFrame">用户管理</a><i></i></li>
	        </ul>     
	    </dd> 
    </dl>
</body>
</html>
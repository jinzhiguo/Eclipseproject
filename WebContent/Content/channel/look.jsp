<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/Common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看栏目</title>
<link href="../Res/css/style.css" rel="stylesheet" type="text/css" />
<script src="../Res/js/jquery.js" type="text/javascript"></script>
</head>
<body>
	<!-- 上部导航 -->
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="index.html">首页</a></li>
			<li><a href="${ctx}/channel/list.html">栏目管理</a></li>
			<li><a style="color: #00a4ac;">查看栏目</a></li>
		</ul>
	</div>
	<!-- 基本信息 -->
	<div class="formbody">
	    <div class="formtitle"><span>基本信息</span></div>
	    <ul class="forminfo">
		    <li><label>栏目名称</label><input name="" type="text" class="dfinput" /><i>栏目名称不能超过30个字符</i></li>
		    <li><label>栏目图标</label><input name="" type="file" class="dfinput" /><i>建议图标大小：64*64</i></li>
		    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="确认保存"/></li>
	    </ul>
    </div>
</body>
</html>
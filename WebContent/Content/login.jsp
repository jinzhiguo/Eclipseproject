<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/Common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${systemTitle }</title>
<link href="${ctx }/Res/css/style.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/Res/css/navi.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx }/Res/js/jquery.js"></script>
<script type="text/javascript" src="${ctx }/Res/js/cloud.js" ></script>
<script type="text/javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
	//加入收藏
	function AddFavorite(sURL, sTitle) {
		sURL = encodeURI(sURL);
		try {
			window.external.addFavorite(sURL, sTitle);
		} catch (e) {
			try {
				window.sidebar.addPanel(sTitle, sURL, "");
			} catch (e) {
				alert("您的浏览器不支持自动加入收藏功能，请使用Ctrl+D进行添加，或手动在浏览器里进行设置！");
			}
		}
	}

	//设为首页
	function SetHome(url) {
		if (document.all) {
			document.body.style.behavior = 'url(#default#homepage)';
			document.body.setHomePage(url);
		} else {
			alert("您的浏览器不支持自动设置页面为首页功能，请您手动在浏览器里设置该页面为首页！");
		}
	}
</script> 
</head>
<body class="bdlogin">
	<div id="mainBody" >
    	<div id="cloud1" class="cloud"></div>
      	<div id="cloud2" class="cloud"></div>
    </div>
    <!-- 登录头部 -->
    <div class="logintop">    
	    <span>欢迎登录移动端后台管理界面平台</span>    
	    <ul>
	    <li><a onclick="SetHome(window.location)"href="javascript:void(0)">设为首页</a></li>
	    <li><a onclick="AddFavorite(window.location,document.title)"href="javascript:void(0)">加入收藏</a></li>
	    </ul>    
    </div>
    <!-- 登录中部 -->
    <form method="post" action="${ctx}/login">
	    <div class="loginbody">
		    <span class="systemlogo"></span> 
		    <div class="loginbox">
			    <ul>
			    	<li><input name="" type="text" class="loginuser" value="admin" onclick="JavaScript:this.value=''"/></li>
			    	<li><input name="" type="text" class="loginpwd" value="密码" onclick="JavaScript:this.value=''"/></li>
			    	<li><input type="submit" class="loginbtn" value="登录"/><label><input name="" type="checkbox" value="" checked="checked" />记住密码</label></li>
			    </ul>
		    </div>
	    </div>
    </form>
    <!-- 登录底部 -->
    <div class="loginbm">技术支持：  北京久其软件股份有限公司</div>
</body>
</html>
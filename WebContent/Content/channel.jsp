<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/Common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>栏目管理</title>
<link href="../Res/css/style.css" rel="stylesheet" type="text/css" />
<script src="../Res/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
	  $(".click").click(function(){
	  $(".tip").fadeIn(200);
	  });
	  
	  $(".tiptop a").click(function(){
	  $(".tip").fadeOut(200);
	});
	
	  $(".sure").click(function(){
	  $(".tip").fadeOut(100);
	});
	
	  $(".cancel").click(function(){
	  $(".tip").fadeOut(100);
	});
	
	});
</script>
</head>
<body>
	<!-- 上部导航 -->
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="index.html">首页</a></li>
			<li><a style="color: #00a4ac;">栏目管理</a></li>
		</ul>
	</div>
	<!-- 中间列表 -->
	<div class="rightinfo">
		<form method="post" action="${ctx}/channel/search.html">
		<div class="tools">
	    	<ul class="toolbar">
		        <li><a href="${ctx}/channel/add.html"><span><img src="../Res/images/add.png" /></span>添加</a></li>
		        <li><a href="${ctx}/channel/modify.html"><span><img src="../Res/images/modify.png" /></span>修改</a></li>
		        <li class="click"><span><img src="../Res/images/delete.png" /></span>删除</li>
		        <li><span><img src="../Res/images/publish.png" /></span>发布</li>
				<li><span><img src="../Res/images/retract.png" /></span>撤回</li>
	        </ul>
	        <ul class="toolbar1">
		    	<label>栏目名称</label><input style="width:250px;" name="titlename" value="${title }"/>
			   	<button class="serch">搜索</button>
        	</ul>
    	</div>
    	</form>
    	<table class="tablelist">
    		<thead>
		    	<tr>
		        <th><input name="" type="checkbox" value="" checked="checked"/></th>
		        <th>编号<i class="sort"><img src="../Res/images/px.gif" /></i></th>
		        <th>栏目名称</th>
		        <th>操作时间</th>
		        <th>状态</th>
		        <th>操作</th>
		        </tr>
        	</thead>
        	<tbody>
        		<tr>
	        		<td><input name="" type="checkbox" value="" /></td>
			        <td>20130908</td>
			        <td>政策法规</td>
			        <td>2013-09-09 15:05</td>
			        <td>已发布</td>
			        <td style="text-align: center;"><a href="${ctx}/channel/look.html" class="tablelink">查看</a><a href="#" class="tablelink"> 删除</a></td>
		        </tr> 
        	</tbody>
    	</table>
    	<div class="pagin">
	    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
	        <ul class="paginList">
	        <li class="paginItem"><a style="width: 31px;"><span class="pagepre"></span></a></li>
	        <li class="paginItem"><a href="javascript:;">首页</a></li>
	        <li class="paginItem"><a href="javascript:;">上一页</a></li>
	        <li class="paginItem"><a href="javascript:;">下一页</a></li>
	        <li class="paginItem"><a href="javascript:;">最后一页</a></li>
	        <li class="paginItem"><a style="width: 31px;"><span class="pagenxt"></span></a></li>
	        </ul>
    	</div>
    	<!-- 消息弹出框 -->
    	<div class="tip">
	    	<div class="tiptop"><span>提示信息</span><a></a></div>
	      	<div class="tipinfo">
	        <span><img src="../Res/images/ticon.png" /></span>
	        <div class="tipright">
		        <p>是否确认对信息的删除 ？</p>
		        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
	        </div>
	        </div>
	        <div class="tipbtn">
	        	<input name="" type="button"  class="sure" value="确定" />&nbsp;
	        	<input name="" type="button"  class="cancel" value="取消" />
	        </div>
   		</div>
   		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
		</script>
	</div>
</body>
</html>
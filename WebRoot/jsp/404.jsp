<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>该页面不存在</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/404.css">

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

</head>
<body>
<div class="auto">
	<div class="container">
		<div class="settings">
			<i class="icon"></i>
			<h4>很抱歉！没有找到您要访问的页面！</h4>
			<p><span id="num">5</span> 秒后将自动跳转到首页</p>
			<div>
				<a href="${pageContext.request.contextPath}/website/index.jsp" title="返回首页" target="_parent">返回首页</a>
				
			</div>
		</div>
	</div>
</div>

<script>
	//倒计时跳转到首页的js代码
	var $_num=$("#num");
	var num=parseInt($_num.html());
	var numId=setInterval(function(){
		num--;
		$_num.html(num);
		if(num===0){
			//跳转地址写在这里
			window.location.href="${pageContext.request.contextPath}/website/index.jsp";
		}
	},1000);
	//返回按钮单击事件
	var reloadPage = $("#reload-btn");
	reloadPage.click(function(e){
		window.history.back();
	});
</script>

</body>


<!-- 前端首页   http://localhost:8080/ZhongMin/website/index.jsp
后端首页：http://localhost:8080/ZhongMin/index.jsp
 -->



</html>
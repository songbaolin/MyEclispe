<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="image/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/Carindex/pc/image/zmlogoicon.png">
<title>二维码页面</title>
<style>
	.aa{ text-align:center; color:#000; font-size:26px;}
	/*.img{position:absolute;bottom:20%;left:0;right:0;margin:auto}*/
	.img{ margin:auto 39%}
	
	p{ text-align:center;}
    a{
     color: red;
     text-decoration: none;
    }
    hr{
    border:dashed 1px #cccccc;  
    }
    #number{
    color: red;
    font-weight: bold;
    }
</style>
<%
  int num=(int)((Math.random()*9+1)*100000); //获得6位随机数
  request.setAttribute("num", num);
 %>
</head>

<body>
	<div>
    
    	<p class="aa">电子兑换卷</p>
        <p>恭喜您，领票成功</p>
        <p>工作人员会尽快与您联系</p>
        <hr/>
		
		<img class="img"  src="${pageContext.request.contextPath}/Carindex/pc/image/code.jpg"/><p>
        <p>兑换码:<span id=number>201803  ${num}</span></p>
        <p>关注二维码,免费领票</p>
         <p>   
         <a href="javascript:" onclick="history.back();window.location.href = document.referrer">返回上一页</a>
         </p>
	</div>


</body>
</html>

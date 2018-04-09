<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${pageContext.request.contextPath}/jsp/main.jsp">首页</a></li>
    </ul>
    </div>
    
    <div class="mainindex">
    
     
    <div class="welinfo">
    <span><img src="${pageContext.request.contextPath}/images/sun.png" alt="天气" /></span>
    <b>${username1}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎使用众民信息管理系统</b>
   
    </div>
   
    <div class="welinfo">
    <span style="color: black; font-size: 10px; font-weight: bolder;">${message}</span>
   
    </div>
    
    <div class="xline"></div>
    
    <ul class="iconlist">
    
    <li><img src="${pageContext.request.contextPath}/images/ico01.png" /><p><a href="${pageContext.request.contextPath}/jsp/add.jsp">管理员选项设置</a></p></li> 
    
    <li><img src="${pageContext.request.contextPath}/images/ico06.png" /><p><a href="userlist.jsp">查询客户信息</a></p></li>             
    </ul>
    
   
    
    <div class="xline"></div>
    <div class="box"></div>
    
    <div class="welinfo">
    <span><img src="${pageContext.request.contextPath}/images/dp.png" alt="提醒" /></span>
    <b>众民信息管理系统使用指南</b>
    </div>
   
    <ul class="umlist">
    <li><a href="#">众民网站购车优势</a></li>
    <li><a href='${pageContext.request.contextPath}/downServlet?filename=众民后台管理系统使用说明.docx'>如何使用网站</a><br></li>
    </ul>
    
    
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
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
<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="main.jsp" target="_parent"><img src="${pageContext.request.contextPath}/images/logo.png" title="系统首页" /></a>
    </div>
  
           
    <div class="topright">    
    <ul>
    <li><span><img src="${pageContext.request.contextPath}/images/help.png" title="帮助"  class="helpimg"/></span><a href="http://www.baidu.com" target="_parent">帮助</a></li>
    <li><a href="${pageContext.request.contextPath}/uc/quit.action" target="_parent">注销</a></li>
    <li><a href="${pageContext.request.contextPath}/uc/quitindex.action" target="_parent">退出</a>
    
         
    </li>
    </ul>
     
    <div class="user">
    <span>${username1}</span>
    
    </div>    
    
    </div>

</body>
</html>
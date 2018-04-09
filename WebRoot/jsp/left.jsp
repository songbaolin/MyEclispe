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
    //导航切换
    $(".menuson li").click(function(){
        $(".menuson li.active").removeClass("active");
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
   
    <div class="lefttop"><span></span>众民汽车后台</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/images/leftico01.png" /></span>管理员信息
    </div>
        <ul class="menuson">     
      
        <li><cite></cite><a href="${pageContext.request.contextPath}/jsp/add.jsp" target="rightFrame">添加管理员</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/jsp/update.jsp" target="rightFrame">修改管理员密码</a><i></i></li>
      <li class="active"  ><cite></cite><a href="selectAdmin.jsp" target="rightFrame">查看管理员列表</a><i></i></li>   
        <li><cite></cite><a href="${pageContext.request.contextPath}/jsp/404.jsp" target="rightFrame">404页面</a><i></i></li>
        </ul>    
    </dd>
    <dd><div class="title"><span><img src="${pageContext.request.contextPath}/images/leftico03.png" /></span>查看用户信息
     
    </div>
    <ul class="menuson">
              
          <li><cite></cite><a href="userlist.jsp" target="rightFrame" >查看全部用户信息</a><i></i></li>
          <li><cite></cite><a href="selectcity.jsp" target="rightFrame" >根据城市查询用户信息</a><i></i></li>
          <li><cite></cite><a href="selectDate.jsp" target="rightFrame" >根据日期查询用户信息</a><i></i></li>
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="${pageContext.request.contextPath}/images/leftico04.png" /></span>垂直购信息查询</div>
    <ul class="menuson">
        <li><cite></cite><a href="${pageContext.request.contextPath}/jsp/customerlist.jsp"  target="rightFrame" >查询客户信息</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/jsp/customerselectDate.jsp"  target="rightFrame" >按日期查询客户信息</a><i></i></li>
    </ul>
    
    </dd>   
    
    </dl>
    
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="UTF-8">
    <title>添加用户</title>
    <meta name="keywords" content="">
    <meta name="content" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/style.css"> 
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
        function checkForm(){
        // 校验用户名:
            var username = document.getElementById("username").value;
            if(username == ''){
                alert("用户名不能为空!");
                return false;
            }
        
        // 校验密码:
            var password = document.getElementById("password").value;
            if(password == ''){
                alert("密码不能为空!");
                return false;
            }
        //  校验新密码
        var newpassword=document.getElementById("newpassword").value;
            if(newpassword == ''){
                alert("新密码不能为空!");
                return false;
            }
            if(newpassword.length>20){
                alert("新密码长度不能超过20");
                return false;
            }
            
            
            
            
            
        //  校验新旧密码是否一样
        var password1 = document.getElementById("password").value;
        var newpassword1=document.getElementById("newpassword").value;
        if(password1==newpassword1){
            alert("新密码与旧密码不能相同！请重试");
            return false;
        
        }
        
        //  校验两次输入的信密码是否一致
        var newpassword1=document.getElementById("newpassword").value;
        var newpassword2=document.getElementById("newpassword2").value;
        if(newpassword1!=newpassword2){
        	alert("新密码两次输入的不一致，请确认重试！");
            return false;
        
        }
        
        
            
        
        }
    
    </script>
    
    
    

</head>
<body>
 <div class="place" style=" margin-top:-10px">
    <span>位置：</span>
    <ul class="placeul">
   
    <li><a href="#">表单</a></li>
    </ul>
    </div>
     <div style="width:350px;margin:0px auto;">
        <form action="${pageContext.request.contextPath}/uc/update.action" class='form'  method="post" onsubmit=" return checkForm()">
            <div class="formtitle"><span>修改密码</span></div>
            <div style="height:45px;line-height:45px;background: #fff;width:350px;padding-left:15px;margin-top: 32px;position: relative;">
                <span class="glyphicon glyphicon-user" style="font-size:18px;vertical-align:middle;top:-3px;color: #999;"></span>&nbsp;&nbsp;&nbsp;
                <input type="text"  id="username" name="zm_name" style="height:45px;border:0;width:297px;"  placeholder="姓名（建议中文）" maxlength="5">
                <span style='position:absolute;right: 0;bottom:-37px;font-size:13px;color: #f00;'></span>
            </div>
            <div style="height:45px;line-height:45px;background: #fff;width:350px;padding-left:15px;margin-top: 32px;position: relative;">
                <span class="glyphicon glyphicon-lock" style="font-size:18px;vertical-align:middle;top:-3px;color: #999;"></span>&nbsp;&nbsp;&nbsp;
                <input type="password" name="zm_password" id="password" style="height:45px;border:0;width:297px;" placeholder="旧密码（必填）" maxlength="11">
                <span style='position:absolute;right: 0;bottom:-37px;font-size:13px;color: #f00;'></span>
            </div>
            <div style="height:45px;line-height:45px;background: #fff;width:350px;padding-left:15px;margin-top: 32px;position: relative;">
                <span class="glyphicon glyphicon-lock" style="font-size:18px;vertical-align:middle;top:-3px;color: #999;"></span>&nbsp;&nbsp;&nbsp;
                <input type="password" name=newpassword  id="newpassword" style="height:45px;border:0;width:297px;" placeholder="新密码（必填）">
                <span style='position:absolute;right: 0;bottom:-37px;font-size:13px;color: #f00;'></span>
            </div>
             <div style="height:45px;line-height:45px;background: #fff;width:350px;padding-left:15px;margin-top: 32px;position: relative;">
                <span class="glyphicon glyphicon-lock" style="font-size:18px;vertical-align:middle;top:-3px;color: #999;"></span>&nbsp;&nbsp;&nbsp;
                <input type="password" name=newpassword2  id="newpassword2" style="height:45px;border:0;width:297px;" placeholder="确认新密码必填）">
                <span style='position:absolute;right: 0;bottom:-37px;font-size:13px;color: #f00;'></span>
            </div>
            
            
           
            <input type="submit" class="button" value="提交" style="padding: 10px 20px;border-radius: 5px;margin:30px auto 70px;margin-left: 35px;">
        </form>
    </div>

</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看所有管理员</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/themes/icon.css" type="text/css"></link>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
    

  </head>
  
  <body> 
  

   
   		<table id="dg">
   		
   		 <script type="text/javascript">
        $("#dg").datagrid({
            url : "${pageContext.request.contextPath}/uc/selectAdmin.action?time="+new Date().getTime(),
            loadMsg: "正在加载数据...",
            columns:[[  
                {field:'zm_id',title:'编号',width:100},    
                {field:'zm_name',title:'账号',width:100},    
                {field:'zm_password',title:'密码',width:100},  
                {field:'zm_city',title:'管理员所在城市',width:100},
               
            ]],
            singleSelect : true,
            pagination : true,
            fitColumns : true,
            singleSelect : true,
            pageSize :15,
            pageList : [15],
            showHeader:true,//  第一页
            showFooter:true,// 末页
            striped:true   //是否显示斑马线效果
        });
    </script>   
   		</table>	

  </body>
</html>

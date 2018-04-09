<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/themes/icon.css" type="text/css"></link>
  	
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
    
   
  </head>
  <body>
	
	<div><input id="btnExport" type="button" value="导出表单数据"/>

</div>
	<table id="dg"></table>
	<script type="text/javascript">
		$("#dg").datagrid({
			url : "${pageContext.request.contextPath}/user/kankan.action?time="+new Date().getTime(),
			columns:[[  
				
		        {field:'id',title:'编号',width:100},    
		        {field:'name',title:'姓名',width:100},    
		        {field:'mobile',title:'手机号',width:100},  
		        {field:'carBrand',title:'品牌',width:100},   
		        {field:'carType',title:'车型',width:100},  
		        {field:'buyInterest',title:'寄票地址',width:100},
		        {field:'sex',title:'是否全款购车',width:100},
		        {field:'createTime',title:'创建时间',width:100}, 
		        {field:'admin',title:'客户所在城市', width:80,
					formatter: function(value,row,index){          
						if (row.admin){
							return row.admin.zm_city;
						} else {
							return value;
						}
			}
			}
		        /* 单元格formatter(格式化器)函数，带3个参数：
							value：字段值。
							row：行记录数据。
							index: 行索引
		        		 */
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
	
	<script type="text/javascript">
		function JSONToCSVConvertor(JSONData, ReportTitle, ShowLabel) {  
            //If JSONData is not an object then JSON.parse will parse the JSON string in an Object  
            var arrData = typeof JSONData != 'object' ? JSON.parse(JSONData)  
                    : JSONData;  
  
            var CSV = '';  
            //Set Report title in first row or line  
  
            CSV += ReportTitle + '\r\n\n';  
  
            //This condition will generate the Label/Header  
            if (ShowLabel) {  
                var row = "";  
  
                //This loop will extract the label from 1st index of on array  
                for ( var index in arrData[0]) {  
  
                    //Now convert each value to string and comma-seprated  
                    row += index + ',';  
                }  
  
                row = row.slice(0, -1);  
  
                //append Label row with line break  
                CSV += row + '\r\n';  
            }  
  
            //1st loop is to extract each row  
            for (var i = 0; i < arrData.length; i++) {  
                var row = "";  
  
                //2nd loop will extract each column and convert it in string comma-seprated  
                for ( var index in arrData[i]) {  
                    row += '"' + arrData[i][index] + '",';  
                }  
  
                row.slice(0, row.length - 1);  
  
                //add a line break after each row  
                CSV += row + '\r\n';  
            }  
  
            if (CSV == '') {  
                alert("Invalid data");  
                return;  
            }  
  
            //Generate a file name  
            var fileName = "MyReport_";  
            //this will remove the blank-spaces from the title and replace it with an underscore  
            fileName += ReportTitle.replace(/ /g, "_");  
  
            //Initialize file format you want csv or xls  
      /*       var uri = 'data:text/csv;charset=utf-8,' + escape(XLS);  */ 
           		var uri = 'data:text/csv;charset=utf-8,' + encodeURI(CSV);
           			/* var uri = 'data:text/xls;charset=utf-8,' + escape(XLS); */
  
            // Now the little tricky part.  
            // you can use either>> window.open(uri);  
            // but this will not work in some browsers  
            // or you will not get the correct file extension      
  
            //this trick will generate a temp <a /> tag  
            var link = document.createElement("a");  
            link.href = uri;  
  
            //set the visibility hidden so it will not effect on your web-layout  
            link.style = "visibility:hidden";  
            link.download = fileName + ".csv";  
          
  
            //this part will append the anchor tag and remove it after automatic click  
            document.body.appendChild(link);  
            link.click();  
            document.body.removeChild(link);  
        }  
  
        $("#btnExport").click(function() {  
        	
            var data = JSON.stringify($('#dg').datagrid('getData').rows);  
             
            if (data == '')  
                return;  
  
            JSONToCSVConvertor(data, "Download", true);  
        });  
	
	
	
	</script>
  
  
	
	
	
	
		
  </body>
  
</html>

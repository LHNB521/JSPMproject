<%@ page language="java"  pageEncoding="gb2312"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>系统后台管理</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/productlist.js"></script>
</head>
<body class="withvernav">
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo"><span>大学生疫情在校封闭管理系统</span></h1>
            <span class="slogan"></span>
            <br clear="all" />
        </div>
        
        <div class="right">
        	<div class="notification">
			<font color="white">当前用户：<%=request.getSession().getAttribute("username")%>&nbsp;&nbsp;权限：<%=request.getSession().getAttribute("cx")%></font>
                
        	</div>
            &nbsp;&nbsp;<a href="logout.jsp" target="_parent"><span style="color:#FFFFFF">退出</span></a>
            
           
        </div>
    </div>
    <div class="header">
    	<ul class="headermenu">
        	
        </ul>
        <div class="headerwidget">
        	<div class="earnings">
                	<h4></h4>
                    <h2>
					<?php echo date("Y-m-d")?></h2>
              
                
            </div>
        </div>
    </div>
   <div class="vernav2 iconmenu">
    	<ul>
   <%
if (request.getSession().getAttribute("cx").equals("超级管理员") || request.getSession().getAttribute("cx").equals("普通管理员")){%><%@ include file="left_guanliyuan.jsp"%><%}
if (request.getSession().getAttribute("cx").equals("教师")){%><%@ include file="left_jiaoshi.jsp"%><%}
if (request.getSession().getAttribute("cx").equals("学生")){%><%@ include file="left_xuesheng.jsp"%><%}

%>
        
		  </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div>
    <div class="centercontent">
    <iframe name="hsgmain"  src="sy.jsp" runat="server" id="hsgmain"  style="vertical-align: middle; text-align: center;" width="100%" marginheight="5" marginwidth="5"></iframe>
	</div>
</div>
</body>
</html>
<script>
window.onload=function(){
	document.getElementById('hsgmain').height=window.innerHeight-158;
}
</script>

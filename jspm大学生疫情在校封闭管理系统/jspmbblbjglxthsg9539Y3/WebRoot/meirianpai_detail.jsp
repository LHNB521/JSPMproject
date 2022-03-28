<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>每日安排详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"meirianpai");
     %>
  每日安排详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>学号：</td><td width='39%'><%=m.get("xuehao")%></td><td width='11%'>学生姓名：</td><td width='39%'><%=m.get("xueshengxingming")%></td></tr><tr><td width='11%'>班级：</td><td width='39%'><%=m.get("banji")%></td><td width='11%'>院系：</td><td width='39%'><%=m.get("yuanxi")%></td></tr><tr><td width='11%'>教师工号：</td><td width='39%'><%=m.get("jiaoshigonghao")%></td><td width='11%'>时间安排：</td><td width='39%'><%=m.get("shijiananpai")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>




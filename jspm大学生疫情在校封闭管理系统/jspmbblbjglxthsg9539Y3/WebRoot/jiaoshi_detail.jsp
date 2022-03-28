<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教师详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jiaoshi");
     %>
  教师详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>教师工号：</td><td width='39%'><%=m.get("jiaoshigonghao")%></td><td  rowspan=8 align=center><a href=<%=m.get("zhaopian")%> target=_blank><img src=<%=m.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>密码：</td><td width='39%'><%=m.get("mima")%></td></tr><tr><td width='11%' height=44>教师姓名：</td><td width='39%'><%=m.get("jiaoshixingming")%></td></tr><tr><td width='11%' height=44>性别：</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr><td width='11%' height=44>身份证：</td><td width='39%'><%=m.get("shenfenzheng")%></td></tr><tr><td width='11%' height=44>电话：</td><td width='39%'><%=m.get("dianhua")%></td></tr><tr><td width='11%' height=44>职称：</td><td width='39%'><%=m.get("zhicheng")%></td></tr><tr><td width='11%' height=44>主教课程：</td><td width='39%'><%=m.get("zhujiaokecheng")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>




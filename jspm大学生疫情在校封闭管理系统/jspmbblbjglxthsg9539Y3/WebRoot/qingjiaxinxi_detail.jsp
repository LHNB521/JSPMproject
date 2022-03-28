<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>请假信息详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"qingjiaxinxi");
     %>
  请假信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>请假单号：</td><td width='39%'><%=m.get("qingjiadanhao")%></td><td  rowspan=10 align=center><a href=<%=m.get("xiangguanpingzheng")%> target=_blank><img src=<%=m.get("xiangguanpingzheng")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>请假类型：</td><td width='39%'><%=m.get("qingjialeixing")%></td></tr><tr><td width='11%' height=44>请假开始时间：</td><td width='39%'><%=m.get("qingjiakaishishijian")%></td></tr><tr><td width='11%' height=44>请假结束时间：</td><td width='39%'><%=m.get("qingjiajieshushijian")%></td></tr><tr><td width='11%' height=44>是否离校：</td><td width='39%'><%=m.get("shifoulixiao")%></td></tr><tr><td width='11%' height=44>学号：</td><td width='39%'><%=m.get("xuehao")%></td></tr><tr><td width='11%' height=44>学生姓名：</td><td width='39%'><%=m.get("xueshengxingming")%></td></tr><tr><td width='11%' height=44>班级：</td><td width='39%'><%=m.get("banji")%></td></tr><tr><td width='11%' height=44>院系：</td><td width='39%'><%=m.get("yuanxi")%></td></tr><tr><td width='11%' height=44>教师工号：</td><td width='39%'><%=m.get("jiaoshigonghao")%></td></tr><tr><td width='11%' height=100  >请假事由：</td><td width='39%' colspan=2 height=100 ><%=m.get("qingjiashiyou")%></td></tr><tr><td width='11%' height=100  >教师审核：</td><td width='39%' colspan=2 height=100 ><%=m.get("jiaoshishenhe")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>




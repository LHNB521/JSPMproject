<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��ʦ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jiaoshi");
     %>
  ��ʦ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>��ʦ���ţ�</td><td width='39%'><%=m.get("jiaoshigonghao")%></td><td  rowspan=8 align=center><a href=<%=m.get("zhaopian")%> target=_blank><img src=<%=m.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>���룺</td><td width='39%'><%=m.get("mima")%></td></tr><tr><td width='11%' height=44>��ʦ������</td><td width='39%'><%=m.get("jiaoshixingming")%></td></tr><tr><td width='11%' height=44>�Ա�</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr><td width='11%' height=44>���֤��</td><td width='39%'><%=m.get("shenfenzheng")%></td></tr><tr><td width='11%' height=44>�绰��</td><td width='39%'><%=m.get("dianhua")%></td></tr><tr><td width='11%' height=44>ְ�ƣ�</td><td width='39%'><%=m.get("zhicheng")%></td></tr><tr><td width='11%' height=44>���̿γ̣�</td><td width='39%'><%=m.get("zhujiaokecheng")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>




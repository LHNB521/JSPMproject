<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ռǼ�¼��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"rijijilu");
     %>
  �ռǼ�¼��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>ѧ�ţ�</td><td width='39%'><%=m.get("xuehao")%></td><td width='11%'>ѧ��������</td><td width='39%'><%=m.get("xueshengxingming")%></td></tr><tr><td width='11%'>�༶��</td><td width='39%'><%=m.get("banji")%></td><td width='11%'>Ժϵ��</td><td width='39%'><%=m.get("yuanxi")%></td></tr><tr><td width='11%'>��ʦ���ţ�</td><td width='39%'><%=m.get("jiaoshigonghao")%></td><td width='11%'>���飺</td><td width='39%'><%=m.get("xinqing")%></td></tr><tr><td width='11%'>�ռ����ݣ�</td><td width='39%'><%=m.get("rijineirong")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>




<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=qingjiaxinxi.xls");
%>
<html>
  <head>
    <title>�����Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>���������Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>��ٵ���</td>    <td bgcolor='#cccccc'>�������</td>    <td bgcolor='#cccccc'>��ٿ�ʼʱ��</td>    <td bgcolor='#cccccc'>��ٽ���ʱ��</td>    <td bgcolor='#cccccc'>�Ƿ���У</td>        <td bgcolor='#cccccc' width='90' align='center'>���ƾ֤</td>    <td bgcolor='#cccccc'>ѧ��</td>    <td bgcolor='#cccccc'>ѧ������</td>    <td bgcolor='#cccccc'>�༶</td>    <td bgcolor='#cccccc'>Ժϵ</td>    <td bgcolor='#cccccc'>��ʦ����</td>        
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

  </tr>
  <% 

    String url = "qingjiaxinxi_list.jsp?1=1"; 
    String sql =  "select * from qingjiaxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("qingjiadanhao") %></td>    <td><%=map.get("qingjialeixing") %></td>    <td><%=map.get("qingjiakaishishijian") %></td>    <td><%=map.get("qingjiajieshushijian") %></td>    <td><%=map.get("shifoulixiao") %></td>        <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("xiangguanpingzheng") %>' target='_blank'><img src='<%=map.get("xiangguanpingzheng") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("xuehao") %></td>    <td><%=map.get("xueshengxingming") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("yuanxi") %></td>    <td><%=map.get("jiaoshigonghao") %></td>        
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>


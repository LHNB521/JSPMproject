<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��ʦ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���н�ʦ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��ʦ���ţ�<input name="jiaoshigonghao" type="text" id="jiaoshigonghao" class="form-control2" />  ��ʦ������<input name="jiaoshixingming" type="text" id="jiaoshixingming" class="form-control2" /> �Ա�<select name='xingbie' id='xingbie' class="form-control2"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  ���֤��<input name="shenfenzheng" type="text" id="shenfenzheng" class="form-control2" />  �绰��<input name="dianhua" type="text" id="dianhua" class="form-control2" />  ���̿γ̣�<input name="zhujiaokecheng" type="text" id="zhujiaokecheng" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='jiaoshi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>��ʦ����</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>��ʦ����</td>    <td bgcolor='#cccccc' width='40' align='center'>�Ա�</td>    <td bgcolor='#cccccc'>���֤</td>    <td bgcolor='#cccccc'>�绰</td>    <td bgcolor='#cccccc'>ְ��</td>    <td bgcolor='#cccccc'>���̿γ�</td>    <td bgcolor='#cccccc' width='90' align='center'>��Ƭ</td>    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiaoshi"); 
    String url = "jiaoshi_list.jsp?1=1"; 
    String sql =  "select * from jiaoshi where 1=1";
	if(request.getParameter("jiaoshigonghao")=="" ||request.getParameter("jiaoshigonghao")==null ){}else{sql=sql+" and jiaoshigonghao like '%"+request.getParameter("jiaoshigonghao")+"%'";}if(request.getParameter("jiaoshixingming")=="" ||request.getParameter("jiaoshixingming")==null ){}else{sql=sql+" and jiaoshixingming like '%"+request.getParameter("jiaoshixingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+request.getParameter("dianhua")+"%'";}if(request.getParameter("zhujiaokecheng")=="" ||request.getParameter("zhujiaokecheng")==null ){}else{sql=sql+" and zhujiaokecheng like '%"+request.getParameter("zhujiaokecheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("jiaoshigonghao") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("jiaoshixingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td><%=map.get("dianhua") %></td>    <td><%=map.get("zhicheng") %></td>    <td><%=map.get("zhujiaokecheng") %></td>    <td width='90' align='center'><a  href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="jiaoshi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="jiaoshi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a class="btn btn-info btn-small" href="jiaoshi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>


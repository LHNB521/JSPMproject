<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ÿ�մ�</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����ÿ�մ��б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ѧ�ţ�<input name="xuehao" type="text" id="xuehao" class="form-control2"  />  �༶��<input name="banji" type="text" id="banji" class="form-control2"  />  Ժϵ��<input name="yuanxi" type="text" id="yuanxi" class="form-control2"  /> ����״����<select name='gerenzhuangkuang' id='gerenzhuangkuang' class="form-control2"><option value="">����</option><option value="��״��">��״��</option><option value="���нӴ���">���нӴ���</option><option value="���Ʋ���">���Ʋ���</option><option value="ȷ�ﲡ��">ȷ�ﲡ��</option></select> ����״̬��<select name='shentizhuangtai' id='shentizhuangtai' class="form-control2"><option value="">����</option><option value="����">����</option><option value="����">����</option><option value="��ʹ����">��ʹ����</option></select>
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='meiridaka_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>ѧ��</td>    <td bgcolor='#cccccc'>ѧ������</td>    <td bgcolor='#cccccc'>�༶</td>    <td bgcolor='#cccccc'>Ժϵ</td>    <td bgcolor='#cccccc'>��ʦ����</td>    <td bgcolor='#cccccc'>����״��</td>    <td bgcolor='#cccccc'>����״̬</td>    <td bgcolor='#cccccc'>��ǰ��ַ</td>    
	
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"meiridaka"); 
    String url = "meiridaka_list.jsp?1=1"; 
    String sql =  "select * from meiridaka where 1=1";
	if(request.getParameter("xuehao")=="" ||request.getParameter("xuehao")==null ){}else{sql=sql+" and xuehao like '%"+request.getParameter("xuehao")+"%'";}if(request.getParameter("banji")=="" ||request.getParameter("banji")==null ){}else{sql=sql+" and banji like '%"+request.getParameter("banji")+"%'";}if(request.getParameter("yuanxi")=="" ||request.getParameter("yuanxi")==null ){}else{sql=sql+" and yuanxi like '%"+request.getParameter("yuanxi")+"%'";}if(request.getParameter("gerenzhuangkuang")=="" ||request.getParameter("gerenzhuangkuang")==null ){}else{sql=sql+" and gerenzhuangkuang like '%"+request.getParameter("gerenzhuangkuang")+"%'";}if(request.getParameter("shentizhuangtai")=="" ||request.getParameter("shentizhuangtai")==null ){}else{sql=sql+" and shentizhuangtai like '%"+request.getParameter("shentizhuangtai")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td>    <td><%=map.get("xueshengxingming") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("yuanxi") %></td>    <td><%=map.get("jiaoshigonghao") %></td>    <td><%=map.get("gerenzhuangkuang") %></td>    <td><%=map.get("shentizhuangtai") %></td>    <td><%=map.get("dangqiandizhi") %></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="meiridaka_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>


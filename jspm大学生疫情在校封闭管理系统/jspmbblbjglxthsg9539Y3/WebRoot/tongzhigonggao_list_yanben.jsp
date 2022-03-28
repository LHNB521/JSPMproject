<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>通知公告</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有通知公告列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  标题：<input name="biaoti" type="text" id="biaoti" class="form-control2"  />  发布人：<input name="faburen" type="text" id="faburen" class="form-control2"  />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='tongzhigonggao_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>标题</td>        <td bgcolor='#cccccc' width='90' align='center'>附件</td>    <td bgcolor='#cccccc'>发布人</td>    
	
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="60" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"tongzhigonggao"); 
    String url = "tongzhigonggao_list.jsp?1=1"; 
    String sql =  "select * from tongzhigonggao where 1=1";
	if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}if(request.getParameter("faburen")=="" ||request.getParameter("faburen")==null ){}else{sql=sql+" and faburen like '%"+request.getParameter("faburen")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("biaoti") %></td>        <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fujian") %>' target='_blank'>下载</a></td>    <td><%=map.get("faburen") %></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="tongzhigonggao_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>


<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>班级信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有班级信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  班级：<input name="banji" type="text" id="banji" class="form-control2" />  班主任：<input name="banzhuren" type="text" id="banzhuren" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='banjixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>班级</td>    <td bgcolor='#cccccc'>班主任</td>    <td bgcolor='#cccccc'>联系电话</td>    <td bgcolor='#cccccc'>人数</td>    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"banjixinxi"); 
    String url = "banjixinxi_list.jsp?1=1"; 
    String sql =  "select * from banjixinxi where 1=1";
	if(request.getParameter("banji")=="" ||request.getParameter("banji")==null ){}else{sql=sql+" and banji like '%"+request.getParameter("banji")+"%'";}if(request.getParameter("banzhuren")=="" ||request.getParameter("banzhuren")==null ){}else{sql=sql+" and banzhuren like '%"+request.getParameter("banzhuren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("banji") %></td>    <td><%=map.get("banzhuren") %></td>    <td><%=map.get("lianxidianhua") %></td>    <td><%=map.get("renshu") %></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="banjixinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="banjixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a>  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>


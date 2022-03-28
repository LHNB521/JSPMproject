<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教师</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有教师列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  教师工号：<input name="jiaoshigonghao" type="text" id="jiaoshigonghao" class="form-control2" />  教师姓名：<input name="jiaoshixingming" type="text" id="jiaoshixingming" class="form-control2" /> 性别：<select name='xingbie' id='xingbie' class="form-control2"><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" class="form-control2" />  电话：<input name="dianhua" type="text" id="dianhua" class="form-control2" />  主教课程：<input name="zhujiaokecheng" type="text" id="zhujiaokecheng" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='jiaoshi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>教师工号</td>    <td bgcolor='#cccccc'>密码</td>    <td bgcolor='#cccccc'>教师姓名</td>    <td bgcolor='#cccccc' width='40' align='center'>性别</td>    <td bgcolor='#cccccc'>身份证</td>    <td bgcolor='#cccccc'>电话</td>    <td bgcolor='#cccccc'>职称</td>    <td bgcolor='#cccccc'>主教课程</td>    <td bgcolor='#cccccc' width='90' align='center'>照片</td>    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">操作</td>
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
    <td width="220" align="center"><a class="btn btn-info btn-small" href="jiaoshi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="jiaoshi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="jiaoshi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>


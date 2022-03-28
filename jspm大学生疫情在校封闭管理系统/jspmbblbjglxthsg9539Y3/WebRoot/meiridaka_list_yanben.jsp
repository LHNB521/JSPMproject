<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>每日打卡</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有每日打卡列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  学号：<input name="xuehao" type="text" id="xuehao" class="form-control2"  />  班级：<input name="banji" type="text" id="banji" class="form-control2"  />  院系：<input name="yuanxi" type="text" id="yuanxi" class="form-control2"  /> 个人状况：<select name='gerenzhuangkuang' id='gerenzhuangkuang' class="form-control2"><option value="">所有</option><option value="无状况">无状况</option><option value="密切接触者">密切接触者</option><option value="疑似病例">疑似病例</option><option value="确诊病例">确诊病例</option></select> 身体状态：<select name='shentizhuangtai' id='shentizhuangtai' class="form-control2"><option value="">所有</option><option value="健康">健康</option><option value="发热">发热</option><option value="咽痛乏力">咽痛乏力</option></select>
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='meiridaka_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>学号</td>    <td bgcolor='#cccccc'>学生姓名</td>    <td bgcolor='#cccccc'>班级</td>    <td bgcolor='#cccccc'>院系</td>    <td bgcolor='#cccccc'>教师工号</td>    <td bgcolor='#cccccc'>个人状况</td>    <td bgcolor='#cccccc'>身体状态</td>    <td bgcolor='#cccccc'>当前地址</td>    
	
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="60" align="center" bgcolor="cccccc">操作</td>
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
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="meiridaka_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>


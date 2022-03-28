<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>请假信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有请假信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  请假单号：<input name="qingjiadanhao" type="text" id="qingjiadanhao" class="form-control2"  /> 请假类型：<select name='qingjialeixing' id='qingjialeixing' class="form-control2"><option value="">所有</option><option value="病假">病假</option><option value="事假">事假</option><option value="公休假">公休假</option></select> 是否离校：<select name='shifoulixiao' id='shifoulixiao' class="form-control2"><option value="">所有</option><option value="是">是</option><option value="否">否</option></select>
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='qingjiaxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>请假单号</td>    <td bgcolor='#cccccc'>请假类型</td>    <td bgcolor='#cccccc'>请假开始时间</td>    <td bgcolor='#cccccc'>请假结束时间</td>    <td bgcolor='#cccccc'>是否离校</td>        <td bgcolor='#cccccc' width='90' align='center'>相关凭证</td>    <td bgcolor='#cccccc'>学号</td>    <td bgcolor='#cccccc'>学生姓名</td>    <td bgcolor='#cccccc'>班级</td>    <td bgcolor='#cccccc'>院系</td>    <td bgcolor='#cccccc'>教师工号</td>        
	
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="60" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"qingjiaxinxi"); 
    String url = "qingjiaxinxi_list.jsp?1=1"; 
    String sql =  "select * from qingjiaxinxi where 1=1";
	if(request.getParameter("qingjiadanhao")=="" ||request.getParameter("qingjiadanhao")==null ){}else{sql=sql+" and qingjiadanhao like '%"+request.getParameter("qingjiadanhao")+"%'";}if(request.getParameter("qingjialeixing")=="" ||request.getParameter("qingjialeixing")==null ){}else{sql=sql+" and qingjialeixing like '%"+request.getParameter("qingjialeixing")+"%'";}if(request.getParameter("shifoulixiao")=="" ||request.getParameter("shifoulixiao")==null ){}else{sql=sql+" and shifoulixiao like '%"+request.getParameter("shifoulixiao")+"%'";}
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
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="qingjiaxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>


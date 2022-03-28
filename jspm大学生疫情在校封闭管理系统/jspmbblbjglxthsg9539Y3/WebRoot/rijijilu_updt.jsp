<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>日记记录</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"rijijilu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"rijijilu"); 

%>
  <form  action="rijijilu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改日记记录:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>学号：</td><td><input name='xuehao' type='text' id='xuehao' value='<%= mmm.get("xuehao")%>' class="form-control" /></td></tr>     <tr><td>学生姓名：</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='<%= mmm.get("xueshengxingming")%>' class="form-control" /></td></tr>     <tr><td>班级：</td><td><input name='banji' type='text' id='banji' value='<%= mmm.get("banji")%>' class="form-control" /></td></tr>     <tr><td>院系：</td><td><input name='yuanxi' type='text' id='yuanxi' value='<%= mmm.get("yuanxi")%>' class="form-control" /></td></tr>     <tr><td>教师工号：</td><td><input name='jiaoshigonghao' type='text' id='jiaoshigonghao' value='<%= mmm.get("jiaoshigonghao")%>' class="form-control" /></td></tr>     <tr><td>心情：</td><td><select name='xinqing' id='xinqing' class="form-control2"><option value="开心">开心</option><option value="一般">一般</option><option value="无聊">无聊</option></select></td></tr><script language="javascript">document.form1.xinqing.value='<%=mmm.get("xinqing")%>';</script>     <tr><td>日记内容：</td><td><textarea name='rijineirong' cols='50' rows='5' id='rijineirong' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("rijineirong")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



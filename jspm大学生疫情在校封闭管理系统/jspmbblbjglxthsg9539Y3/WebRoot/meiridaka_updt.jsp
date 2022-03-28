<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>每日打卡</title>
	
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

new CommDAO().update(request,response,"meiridaka",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"meiridaka"); 

%>
  <form  action="meiridaka_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改每日打卡:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>学号：</td><td><input name='xuehao' type='text' id='xuehao' value='<%= mmm.get("xuehao")%>' class="form-control" /></td></tr>     <tr><td>学生姓名：</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='<%= mmm.get("xueshengxingming")%>' class="form-control" /></td></tr>     <tr><td>班级：</td><td><input name='banji' type='text' id='banji' value='<%= mmm.get("banji")%>' class="form-control" /></td></tr>     <tr><td>院系：</td><td><input name='yuanxi' type='text' id='yuanxi' value='<%= mmm.get("yuanxi")%>' class="form-control" /></td></tr>     <tr><td>教师工号：</td><td><input name='jiaoshigonghao' type='text' id='jiaoshigonghao' value='<%= mmm.get("jiaoshigonghao")%>' class="form-control" /></td></tr>     <tr><td>个人状况：</td><td><select name='gerenzhuangkuang' id='gerenzhuangkuang' class="form-control2"><option value="无状况">无状况</option><option value="密切接触者">密切接触者</option><option value="疑似病例">疑似病例</option><option value="确诊病例">确诊病例</option></select></td></tr><script language="javascript">document.form1.gerenzhuangkuang.value='<%=mmm.get("gerenzhuangkuang")%>';</script>     <tr><td>身体状态：</td><td><select name='shentizhuangtai' id='shentizhuangtai' class="form-control2"><option value="健康">健康</option><option value="发热">发热</option><option value="咽痛乏力">咽痛乏力</option></select></td></tr><script language="javascript">document.form1.shentizhuangtai.value='<%=mmm.get("shentizhuangtai")%>';</script>     <tr><td>当前地址：</td><td><input name='dangqiandizhi' type='text' id='dangqiandizhi' value='<%= mmm.get("dangqiandizhi")%>' class="form-control" /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>请假信息</title>
	
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

new CommDAO().update(request,response,"qingjiaxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"qingjiaxinxi"); 

%>
  <form  action="qingjiaxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改请假信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>请假单号：</td><td><input name='qingjiadanhao' type='text' id='qingjiadanhao' value='<%= mmm.get("qingjiadanhao")%>' class="form-control" /></td></tr>
     <tr><td>请假类型：</td><td><select name='qingjialeixing' id='qingjialeixing' class="form-control2"><option value="病假">病假</option><option value="事假">事假</option><option value="公休假">公休假</option></select></td></tr><script language="javascript">document.form1.qingjialeixing.value='<%=mmm.get("qingjialeixing")%>';</script>
     <tr><td>请假开始时间：</td><td><input name='qingjiakaishishijian' type='text' id='qingjiakaishishijian' value='<%= mmm.get("qingjiakaishishijian")%>' class="form-control" /></td></tr>
     <tr><td>请假结束时间：</td><td><input name='qingjiajieshushijian' type='text' id='qingjiajieshushijian' value='<%= mmm.get("qingjiajieshushijian")%>' class="form-control" /></td></tr>
     <tr><td>是否离校：</td><td><input name='shifoulixiao' type='text' id='shifoulixiao' value='<%= mmm.get("shifoulixiao")%>' class="form-control" /></td></tr>
     <tr><td>请假事由：</td><td><textarea name='qingjiashiyou' cols='50' rows='5' id='qingjiashiyou' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("qingjiashiyou")%></textarea></td></tr>
     <tr><td>相关凭证：</td><td><input name='xiangguanpingzheng' type='text' id='xiangguanpingzheng' size='50' value='<%= mmm.get("xiangguanpingzheng")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('xiangguanpingzheng')"/></div></td></tr>
     <tr><td>学号：</td><td><input name='xuehao' type='text' id='xuehao' value='<%= mmm.get("xuehao")%>' class="form-control" /></td></tr>
     <tr><td>学生姓名：</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='<%= mmm.get("xueshengxingming")%>' class="form-control" /></td></tr>
     <tr><td>班级：</td><td><input name='banji' type='text' id='banji' value='<%= mmm.get("banji")%>' class="form-control" /></td></tr>
     <tr><td>院系：</td><td><input name='yuanxi' type='text' id='yuanxi' value='<%= mmm.get("yuanxi")%>' class="form-control" /></td></tr>
     <tr><td>教师工号：</td><td><input name='jiaoshigonghao' type='text' id='jiaoshigonghao' value='<%= mmm.get("jiaoshigonghao")%>' class="form-control" /></td></tr>
     <tr style='display:none'><td>教师审核：</td><td><textarea name='jiaoshishenhe' cols='50' rows='5' id='jiaoshishenhe' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("jiaoshishenhe")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



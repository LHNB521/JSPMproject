<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>日记记录</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 

 HashMap mssdq = new CommDAO().getmaps("xuehao",(String)request.getSession().getAttribute("username"),"xuesheng");
 String xuehao="";  	String xueshengxingming="";  	String banji="";  	String yuanxi="";  	String jiaoshigonghao="";  	
 xuehao=(String)mssdq.get("xuehao");  	xueshengxingming=(String)mssdq.get("xueshengxingming");  	banji=(String)mssdq.get("banji");  	yuanxi=(String)mssdq.get("yuanxi");  	jiaoshigonghao=(String)mssdq.get("jiaoshigonghao");  	
   %>
<script language="javascript">

function gow()
{
	document.location.href="rijijilu_add.jsp?id=<%=id%>";
}

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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"rijijilu",ext,true,false,""); 

}

%>

  <body >
 <form  action="rijijilu_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加日记记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">学号：</td><td><input name='xuehao' type='text' id='xuehao' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr><script language="javascript">document.form1.xuehao.value='<%=xuehao%>';document.form1.xuehao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">学生姓名：</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.xueshengxingming.value='<%=xueshengxingming%>';document.form1.xueshengxingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">班级：</td><td><input name='banji' type='text' id='banji' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.banji.value='<%=banji%>';document.form1.banji.setAttribute("readOnly",'true');</script>		<tr><td  width="200">院系：</td><td><input name='yuanxi' type='text' id='yuanxi' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.yuanxi.value='<%=yuanxi%>';document.form1.yuanxi.setAttribute("readOnly",'true');</script>		<tr><td  width="200">教师工号：</td><td><input name='jiaoshigonghao' type='text' id='jiaoshigonghao' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.jiaoshigonghao.value='<%=jiaoshigonghao%>';document.form1.jiaoshigonghao.setAttribute("readOnly",'true');</script>		<tr><td>心情：</td><td><select name='xinqing' id='xinqing' class="form-control2"><option value="开心">开心</option><option value="一般">一般</option><option value="无聊">无聊</option></select></td></tr>		<tr><td  width="200">日记内容：</td><td><textarea name='rijineirong'  id='rijineirong' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>

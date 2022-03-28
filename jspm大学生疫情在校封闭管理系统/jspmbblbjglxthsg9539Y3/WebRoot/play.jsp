<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
<head>
<title>课程视频</title>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="981" height="1107" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="981" height="761" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" background="qtimages/tt.jpg"><table id="__01" width="780" height="186" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="780" height="34" background="qtimages/1_02_01_02_01.jpg"><table width="100%" height="70%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="24%" height="21" align="center" valign="bottom"  class="STYLE2 STYLE1">课程视频</td>
                      <td width="76%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="780" height="735" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="37" background="qtimages/1_02_01_02_02_01.jpg">&nbsp;</td>
                      <td width="727" height="143" valign="top" background="qtimages/1_02_01_02_02_02.jpg">
					  
					  <br>
<div align="center">
<video src="<%=request.getParameter("spwj")%>" width="690"  controls preload ></video>
</div>
					  
					   
				      </td>
                      <td width="16" background="qtimages/1_02_01_02_02_03.jpg">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="qtimages/1_02_01_02_03.jpg" width="780" height="9" alt=""></td>
              </tr>
            </table></td>
            <td valign="top"><%@ include file="qtleft.jsp"%></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>

</body>
</html>



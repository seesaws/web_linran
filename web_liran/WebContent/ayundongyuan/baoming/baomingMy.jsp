<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function baomingDelByMy(baomingId)
           {
                   window.location.href="<%=path %>/baomingDelByMy.action?baomingId="+baomingId;
           }
           
           function adminAdd()
           {
                 var url="<%=path %>/admin/index/adminAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" background="<%=path %>/images/tbg.gif">&nbsp;我的报名项目&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="25%">报名时间</td>
					<td width="25%">报名项目</td>
					<td width="25%">状态</td>
					<td width="25%">操作</td>
		        </tr>	
				<s:iterator value="#request.baomingList" id="baoming">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#baoming.baomingShijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#baoming.catelogName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#baoming.baomingZhuangtai"/>                              
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="baomingDelByMy(<s:property value="#baoming.baomingId"/>)" class="pn-loperator">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>

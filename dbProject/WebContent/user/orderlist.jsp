<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderList</title>
</head>
<body>
<%
String memberId = (String)session.getAttribute("memberId");

if(memberId != null)
{
	
}
else // 로그인 안되어있으면 
{
	out.println("<script>alert('로그인 이후 이용하세요');</script>");
	response.sendRedirect("login.html");
}
%>


<%-- <% if(memberId != null){%>
	<tr style="text-align:center;">
		<td style="background-color:red">
			<b><font color="white"><b><%= memberId %>님! 방문을 환영합니다.</font><br>
		</td>
	<tr>
<%}else{%>
	<tr style="text-align:center;">
		<td style="background-color:#FFCC00">
			<b><font color="white" face = "Arial">로그인 이후 이용하세요!</font></b>
			<img src="../imgs/dmart.png" width="100%"/>
		</td>
	<tr>
<%}%> --%>
</body>
</html>
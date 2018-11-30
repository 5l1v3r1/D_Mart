<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D-MART</title>

</head>
<body>
<table style="width: 90%">
	<tr>
		<td style ="font-size: 28px">D-MART</td>
		</tr>
</table>

<%@ include file="user_top.jsp" %>
<table style="width: 90%">
<% if(memberId != null){%>
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
<%}%>
</table>
<%@ include file="user_bottom.jsp" %>		
</body>
</html>
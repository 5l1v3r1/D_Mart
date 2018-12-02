<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daysell_search</title>
</head>
<body>

<form action = "daysell.jsp" method = "POST">
	<table style="width: 90%">
	<tr>
		<td style ="font-size: 28px">D-MART</td>
		</tr>
	</table>
	<%@include file="admin_top.jsp" %>
	
	<!-- 검색  -->
	<table border = "1">
		<tr style = "text-align: center;">
		<td><font face = "Arial">일별 매출(년,월,일)</font></td>
		<td><input type = "text" name = "daysell" size = "15"></td>
		<td><input type = "submit" value="검색"></td>
		</tr>
	</table>
</form>

	<%@include file="admin_bottom.jsp" %>
</body>
</html>
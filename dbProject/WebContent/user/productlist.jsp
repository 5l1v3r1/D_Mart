<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_list</title>
</head>
<body>

<form action = "product_search.jsp" method = "POST">
	<table style="width: 90%">
	<tr>
		<td style ="font-size: 28px">D-MART</td>
		</tr>
	</table>
	<%@include file="user_top.jsp" %>
	
	<!-- 검색  -->
	<table border = "1">
		<tr style = "text-align: center;">
		<td><input type = "text" name = "search" size = "15"></td>
		<td><input type = "submit" value="검색"></td>
		</tr>
	</table>
</form>

	<table style="width: 90%">
		<tr style="text-align:center;">
			<td style="background-color:#FFCC00">
				<b><font color="white" face = "Arial">카테고리</font></b>
				<br/>
				<a href="vegetable.jsp"><img src="../imgs/vegetable.png" width="30%" height="130"/></a>
				<a href="fruit.jsp"><img src="../imgs/fruit.png" width="30%" height="130"/></a>
				<a href="snack.jsp"><img src="../imgs/snack.png" width="30%" height="130"/></a>
			</td>
		<tr>
	</table>
	<%@include file="user_bottom.jsp" %>
</body>
</html>
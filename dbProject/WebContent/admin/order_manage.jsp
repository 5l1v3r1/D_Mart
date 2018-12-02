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
	<%@include file="admin_top.jsp" %>
	
</form>

	<table style="width: 90%">
		<tr style="text-align:center;">
			<td style="background-color:#FFCC00">
				<b><font color="white" face = "Arial">매출 관리</font></b>
				<br/>
				<a href="allsell.jsp"><img src="../imgs/all.png" width="30%" height="130"/></a>
				<a href="monthsellsearch.jsp"><img src="../imgs/month.png" width="30%" height="130"/></a>
				<a href="daysellsearch.jsp"><img src="../imgs/day.png" width="30%" height="130"/></a>
			</td>
		<tr>
	</table>
	<%@include file="admin_bottom.jsp" %>
</body>
</html>
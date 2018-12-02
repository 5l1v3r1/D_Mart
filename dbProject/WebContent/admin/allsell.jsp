<%@page import="pack.product.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<jsp:useBean id="productMgr" class="pack.product.ProductMgr"/>

<%

Connection conn = null;
PreparedStatement pstmt;
ResultSet rs;

String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
String USER_NAME="min";
String PASSWORD="seok";

conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
String sql = "select sum(result.price) from (select distinct O.Onumber, I.price from ORDER_LIST AS OL,ITEM AS I,ORDER_ AS O where I.IName=OL.Order_list and O.Onumber=OL.lOnumber ) AS result;";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();

int allsell = 0;

while(rs.next())
{
	allsell = rs.getInt(1);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order_manage</title>

<script type = "text/javascript">
	function btn_click(str)
	{
		if(str.equal("monthsell"))
		{
			document.form1.action = "monthsell.jsp";
			//document.form1.name = "monthsell";
		}
		else if(str.equal("daysell"))
		{
			document.form1.action = "daysell.jsp";
			//document.form1.name = "daysell";
		}
		document.form1.submit();
	}
</script>

</head>
<body>
<form name = "form1" method = "POST">

<table style="width: 90%">
	<tr>
		<td style ="font-size: 28px">D-MART</td>
		</tr>
</table>
<%@include file="admin_top.jsp" %>

<h2><font face = "Arial">매출 관리</font></h2>
<table border = "1">
<tr style = "text-align: center;">
 <td><font face = "Arial">전체 매출</font></td>
</tr>

	<tr style="text-align: center;">
		<td><%=allsell %></td>
</table>
</form>

<%@include file="admin_bottom.jsp" %>
</body>
</html>
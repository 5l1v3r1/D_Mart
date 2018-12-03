<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderList</title>
</head>
<body>
<table style="width: 90%">
	<tr>
		<td style ="font-size: 28px">D-MART</td>
		</tr>
</table>


<%@ include file="user_top.jsp" %>
<% 
	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;

	String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
	String USER_NAME="min";
	String PASSWORD="seok";
	
	conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
	
	String query = "select CustomerID from CUSTOMER where CID_String = \"" + memberId + "\";";
	
	int CustomerID = 0;
	
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		CustomerID = rs.getInt(1);
	}
	
	query = "select Order_list,Start_time from ORDER_, ORDER_LIST where " + CustomerID + " = CustomerIDenti and Onumber = lOnumber;";
	
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
%>


<table style="width: 90%">
<% if(memberId != null){%>
	<table border = "1">
		<tr style = "text-align: center;">
 		<td><font face = "Arial">상품명</font></td>
 		<td><font face = "Arial">구매 날짜</font></td>
		</tr>
<%
	while(rs.next()){
	%>
	<tr style="text-align: center;">
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
	</tr>
	
	<%	
	}
%>

<%
}
else // 로그인 안되어있으면 
{
	out.println("<script>alert('로그인 이후 이용하세요');</script>");
	response.sendRedirect("login.html");
}
%>

<%@ include file="user_bottom.jsp" %>
</body>
</html>
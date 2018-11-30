<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUp</title>
</head>
<body>
<% 
	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;

	String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
	String USER_NAME="min";
	String PASSWORD="seok";
	
	String query = "select CustomerID from CUSTOMER order by CustomerID desc limit 1;";
	int cid;
	
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	cid = rs.getInt(1) + 1;
	
	//query = "insert into CUSTOMER VALUES ("+ cid + ", \"" + request.getParameter("passwd") + "\", " + request.getParameter("age");
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
%>
			
</body>
</html>
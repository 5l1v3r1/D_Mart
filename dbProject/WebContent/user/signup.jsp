<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
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
	
	conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
	
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	String today = simpleDate.format(date);
	
	String query = "select CustomerID from CUSTOMER order by CustomerID desc limit 1;";
	int cid = 0;
	
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	/* while(rs.next())
	{
		System.out.println(rs.getInt(1));
	} */
	
	while(rs.next())
	{
		cid = rs.getInt(1) + 1;
	}
	
	
	System.out.println(cid);
	
	if(!(request.getParameter("passwd").equals(request.getParameter("repasswd"))))
	{
		out.println("<script>alert('비밀번호가 일치하지 않습니다.');</script>");
		response.sendRedirect("signupfail.html"); 
		
	}
	else
	{
		query = "insert into CUSTOMER VALUES (" + cid + ", '" + request.getParameter("passwd") + "', " + request.getParameter("age") + ", '" + request.getParameter("gender") + "', '" + request.getParameter("phone") + "', '" + request.getParameter("job") + "', '" + request.getParameter("roadname_address") + "', '" + request.getParameter("detailed_address") + "', '" + request.getParameter("id") + "');";
		//System.out.println(query);
		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate();
		
		query="insert into CART VALUES(\"" + today + "\", " + cid + ", " + cid + ");";
		System.out.println(query);
		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate();
		
		response.sendRedirect("user_initial.jsp");
	}
	//
	
	
%>
			
</body>
</html>
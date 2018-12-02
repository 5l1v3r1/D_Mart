<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ page language="java" import="java.text.*,java.sql.*" %>
<title>admin_Login</title>
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
	
	String query = "SELECT count(*) FROM CUSTOMER WHERE CID_String = '" + request.getParameter("adminID") + "' AND Password = " + request.getParameter("admin_password");
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	int cnt = 0;
	while(rs.next())
	{
		cnt = rs.getInt(1);
	}
	
	String a = request.getParameter("adminID");

	/* System.out.println("memberID = " + request.getParameter("memberID"));
	System.out.println("cnt = " + cnt); */
	if((cnt >= 1) && a.equals("root"))
	{
		//login success
		String adminId = request.getParameter("adminID");
		session.setAttribute("adminId", adminId);
		response.sendRedirect("admin_initial.jsp");
	}
	else
	{
		//login fail
		response.sendRedirect("admin_loginfail.html");
	}
%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ page language="java" import="java.text.*,java.sql.*" %>
<title>Login</title>
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
	
	String query = "SELECT count(*) FROM CUSTOMER WHERE CID_String = '" + request.getParameter("memberID") + "' AND Password = " + request.getParameter("password");
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	int cnt = 0;
	while(rs.next())
	{
		cnt = rs.getInt(1);
	}
	

	/* System.out.println("memberID = " + request.getParameter("memberID"));
	System.out.println("cnt = " + cnt); */
	if(cnt >= 1)
	{
		//login success
		String memberId = request.getParameter("memberID");
		session.setAttribute("memberId", memberId);
		response.sendRedirect("user_initial.jsp");
	}
	else
	{
		//login fail
		response.sendRedirect("login_fail.html");
	}
%>

</body>
</html>
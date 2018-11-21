<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<% 
	String serverIP = "localhost";
	String strSID = "xe";
	String portNum = "59161";
	String url = "jdbc:oracle:thin:@"+serverIP+":"+portNum+":"+strSID;
	String user = "system";
	String pass = "oracle";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, user, pass);
	String query = "SELECT CustomerID FROM CUSTOMER WHERE CustomerID = " + request.getParameter("memberID") + " AND Password = " + request.getParameter("password");
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	ResultSetMetaData rsmd = rs.getMetaData();
	int cnt = rsmd.getColumnCount();
	
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
<%-- <jsp:include page="user_top.jsp“> 
  <jsp:param name=”data” value=”temp“/> 
</jsp:include>  --%>

</body>
</html>
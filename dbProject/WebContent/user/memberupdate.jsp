<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdate</title>
</head>
<body>
<% 
	String memberId = (String)session.getAttribute("memberId");

	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;

	String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
	String USER_NAME="min";
	String PASSWORD="seok";
	
	conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
	
	String query = "select * from CUSTOMER where CID_String = '" + memberId + "' order by CustomerID desc limit 1;";
	
	int cid = 0, pw = 0, age = 0;
	String gender, phone, job, road, detail;
	
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		cid = rs.getInt(1);
		pw = rs.getInt(2);
		age = rs.getInt(3);
		gender = rs.getString(4);
		phone = rs.getString(5);
		job = rs.getString(6);
		road = rs.getString(7);
		detail = rs.getString(8);
	}
	
	/* System.out.println(memberId);
	System.out.println("pw = " + pw);
	System.out.println(request.getParameter("passwd1")); */
	
	
	if(!(request.getParameter("passwd1").equals(Integer.toString(pw))))
	{
		System.out.println("비밀번호가 일치하지 않습니다");
	
		//out.println("<script>alert('비밀번호가 일치하지 않습니다.');</script>");	
%>

<script type="text/javascript">
alert("비밀번호가 일치하지 않습니다!");
location.href="memberupdate.html"; 
</script>

<%		
		//response.sendRedirect("memberupdate.html"); 
	}
	else
	{
		query = "update CUSTOMER set Password = " + request.getParameter("newpasswd") + ", Age = " + request.getParameter("age1") + ", Gender = '" + request.getParameter("gender1") + "', Phone_number = '" + request.getParameter("phone1") + "', Job = '" + request.getParameter("job1") + "', Roadname_address = '" + request.getParameter("roadname_address1") + "', Detailed_address = '" + request.getParameter("detailed_address1") + "' where CID_String = '" + memberId + "';";
		System.out.println(query);
		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate();
		
		//out.println("<script>alert('회원정보 수정이 완료되었습니다.');</script>");
%>
<script type="text/javascript">
alert("회원정보 수정이 완료되었습니다!");
location.href="user_initial.jsp"; // 메인으로 이동함
</script>
<%
		//response.sendRedirect("user_initial.jsp");
	}
	
	
	
%>
</body>
</html>
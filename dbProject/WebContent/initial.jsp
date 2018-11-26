<%@ page language="java" import ="dbProject.db_sql_excute" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	response.sendRedirect("user/user_initial.jsp"); 
%>

<%
db_sql_excute test=new db_sql_excute();
String sql="select * from MALL";
test.do_it(sql);
%>
</body>
</html>
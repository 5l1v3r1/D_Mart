<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin_login</title>
</head>
<body>
<%
	//연결해야함 login.jsp 참고 
	int cnt = 0;

	if(cnt >= 1)
	{
		//login success
		String memberId = request.getParameter("adminID");
		session.setAttribute("adminID", memberId);
		response.sendRedirect("admin_initial.jsp");
	}
	else
	{
		//login fail
		response.sendRedirect("login_fail.html");
	}
%>

</body>
</html>
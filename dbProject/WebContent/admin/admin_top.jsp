<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String adminId = (String)session.getAttribute("adminId");
if(adminId == null){
	response.sendRedirect("admin_login.html");
	return;
}
%>

<table style="width:80%">
	<tr>
		<td><a href="../initial.jsp">홈페이지</a></td>
		<td><a href="admin_logout.jsp">로그아웃</a></td>
		<td><a href="member_manage.jsp">회원관리</a></td>
		<td><a href="product_manage.jsp">상품관리</a></td>
		<td><a href="order_manage.jsp">주문관리</a></td>
	</tr>
</table>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String adminId = (String)session.getAttribute("adminId");
if(adminId == null){
	response.sendRedirect("admin_login.html");
	return;
}
%>

<table style="width:90%">
	<tr style="background-color:black; text-align:center;">
		<td><a href="../initial.jsp"><font color = "white" face = "Arial">홈페이지</font></a></td>
		<td><a href="admin_logout.jsp"><font color = "white" face = "Arial">로그아웃</font></a></td>
		<td><a href="nostock_check.jsp"><font color = "white" face = "Arial">재고확인</font></a></td>
		<td><a href="product_manage.jsp"><font color = "white" face = "Arial">상품관리</font></a></td>
		<td><a href="order_manage.jsp"><font color = "white" face = "Arial">매출관리</font></a></td>
	</tr>
</table>
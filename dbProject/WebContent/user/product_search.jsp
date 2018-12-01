<%@page import="pack.product.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="productMgr" class="pack.product.ProductMgr"/>

<%

Connection conn = null;
PreparedStatement pstmt;
ResultSet rs;

String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
String USER_NAME="min";
String PASSWORD="seok";

conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);

String search = request.getParameter("search");

//System.out.println(search);
ArrayList<ProductBean> list = productMgr.getProducts(search);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>

</head>
<body>
<h2><font face = "Arial">상품 상세보기</font></h2>
<%@include file="user_top.jsp" %>

<table border = "1">
<tr style = "text-align: center;">
 <td><font face = "Arial">상품명</font></td>
 <td><font face = "Arial">가격</font></td>
 <td><font face = "Arial">매장번호</font></td>
 <td><font face = "Arial">상세보기</font></td>
</tr>
<%	
	for(ProductBean p:list){
	%>
	<tr style="text-align: center;">
		<td><%=p.getIName() %></td>
		<td><%=p.getPrice() %></td>
		<td><%=p.getMnum() %></td>

		<td><a href="productdetail_user.jsp?number=<%=p.getInumber()%>"><font face = "Arial">보기</font></a></td>
	</tr>
	<%	
	}
%>

</table>

<%@include file="user_bottom.jsp" %>
</body>
</html>
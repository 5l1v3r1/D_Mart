<%@page import="pack.product.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
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

ArrayList<ProductBean> list = productMgr.getNoStockProducts();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고가 없는 물품</title>

</head>
<body>
<h2><font face = "Arial">상품 상세보기</font></h2>
<%@include file="admin_top.jsp" %>

<table border = "1">
<tr style = "text-align: center;">
 <td><font face = "Arial">상품명</font></td>
 <td><font face = "Arial">재고</font></td>
 <td><font face = "Arial">매장지역</font></td>
 <!-- <td><font face = "Arial">상세보기</font></td> -->
</tr>
<%	
	for(ProductBean p:list){
	%>
	<tr style="text-align: center;">
		<td><%=p.getIName() %></td>
		<td><%=p.getStock() %></td>
		<td><%=p.getCity() %></td>

		<%-- <td><a href="../user/productdetail_user.jsp?number=<%=p.getInumber()%>"><font face = "Arial">보기</font></a></td> --%>
	</tr>
	<%	
	}
%>

</table>

<%@include file="admin_bottom.jsp" %>
</body>
</html>
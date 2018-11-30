<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@page import="java.util.ArrayList"%>
<%@page import="pack.product.ProductBean"%>

<jsp:useBean id="productMgr" class="pack.product.ProductMgr" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Snack</title>
</head>
<body>
<form action = "vegetable.jsp" method = "POST">
	<table style="width: 90%">
	<tr>
		<td style ="font-size: 28px">D-MART</td>
	</tr>
	</table>
	
	<%@include file="user_top.jsp" %>
	
	<h3><font face = "Arial">과자/초콜릿/시리얼/빵 목록</font></h3>
	
<table border = "1">
<tr style = "text-align: center;">
 <td><font face = "Arial">상품명</font></td>
 <td><font face = "Arial">가격</font></td>
 <td><font face = "Arial">상세보기</font></td>
</tr>
<%
	ArrayList<ProductBean> list = productMgr.getProductAllS(); // productMgr 만들어서 연결은 자바클래스 사용하고 리턴값은 arrayList형태로 하기  
	
	for(ProductBean p:list){
	%>
	<tr style="text-align: center;">
		<td><%=p.getIName() %></td>
		<td><%=p.getPrice() %></td>

		<td><a href="productdetail_user.jsp?number=<%=p.getInumber()%>"><font face = "Arial">보기</font></a></td>
	</tr>
	<%	
	}
	%>

</table>
</form>

	<%@include file="user_bottom.jsp" %>


</body>
</html>
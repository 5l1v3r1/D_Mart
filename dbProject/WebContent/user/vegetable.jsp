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
<title>Vegetable</title>
</head>
<body>
<form action = "vegetable.jsp" method = "POST">
	<table style="width: 90%">
	<tr>
		<td style ="font-size: 28px">D-MART</td>
	</tr>
	</table>
	
	<%@include file="user_top.jsp" %>
	
	<h3><font face = "Arial">채소 목록</font></h3>
	
	<!-- <table>
	<tr>
		<td><font face = "Arial">소분류</font></td>
			<td>
				<select name = small_category>
					<option value = "0">선택하세요
					<option value = "1">고구마/호박고구마/감자 
					<option value = "2">상추/깻잎/쌈채소 
					<option value = "3">두부/콩나물 
				</select>
			</td>
	</tr>
	</table> -->
<table border = "1">
<tr style = "text-align: center;">
 <td><font face = "Arial">상품명</font></td>
 <td><font face = "Arial">가격</font></td>
 <td><font face = "Arial">매장 번호</font>
 <td><font face = "Arial">상세보기</font></td>
</tr>
<%
	ArrayList<ProductBean> list = productMgr.getProductAllV(); // productMgr 만들어서 연결은 자바클래스 사용하고 리턴값은 arrayList형태로 하기  
	
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
</form>

	<%@include file="user_bottom.jsp" %>


</body>
</html>
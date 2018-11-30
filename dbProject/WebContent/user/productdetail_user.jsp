<%@page import="pack.product.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="productMgr" class="pack.product.ProductMgr"/>

<%
String no = request.getParameter("number");
//System.out.println(no); //제대로 넘어옴 
ProductBean bean = productMgr.getProduct(no);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>

</head>
<body>
<h2><font face = "Arial">상품 상세보기</font></h2>
<%@include file="user_top.jsp" %>
<form action="cartproc.jsp">
<table style="width: 90%">
	<tr>
		<td style="width: 50%;  vertical-align: top;">
			<table style="width: 90%">
				<tr><td><font face = "Arial"> 번호 : </font></td><td><%=bean.getInumber() %></td></tr>
				<tr><td><font face = "Arial">상품명 : </font></td><td><%=bean.getIName() %></td></tr>
				<tr><td><font face = "Arial">가격 : </font></td><td><%=bean.getPrice() %></td></tr>
				<tr><td><font face = "Arial">등록일 : </font></td><td><%=bean.getIDate()%></td></tr>
				<tr><td><font face = "Arial">재고량 : </font></td><td><%=bean.getStock() %></td></tr>
				<tr><td><font face = "Arial">매장 번호 : </font></td><td><%=bean.getMnum() %></td></tr>
				<tr><td><font face = "Arial">생산자 : </font></td><td><%=bean.getImporter() %></td></tr>
				<tr><td><font face = "Arial">생산자 아이디 : </font></td><td><%=bean.getP_ID() %></td></tr>
				<tr><td><font face = "Arial">원산지 : </font></td><td><%=bean.getOrigin() %></td></tr>
				<tr><td><font face = "Arial">카테고리 번호 : </font></td><td><%=bean.getCnum() %></td></tr>
				
				<Tr>
					<td><font face = "Arial">주문 수량</font></td>
					<Td>
						<input type="text" name="quantity" value="1" size="5" style="text-align: center;">
					</Td>
				</Tr>
				<tr>
					<td colspan="3" style="text-align: center;">
						<Br>
						<input type="hidden" name="product_no" value="<%=bean.getInumber() %>"> <!-- 값을 넘기지만 보이지 않게 -->
						<input type="submit" value="장바구니에 담기">
						<input type="button" value="이전화면으로" onclick="history.back()">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>
<%@include file="user_bottom.jsp" %>
</body>
</html>
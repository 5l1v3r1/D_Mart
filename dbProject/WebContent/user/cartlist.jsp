<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack.product.ProductBean"%>

<jsp:useBean id="productMgr" class="pack.product.ProductMgr" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D-MART</title>

</head>
<body>
<form action = "orderproc.jsp" method = "POST">
<table style="width: 90%">
	<tr>
		<td style ="font-size: 28px">D-MART</td>
		</tr>
</table>

<%@ include file="user_top.jsp" %>


<table style="width: 90%">
<% if(memberId != null){%>
	<table border = "1">
		<tr style = "text-align: center;">
 		<td><font face = "Arial">상품명</font></td>
 		<td><font face = "Arial">매장</font></td>
		<td><font face = "Arial">구매</font></td>
		<td><font face = "Arial">삭제</font></td>
		</tr>
<%
	ArrayList<ProductBean> list = productMgr.getCartlist(memberId); // productMgr 만들어서 연결은 자바클래스 사용하고 리턴값은 arrayList형태로 하기  
	//request.setAttribute("cartlist", list); 
	
	for(ProductBean p:list){
	%>
	<tr style="text-align: center;">
		<td><%=p.getIName() %></td>
		<td><%=p.getCity() %></td>
		<%-- <input type="hidden" name="product_number" value="<%=p.getInumber() %>">
		<input type="hidden" name="product_name" value="<%=p.getIName() %>">
		<td><input type = "submit" value = "구매하기"></td> --%>
		<td><a href="orderproc.jsp?inumber=<%=p.getInumber()%>"><font face = "Arial">구매하기</font></a></td>
		<td><a href="cartlistDelete.jsp?inum=<%=p.getInumber()%>"><font face = "Arial">삭제하기</font></a></td>
	</tr>
	
	<%	
	}
%>
<!-- 구매 -->
	<!-- <input type = "submit" value = "구매하기" /> -->
<%
}

else{%>
	<script type="text/javascript">
		alert("로그인 후 이용해주세요");
		location.href="login.html"; 
	</script>
<%}%>
</table>
<%@ include file="user_bottom.jsp" %>
</table>
</form>		
</body>
</html>
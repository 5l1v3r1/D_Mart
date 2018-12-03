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
<table style="width: 90%">
	<tr>
		<td style ="font-size: 28px">D-MART</td>
		</tr>
</table>

<%@ include file="user_top.jsp" %>
<table style="width: 90%">
<% if(memberId != null){%>
	<tr style="text-align:center;">
		<td style="background-color:#FFCC00">
			<b><font color="white" face = "Arial"><b><%= memberId %>님! 방문을 환영합니다.</font><br>
			<!-- <img src="../imgs/dmart.png" width="100%"/> -->
			
			<!-- 추천 서비스 -->
			<pre align = "left"><font face = "Arial">           성별에 따른 추천                              나이에 따른 추천                            성별, 나이에 따른 추천 </font></pre>
			<div>
			<table style = "float: left" border = "1">
				<tr style = "text-align: center;">
 				<td><font face = "Arial">상품명</font></td>
 				<td><font face = "Arial">구매 횟수</font></td>
				</tr>
<%
	ArrayList<ProductBean> list1 = productMgr.getRecommandList1(); // productMgr 만들어서 연결은 자바클래스 사용하고 리턴값은 arrayList형태로 하기  
	
	for(ProductBean p:list1){
	%>
	<tr style="text-align: center;">
		<td><%=p.getIName() %></td>
		<td><%=p.getCount() %></td>
	</tr>
	<%	
	}
%>
			</table>
			
			<table style = "float: left" border = "1">
				<tr style = "text-align: center;">
 				<td><font face = "Arial">상품명</font></td>
 				<td><font face = "Arial">구매 횟수</font></td>
				</tr>
<%
	ArrayList<ProductBean> list2 = productMgr.getRecommandList2(); // productMgr 만들어서 연결은 자바클래스 사용하고 리턴값은 arrayList형태로 하기  
	
	for(ProductBean p:list2){
	%>
	<tr style="text-align: center;">
		<td><%=p.getIName() %></td>
		<td><%=p.getCount() %></td>
	</tr>
	<%	
	}
%>
			</table>
			
			<table style = "float: left" border = "1">
				<tr style = "text-align: center;">
 				<td><font face = "Arial">상품명</font></td>
 				<td><font face = "Arial">구매 횟수</font></td>
				</tr>
<%
	ArrayList<ProductBean> list3 = productMgr.getRecommandList3(); // productMgr 만들어서 연결은 자바클래스 사용하고 리턴값은 arrayList형태로 하기  
	
	for(ProductBean p:list2){
	%>
	<tr style="text-align: center;">
		<td><%=p.getIName() %></td>
		<td><%=p.getCount() %></td>
	</tr>
	<%	
	}
%>
			</table>
			</div>
		</td>
	<tr>
<%}else{%>
	<tr style="text-align:center;">
		<td style="background-color:#FFCC00">
			<b><font color="white" face = "Arial">로그인 이후 이용하세요!</font></b>
			<img src="../imgs/dmart.png" width="100%"/>
		</td>
	<tr>
<%}%>
</table>
<%@ include file="user_bottom.jsp" %>		
</body>
</html>
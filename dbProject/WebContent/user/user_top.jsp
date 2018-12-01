<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%

String memberId = (String)session.getAttribute("memberId");


String log = "";
if(memberId == null){
	log = "<a href='login.html'><font color = \"white\" face = \"Arial\">로그인</font></a>"; 
}else{
	log = "<a href='logout.jsp'><font color = \"white\" face = \"Arial\">로그아웃</font></a>";
}

String mem ="";
if(memberId == null){
	mem = "<a href='../user/signup.html'><font color = \"white\" face = \"Arial\">회원가입</font></a>"; 
}else{
	mem = "<a href='../user/memberupdate.html'><font color = \"white\" face = \"Arial\">회원정보 수정</font></a>";
}

%>
<table style="width: 90%">
	<tr style="background-color:black; text-align:center;">
		<td><%=log %></td>
		<td><%=mem %></td>
		<td><a href="productlist.jsp"><font color = "white" face = "Arial">상품목록</font></a></td>
		<td><a href="cartlist.jsp"><font color = "white" face = "Arial">장바구니</font></a></td>
		<td><a href="orderlist.jsp"><font color = "white" face = "Arial">구매목록</font></a></td>
	</tr>

</table>
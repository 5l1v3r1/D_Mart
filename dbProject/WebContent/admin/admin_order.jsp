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

String query = "update ITEM set stock = stock + " + request.getParameter("admin_quantity") + " where Inumber = " + request.getParameter("product_num") + ";";
pstmt = conn.prepareStatement(query);
System.out.println(query);
pstmt.executeUpdate();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물품 주문</title>

<script type="text/javascript">
alert("물품 주문이 완료되었습니다!");
location.href="admin_initial.jsp"; // 메인으로 이동함
</script>

</head>
<body>

</body>
</html>
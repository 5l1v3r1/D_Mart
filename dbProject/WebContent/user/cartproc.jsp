<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cartProc</title>
</head>
<body>
<% 
	String memberId = (String)session.getAttribute("memberId");
	String iname = request.getParameter("product_no");
	String inum = request.getParameter("product_num");

	//System.out.println(iname);
	
	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;

	String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
	String USER_NAME="min";
	String PASSWORD="seok";
	
	conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
	
	String query = "select CustomerID from CUSTOMER where CID_String='" + memberId + "';";
	
	
	int cartID = 0, CustomerID = 0;
	//System.out.println(memberId);
	
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		CustomerID = rs.getInt(1);
	}
	/* System.out.println(cartID);
	System.out.println(CustomerID); */
	cartID = CustomerID;
	
	int c = 0;
	query = "select count(*) from CART_PRODUCT_LIST where Product_list = '" + iname + "' and CartIDe = " + cartID + " and CustomerIDen = " + CustomerID + " and Inum_c = " + inum + ";";   
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		c = rs.getInt(1);
	}
	System.out.println(c);
	if(c > 0)
	{
		c = 0;
		%>
		<script type="text/javascript">
		alert("이미 담긴 상품입니다!");
		location.href="productlist.jsp"; 
		</script>
		
		<%
	}
	else
	{
		query = "INSERT INTO CART_PRODUCT_LIST VALUES('" + iname + "', " + cartID + ", " + CustomerID + ", " + inum + ");"; //
		System.out.println(query);
		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate();
	}
	
	
	
	//System.out.println(memberId);
	
	
%>

	<script type="text/javascript">
		alert("장바구니에 담겼습니다!");
		location.href="productlist.jsp"; 
	</script>
</body>
</html>
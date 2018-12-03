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
	String inum = request.getParameter("inum");
	String iname = null;

	//System.out.println(iname);
	
	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;

	String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
	String USER_NAME="min";
	String PASSWORD="seok";
	
	conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
	
	String query = "select CartID,CustomerIDe from CART ,CUSTOMER where CustomerIDe=CustomerID and CID_String='" + memberId + "';";
	
	int cartID = 0, CustomerID = 0;
	
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		cartID = rs.getInt(1);
		CustomerID = rs.getInt(2);
	}
	
	query = "select IName from ITEM where Inumber = " + inum + ";";
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		iname = rs.getString(1);
	}
	
	query = "delete from CART_PRODUCT_LIST where Product_list = '" + iname + "' and CartIDe = " + cartID + " and CustomerIDen = " + CustomerID + " and Inum_c = " + inum + ";"; //
	System.out.println(query);
	pstmt = conn.prepareStatement(query);
	pstmt.executeUpdate();
	
	//System.out.println(memberId);
	
	
%>

	<script type="text/javascript">
		alert("삭제되었습니다!");
		location.href="cartlist.jsp"; 
	</script>
</body>
</html>
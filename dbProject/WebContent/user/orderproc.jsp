<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="pack.product.ProductBean"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderProc</title>
</head>
<body>
<% 
	/* ArrayList<ProductBean> list = new ArrayList<>();
	list = (ArrayList)request.getAttribute("cartlist"); */
	
	/* String inum = request.getParameter("product_number");
	String iname = request.getParameter("product_name"); */
	String inumber = request.getParameter("inumber");
	String iname = null;
	
	//System.out.println(iname);
	int cid = 0;
	String cname = (String)session.getAttribute("memberId");

	
	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;

	String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
	String USER_NAME="min";
	String PASSWORD="seok";
	
	conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
	//trasaction set 
	conn.setTransactionIsolation(java.sql.Connection.TRANSACTION_READ_COMMITTED);
	conn.setAutoCommit(false);
	//---
	String query = "select count(Onumber) from ORDER_;";
	
	int Onum = 0, a;
	
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		Onum = rs.getInt(1);
	}
	a = Onum;
	
	
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	String today = simpleDate.format(date);
	//System.out.println(today);
	query = "select CustomerID from CUSTOMER where CID_String = \"" +  cname + "\";";
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		cid = rs.getInt(1);
	}
	
	query = "select IName from ITEM where INumber = " + inumber + ";";
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		iname = rs.getString(1);
	}
	//System.out.println(iname);
	
	//재고 확인
	query = "select Stock from ITEM where IName = '" + iname + "' and INumber = " + inumber + ";";
	System.out.println(iname);
	System.out.println(inumber);
	
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	int stock = 0;
	while(rs.next())
	{
		stock = rs.getInt(1);
	}
	System.out.println(stock);
	
	if(stock <= 0)
	{
		conn.setTransactionIsolation(1);
		%>
		<script type="text/javascript">
		alert("재고가 부족합니다!");
		location.href="cartlist.jsp"; 
		</script>
		<%
	}
	else
	{
		/* query = "set tx_isolation = 'READ-COMMITTED';";
		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate(); */
		
		query = "INSERT INTO ORDER_ VALUES(0," + cid + ",\"" + today + "\",\"" + today + "\"," + a + ");";
		System.out.println(query);
		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate();
		
		query = "INSERT INTO ORDER_LIST VALUES(0," + cid + ", " + a + ", '" + iname + "', " + inumber + " ," + a + ");";
		System.out.println(query);
		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate();
		
		query = "UPDATE ITEM SET stock = stock-1 WHERE INumber=" + inumber + ";";
		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate();
		
		/* query = "commit;";
		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate(); */
		//http://jijs.tistory.com/entry/트랜잭션-격리레벨-테슽
		conn.commit();
	}
	conn.close();
	
%>

	<script type="text/javascript">
		alert("주문이 완료되었습니다!");
		location.href="productlist.jsp"; 
	</script>
</body>
</html>
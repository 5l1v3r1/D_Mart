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
	String iname = request.getParameter("iname");
	String inum = null;
	
	System.out.println(iname);
	int cid = (int)session.getAttribute("cID");

	
	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;

	String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
	String USER_NAME="min";
	String PASSWORD="seok";
	
	conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
	
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
	
	query = "select INumber from ITEM where IName = \"" + iname+ "\";";
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		inum = rs.getString(1);
	}
	System.out.println(inum);
	
	
	query = "INSERT INTO ORDER_ VALUES(0," + cid + ",\"" + today + "\",\"" + today + "\"," + a + ");";
	//System.out.println(query);
	pstmt = conn.prepareStatement(query);
	pstmt.executeUpdate();
	
	query = "INSERT INTO ORDER_LIST VALUES(0," + cid + ", " + cid + ", '" + iname + "', " + inum + ");";
	pstmt = conn.prepareStatement(query);
	pstmt.executeUpdate();
	//System.out.println(memberId);
	
	
%>

	<script type="text/javascript">
		alert("주문이 완료되었습니다!");
		location.href="productlist.jsp"; 
	</script>
</body>
</html>
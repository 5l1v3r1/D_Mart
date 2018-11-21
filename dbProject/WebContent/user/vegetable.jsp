<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vegetable</title>
</head>
<body>
<% 
String serverIP = "localhost";
String strSID = "xe";
String portNum = "59161";
String url = "jdbc:oracle:thin:@"+serverIP+":"+portNum+":"+strSID;
String user = "system";
String pass = "oracle";

Connection conn;
PreparedStatement pstmt;
ResultSet rs;
Class.forName("oracle.jdbc.driver.OracleDriver");
conn = DriverManager.getConnection(url, user, pass);
String query = "SELECT * FROM ITEM WHERE Cnum = 0";
pstmt = conn.prepareStatement(query);
rs = pstmt.executeQuery();

out.println("<table border=\"1\">");
ResultSetMetaData rsmd = rs.getMetaData();
int cnt = rsmd.getColumnCount();
for(int i = 1; i <= cnt; i++)
{
	out.println("<th>" + rsmd.getColumnName(i) + "</th>");
}
while(rs.next())
{
	out.println("<tr>");
	
	SimpleDateFormat sdfDate =new SimpleDateFormat("yyyy-MM-dd");
	Date mgrStartDate = rs.getDate(1);
	String strMSDate = sdfDate.format(mgrStartDate);
	out.println("<td>" + strMSDate + "</td>");
	
	out.println("<td>" + rs.getString(2) + "</td>");
	out.println("<td>" + rs.getString(3) + "</td>");
	out.println("<td>" + rs.getString(4) + "</td>");
	
	
	out.println("</tr>");
}
out.println("</table>");
pstmt.close();
%>

</body>
</html>
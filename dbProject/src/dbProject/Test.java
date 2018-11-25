package dbProject;
import java.sql.*;

public class Test {
	 
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
		//final String DB_URL="jdbc:mysql://127.0.0.1:3306/smart?&userSSL=false";
		final String DB_URL="jdbc:mysql://192.168.125.129:3306/smart?&userSSL=false";
		final String USER_NAME="hathor888";
		final String PASSWORD="1234as";
		
		Connection conn=null;
		Statement state=null;
		System.out.println("Mysql Test");
		try {
			Class.forName(JDBC_DRIVER);
			System.out.println("1");
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			System.out.println("2");
			System.out.println("Mysql Connection");
			state = conn.createStatement();
			String sql;
			sql="select * from CATEGORY";
			ResultSet rs=state.executeQuery(sql);
			
			while(rs.next())
			{
				String L=rs.getString("Large_category");
				String S=rs.getString("Small_category");
				String C=rs.getString("Cnumber");
				System.out.println(L+" "+S+" "+C);
			}
			rs.close();
			state.close();
			conn.close();
			
		}catch(Exception e) {
			System.err.println(e);
		}finally {
			try {
				if(state!=null)
					state.close();
			}catch(SQLException ex1) {
				System.err.println(ex1);
			}
			
			try {
				if(conn!=null)
					conn.close();
			}catch(SQLException ex1) {
				System.err.println(ex1);
			}
		}
		System.out.println("Mysql Close");
	}

}

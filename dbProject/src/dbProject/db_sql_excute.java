package dbProject;
import java.sql.*;

public class db_sql_excute {
	
	public ResultSet do_it(String sql)
	{
		final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
		//final String DB_URL="jdbc:mysql://127.0.0.1:3306/smart?&userSSL=false";
		final String DB_URL="jdbc:mysql://192.168.125.129:3306/smart?&userSSL=false";
		final String USER_NAME="hathor888";
		final String PASSWORD="1234as";
		ResultSet rs=null;
		Connection conn=null;
		Statement state=null;
		
		try {
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			System.out.println("Mysql Connection");
			state = conn.createStatement();
			String run_sql=sql;
			rs=state.executeQuery(run_sql);
			System.out.println(rs);
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
		
		return rs;
	}
	
}

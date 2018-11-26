package dbProject;
import java.sql.*;

public class Test {
	 
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		db_sql_excute test=new db_sql_excute();
		String sql="select * from MALL";
		test.do_it(sql);
	}

}

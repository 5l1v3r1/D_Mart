package pack.product;

import java.sql.*;
import java.util.ArrayList;


//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.servlet.http.HttpServletRequest;
//import javax.sql.DataSource;


public class ProductMgr {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	//private Statement stmt;
	//private DataSource ds;
	
	final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	//final String DB_URL="jdbc:mysql://127.0.0.1:3306/smart?&userSSL=false";
	final String DB_URL="jdbc:mysql://127.0.0.1:3306/mysql?&userSSL=false";
	final String USER_NAME="min";
	final String PASSWORD="seok";
	
	
	public ProductMgr() {
		
		try {
			Class.forName(JDBC_DRIVER);
			
		}catch(Exception e) {
			System.err.println(e);
		}
	
	}
	public ArrayList<ProductBean> getProductAll(){ 
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String sql = "select * from ITEM;";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) 
			{
				ProductBean bean = new ProductBean();
				bean.setIDate(rs.getString("idate"));
				bean.setStock(rs.getInt("stock"));
				bean.setIName(rs.getString("iname"));
				bean.setMnum(rs.getInt("mnum"));
				bean.setInumber(rs.getInt("inumber"));
				bean.setImporter(rs.getString("importer"));
				bean.setProducer(rs.getString("producer"));
				bean.setOrigin(rs.getString("origin"));
				bean.setP_ID(rs.getInt("p_id"));
				bean.setCnum(rs.getInt("cnum"));
				bean.setPrice(rs.getInt("price"));
				
				list.add(bean);				
			}
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}
	
	public ArrayList<ProductBean> getProductAllV(){  // 채소 가져오기 
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String sql = "select * from ITEM where Cnum = 1 or Cnum = 2 or Cnum = 3 order by mnum;";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) 
			{
				ProductBean bean = new ProductBean();
				bean.setIDate(rs.getString("idate"));
				bean.setStock(rs.getInt("stock"));
				bean.setIName(rs.getString("iname"));
				bean.setMnum(rs.getInt("mnum"));
				bean.setInumber(rs.getInt("inumber"));
				bean.setImporter(rs.getString("importer"));
				bean.setProducer(rs.getString("producer"));
				bean.setOrigin(rs.getString("origin"));
				bean.setP_ID(rs.getInt("p_id"));
				bean.setCnum(rs.getInt("cnum"));
				bean.setPrice(rs.getInt("price"));
				//bean.setCity(rs.getString("city"));
				
				
				list.add(bean);				
			}
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}
	
	public ArrayList<ProductBean> getProductAllS(){  // 과자  가져오기 
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String sql = "select * from ITEM where Cnum = 4 or Cnum = 5 or Cnum = 6 order by mnum;";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) 
			{
				ProductBean bean = new ProductBean();
				bean.setIDate(rs.getString("idate"));
				bean.setStock(rs.getInt("stock"));
				bean.setIName(rs.getString("iname"));
				bean.setMnum(rs.getInt("mnum"));
				bean.setInumber(rs.getInt("inumber"));
				bean.setImporter(rs.getString("importer"));
				bean.setProducer(rs.getString("producer"));
				bean.setOrigin(rs.getString("origin"));
				bean.setP_ID(rs.getInt("p_id"));
				bean.setCnum(rs.getInt("cnum"));
				bean.setPrice(rs.getInt("price"));
				
				list.add(bean);				
			}
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}
	
	public ArrayList<ProductBean> getProductAllF(){  // 과일  가져오기 
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String sql = "select * from ITEM where Cnum = 7 or Cnum = 8 or Cnum = 9 order by mnum;";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) 
			{
				ProductBean bean = new ProductBean();
				bean.setIDate(rs.getString("idate"));
				bean.setStock(rs.getInt("stock"));
				bean.setIName(rs.getString("iname"));
				bean.setMnum(rs.getInt("mnum"));
				bean.setInumber(rs.getInt("inumber"));
				bean.setImporter(rs.getString("importer"));
				bean.setProducer(rs.getString("producer"));
				bean.setOrigin(rs.getString("origin"));
				bean.setP_ID(rs.getInt("p_id"));
				bean.setCnum(rs.getInt("cnum"));
				bean.setPrice(rs.getInt("price"));
				
				list.add(bean);				
			}
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}
	
	
	public ProductBean getProduct(String no) {
		ProductBean bean = null;
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String sql = "select * from ITEM, MALL where INumber = " + no + " and Mnumber = Mnum;";
			pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean = new ProductBean();
				bean.setIDate(rs.getString("idate"));
				bean.setStock(rs.getInt("stock"));
				bean.setIName(rs.getString("iname"));
				bean.setMnum(rs.getInt("mnum"));
				bean.setInumber(rs.getInt("inumber"));
				bean.setImporter(rs.getString("importer"));
				bean.setProducer(rs.getString("producer"));
				bean.setOrigin(rs.getString("origin"));
				bean.setP_ID(rs.getInt("p_id"));
				bean.setCnum(rs.getInt("cnum"));
				bean.setPrice(rs.getInt("price"));
				bean.setCity(rs.getString("city"));
			}		
		} catch (Exception e) {
			System.out.println("getProduct err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return bean;
	}
	
	public ArrayList<ProductBean> getProducts(String search){  
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String sql = "select * from ITEM where IName LIKE \"%" + search + "%\";";
			//System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) 
			{
				ProductBean bean = new ProductBean();
				bean.setIDate(rs.getString("idate"));
				bean.setStock(rs.getInt("stock"));
				bean.setIName(rs.getString("iname"));
				bean.setMnum(rs.getInt("mnum"));
				bean.setInumber(rs.getInt("inumber"));
				bean.setImporter(rs.getString("importer"));
				bean.setProducer(rs.getString("producer"));
				bean.setOrigin(rs.getString("origin"));
				bean.setP_ID(rs.getInt("p_id"));
				bean.setCnum(rs.getInt("cnum"));
				bean.setPrice(rs.getInt("price"));
				
				list.add(bean);				
			}
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}
	
	public ArrayList<ProductBean> getNoStockProducts(){  
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String sql = "select IName,INumber,City,Stock from MALL,ITEM where Mnumber = Mnum and Stock<=0;";
			//System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) 
			{
				ProductBean bean = new ProductBean();
				
				bean.setCity(rs.getString("city"));
				bean.setStock(rs.getInt("stock"));
				bean.setIName(rs.getString("iname"));
				bean.setInumber(rs.getInt("inumber"));
				
				list.add(bean);				
			}
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}

	public ArrayList<ProductBean> getCartlist(String memberId){  
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String query = "select INumber,Product_list,City from MALL,ITEM,CART_PRODUCT_LIST,CUSTOMER where CID_String='" + memberId + "' and CustomerID=CustomerIden and INumber=Inum_c and Mnumber=Mnum;";
			
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				ProductBean bean = new ProductBean();
				
				bean.setIName(rs.getString("Product_list"));
				bean.setCity(rs.getString("city"));
				bean.setInumber(rs.getInt("inumber"));
				
				list.add(bean);
			}
		
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}
	
	public ArrayList<ProductBean> getRecommandList1(){  
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String query = "select I.IName,count(*) as total from CUSTOMER AS C,ORDER_LIST AS OL ,ITEM AS I where C.Gender = 'boy' and OL.lCustomerIDenti = C.CustomerID and OL.Order_list=I.IName group by I.IName order by total desc limit 5;";
			
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				ProductBean bean = new ProductBean();
				
				bean.setIName(rs.getString(1));
				bean.setCount(rs.getInt(2));
				
				list.add(bean);
			}
		
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}
	
	public ArrayList<ProductBean> getRecommandList2(){  
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String query = "select I.IName,count(*) as total \r\n" + 
					"from CUSTOMER AS C,ORDER_LIST AS OL ,ITEM AS I \r\n" + 
					"where C.Age BETWEEN 20 and 29 and OL.lCustomerIDenti = C.CustomerID and OL.Order_list=I.IName group by I.IName order by total desc limit 5;";
			
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				ProductBean bean = new ProductBean();
				
				bean.setIName(rs.getString(1));
				bean.setCount(rs.getInt(2));
				
				list.add(bean);
			}
		
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}
	
	public ArrayList<ProductBean> getRecommandList3(){  
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String query = "select I.IName,count(*) as total \r\n" + 
					"from CUSTOMER AS C,ORDER_LIST AS OL ,ITEM AS I \r\n" + 
					"where C.Gender = 'boy'and C.Age BETWEEN 20 and 29 and OL.lCustomerIDenti = C.CustomerID and OL.Order_list=I.IName group by I.IName order by total desc limit 5;";
			
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				ProductBean bean = new ProductBean();
				
				bean.setIName(rs.getString(1));
				bean.setCount(rs.getInt(2));
				
				list.add(bean);
			}
		
		} catch (Exception e) {
			System.out.println("ProductBean err:" + e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}	
		}
		return list;
	}
	
}

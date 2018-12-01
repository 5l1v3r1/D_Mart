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
	
	public ArrayList<ProductBean> getProductAllV(){  // 채소 가져오기 
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String sql = "select * from ITEM where Cnum = 1 or Cnum = 2 or Cnum = 3;";
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
	
	public ArrayList<ProductBean> getProductAllS(){  // 과자  가져오기 
		ArrayList<ProductBean> list = new ArrayList<>();
		try {
			conn=DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			String sql = "select * from ITEM where Cnum = 4 or Cnum = 5 or Cnum = 6;";
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
			String sql = "select * from ITEM where Cnum = 7 or Cnum = 8 or Cnum = 9;";
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
			String sql = "select * from ITEM where INumber = " + no;
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
	
	public ArrayList<ProductBean> getProducts(String search){  // 과일  가져오기 
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
//	public boolean updateProduct(HttpServletRequest request) {
//		boolean b = false;
//		try {
//			String uploadDir ="C:/Users/kitcoop/git/espriter_blog_practice_kic/espriter_blog_bbs/WebContent/data";
//			//MultipartRequest multi=new MultipartRequest(request, savePath, sizeLimit, new DefaultFileRenamePolicy());
//			MultipartRequest multi = new MultipartRequest(request, uploadDir, 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
//			
//			conn = ds.getConnection();
//			
//			if(multi.getFilesystemName("image") == null) {
//				String sql ="update shop_product set name=?, price=?, detail=?, stock=? where no=?";
//				pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1,multi.getParameter("name"));
//				pstmt.setString(2,multi.getParameter("price"));
//				pstmt.setString(3,multi.getParameter("detail"));
//				pstmt.setString(4,multi.getParameter("stock"));
//				pstmt.setString(5,multi.getParameter("no"));
//				
//			}else {
//				String sql ="update shop_product set name=?, price=?, detail=?, stock=?, image=? where no=?";
//				pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1,multi.getParameter("name"));
//				pstmt.setString(2,multi.getParameter("price"));
//				pstmt.setString(3,multi.getParameter("detail"));
//				pstmt.setString(4,multi.getParameter("stock"));
//				pstmt.setString(5,multi.getFilesystemName("image"));
//				pstmt.setString(6,multi.getParameter("no"));
//			}
//			if(pstmt.executeUpdate() > 0 ) b = true;			
//		} catch (Exception e) {
//			System.out.println("updateProduct err:" + e);
//		}finally {
//			try {
//				if(rs != null) rs.close();
//				if(pstmt != null) pstmt.close();
//				if(conn != null) conn.close();
//			} catch (Exception e2) {
//				// TODO: handle exception
//			}	
//		}
//	
//	return b;
//}
//	
//	public void reduceProduct(OrderBean order) {
//		try {
//			conn = ds.getConnection();
//			String sql = "update shop_product set stock=stock - ? where no=?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, order.getQuantity());
//			pstmt.setString(2, order.getProduct_no());
//			pstmt.executeUpdate();
//		} catch (Exception e) {
//			System.out.println("reduceProduct err:" + e);
//		}finally {
//			try {
//				if(rs != null) rs.close();
//				if(pstmt != null) pstmt.close();
//				if(conn != null) conn.close();
//			} catch (Exception e2) {
//				// TODO: handle exception
//			}	
//		}
//	}
	
}

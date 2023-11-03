package AdiminLogin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import dbConnection.DBConnection;

public class AdminLoginDAO {
	private static AdminLoginDAO aliDAO;
	
	private AdminLoginDAO() {
		
	}//constructor
	
	public static AdminLoginDAO getInstance() {
		if(aliDAO==null) {
			aliDAO=new AdminLoginDAO();
		}//if
		return aliDAO;
	}//getInstance
	
	public AdminVO selectAdminLogin(String id,String pass) throws SQLException, NamingException{
		AdminVO aVO=null;
		
		DBConnection db=DBConnection.getInstance();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			System.out.println("asdfasdf");
			con=db.getCon();
			
			String sql="select * from administrator where id=?";

			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
			aVO=new AdminVO();
			aVO.setId(rs.getString("id"));
			aVO.setPassword(rs.getString("password"));
			}
		}finally {
			db.dbClose(null, pstmt, con);
		}
		
		return aVO;
	}
}//class

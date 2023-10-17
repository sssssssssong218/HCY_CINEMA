package AdiminLogin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

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
		
		Context ctx=null;
		DataSource ds=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		AdminVO aVO=null;
		try {
			ctx=new InitialContext();
		
		ds=(DataSource)ctx.lookup("java:comp/env/jdbc/dbcp");
		
		con=ds.getConnection();
		
		pstmt=con.prepareStatement("select id,password from administrator where id=? and password=?");
	
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		
		rs=pstmt.executeQuery();
		
		while(rs.next()) {
			aVO=new AdminVO();
			aVO.setId(id);
			aVO.setPassword(pass);
		}
		
		} finally {
			pstmt.close();
			con.close();
		}
		
		return aVO;
		
	}
}//class

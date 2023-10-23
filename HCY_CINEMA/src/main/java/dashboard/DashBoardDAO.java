package dashboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import dbConnection.DBConnection;
import manageMember.MemberVO;

public class DashBoardDAO {
	private static DashBoardDAO dbDAO;
	
	public DashBoardDAO() {
		
	}//constructor
	
	public static DashBoardDAO getInstance() {
		if(dbDAO==null) {
			dbDAO=new DashBoardDAO();
		}//end if
		
		return dbDAO;
	}//getInstance
	
	public List<String> selectMovieCntInfo()throws SQLException{
		List<String> list=new ArrayList<String>();
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement patmt=null;
		ResultSet rs=null;
		
		
		try {
			con=db.getCon();
			
			String selectMovieCnt="";
			
		}finally {
		db.dbClose(rs, patmt, con);
		}
		return list;
	}
	
}//class

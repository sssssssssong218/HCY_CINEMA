package dashboard;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<MemberVO> selectMember(){
		List<MemberVO> list=new ArrayList<MemberVO>();
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		return list;
	}
	
}//class

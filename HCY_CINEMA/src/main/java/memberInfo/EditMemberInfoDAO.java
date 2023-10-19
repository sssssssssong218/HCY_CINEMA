package memberInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbConnection.DBConnection;

public class EditMemberInfoDAO {
	private static EditMemberInfoDAO emiDAO;
	
	public EditMemberInfoDAO() {
	}//constructor
	
	public static EditMemberInfoDAO getInstance() {
		if(emiDAO==null) {
			emiDAO=new EditMemberInfoDAO();
		}//end if
		
		return emiDAO;
	}//getInstance
	
	public MemberVO selectLogin(MemberVO mVO) throws SQLException {
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = db.getCon();
			String selectLogin = "";
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		return mVO;
	}//selectLogin
	
	public String selectFindID(MemberVO mVO) {
		String result = "";
		
		return result;
	}//selectFindID
	
	public String selectFindPW(MemberVO mVO) {
		String result = "";
		
		return result;
	}//selectFindPW
	
	public boolean updatePW(MemberVO mVO) {
		boolean flag = false;
		
		return flag;
	}//updatePW
	
	public MemberVO selectCheckMember(MemberVO mVO) {
		
		return mVO;
	}//selectCheckMember
	
	public boolean selectCheckID(MemberVO mVO) {
		boolean flag = false;
		
		return flag;
	}//selectCheckID
	
	public void insertJoinMember(MemberVO mVO) {
		
	}//insertJoinMember
}//class

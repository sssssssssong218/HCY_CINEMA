package manageMember;

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
	
	public void updateMemberStatus(String id, MemberVO mVO) throws SQLException {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			
			String updateMemberStatus="update member set ID = ?, MNAME = ?, TEL = ?, EMAIL = ? where id=?";
			
			pstmt=con.prepareStatement(updateMemberStatus);
			
			pstmt.setString(1, id);
			pstmt.setString(2, mVO.getMname());
			pstmt.setString(3, mVO.getTel());
			pstmt.setString(4, mVO.getEmail());
			pstmt.setString(5, mVO.getId());
			
			pstmt.executeUpdate();
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}
	}//updateMemberStatus
}//class

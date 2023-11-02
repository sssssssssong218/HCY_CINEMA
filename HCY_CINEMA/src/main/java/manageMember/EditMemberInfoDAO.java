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
	
	public boolean selectFindPW(String id,String pass) throws SQLException {
		boolean flag = false;
		
		DBConnection db = DBConnection.getInstance();
		
		Connection con =null;;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = db.getCon();
			
			String selectFindPW = "SELECT count(*) from MEMBER  where ID = ? and PASSWORD = ?";
			
			pstmt = con.prepareStatement(selectFindPW);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			
			rs = pstmt.executeQuery();
			rs.next();
			if(rs.getInt(1) == 1) {
				flag = true;
			}//if
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		
		return flag;
	}//selectFindPW
	
	public void updatePW(String id,String pass) throws SQLException {
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt =null;
		
		try {
			con = db.getCon();
			
			String updatePW = "UPDATE MEMBER set PASSWORD = ? where ID = ?";
			
			pstmt = con.prepareStatement(updatePW);
			pstmt.setString(1, pass);
			pstmt.setString(2, id);
			
			pstmt.executeUpdate();
		}finally {
			db.dbClose(null, pstmt, con);
		}//finally
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

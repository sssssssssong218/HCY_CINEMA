package manageMember;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbConnection.DBConnection;

public class LoginDAO {
private static LoginDAO liDAO;

private LoginDAO() {
}//constructor

public static LoginDAO getInstance() {
	if(liDAO == null) {
		liDAO = new LoginDAO();
	}//if
	return liDAO;
}//getInstance

public MemberVO selectLogin(MemberVO mVO) throws SQLException {
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String selectLogin = "select ID, MNAME, BIRTH, TEL, EMAIL, JOINDATE FROM MEMBER WHERE id=? and PASSWORD =?";
		
		pstmt = con.prepareStatement(selectLogin);
		pstmt.setString(1, mVO.getId());
		pstmt.setString(2, mVO.getPassword());
		
		rs=pstmt.executeQuery();
		
		if(rs.next()) {
			mVO.setMname(rs.getString("MNAME"));
			mVO.setBirth(rs.getString("BIRTH"));
			mVO.setTel(rs.getString("tel"));
			mVO.setEmail(rs.getString("email"));
			mVO.setJoindate(rs.getDate("joindate"));
			System.out.println("도라이?");
			
			return mVO;
		}//if
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	return null;
}//selectLogin

public String selectFindID(MemberVO mVO) {
	String result = "";
	
	return result;
}//selectFindID

public boolean selectFindPW(MemberVO mVO) throws SQLException {
	boolean flag = false;
DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String updatePW = "SELECT ID FROM MEMBER WHERE ID = ? and TEL = ? and EMAIL = ?";
		
		pstmt = con.prepareStatement(updatePW);
		
		pstmt.setString(1, mVO.getId());
		pstmt.setString(2, mVO.getTel());
		pstmt.setString(3, mVO.getEmail());
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			flag=true;
		}//if
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	return flag;
}//selectFindPW

public boolean updatePW(MemberVO mVO) throws SQLException {
	boolean flag = false;
	
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		con = db.getCon();
		
		String updatePW = "UPDATE MEMBER set PASSWORD = ? where id = ?";
		
		pstmt = con.prepareStatement(updatePW);
		
		pstmt.setString(1, mVO.getPassword());
		pstmt.setString(2, mVO.getId());
		
		if(pstmt.executeUpdate()==1) {
			flag=true;
		}//if
	}finally {
		db.dbClose(null, pstmt, con);
	}//finally
	return flag;
}//updatePW

public MemberVO selectCheckMember(MemberVO mVO) {
	return mVO;
}//selectCheckID

public boolean selectCheckID(String id) {
	boolean flag = false;
	
	return flag;
}//selectCheckID

public void insertJoinMember(MemberVO mVO) {
	
}//insertJoinMember
}//class

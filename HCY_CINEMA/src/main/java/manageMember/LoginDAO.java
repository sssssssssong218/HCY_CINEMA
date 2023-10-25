package manageMember;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbConnection.DBConnection;
import oracle.security.crypto.core.EntropySource;

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
			
			return mVO;
		}//if
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	return null;
}//selectLogin

public String selectFindID(MemberVO mVO) throws SQLException {
	String result = "";
	
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String selectFindID = "SELECT ID FROM MEMBER WHERE MNAME = ? and BIRTH = ? and TEL = ?";
		
		pstmt = con.prepareStatement(selectFindID);
		
		pstmt.setString(1, mVO.getMname());
		pstmt.setString(2, mVO.getBirth());
		pstmt.setString(3, mVO.getTel());
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			result = rs.getString("id");
		}//if
		
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
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

public boolean selectCheckMember(MemberVO mVO) throws SQLException {
	boolean flag = false;
	
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String selectCheckMember = "SELECT ID FROM MEMBER WHERE mname = ? and birth = ? and tel = ?";
		
		pstmt = con.prepareStatement(selectCheckMember);
		
		pstmt.setString(1, mVO.getMname());
		pstmt.setString(2, mVO.getBirth());
		pstmt.setString(3, mVO.getTel());
		
		rs = pstmt.executeQuery();
		
		flag = rs.next();
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
	return flag;
}//selectCheckID

public boolean selectCheckID(String id) throws SQLException {
	boolean flag = false;
	
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String selectCheckId = "select id from MEMBER where ID = ?";
		
		pstmt = con.prepareStatement(selectCheckId);
		
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
			flag=rs.next();
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
	return flag;
}//selectCheckID

public void insertJoinMember(MemberVO mVO) throws SQLException {
	DBConnection db =DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		con = db.getCon();
		
		String insertJoinMember="INSERT INTO MEMBER(ID, PASSWORD, MNAME, BIRTH, TEL, EMAIL, STATUS) VALUES(?,?,?,?,?,?,'M')";
		
		pstmt = con.prepareStatement(insertJoinMember);
		
		pstmt.setString(1, mVO.getId());
		pstmt.setString(2, mVO.getPassword());
		pstmt.setString(3, mVO.getMname());
		System.out.println(mVO.getMname());
		pstmt.setString(4, mVO.getBirth());
		pstmt.setString(5, mVO.getTel());
		pstmt.setString(6, mVO.getEmail());
		
		pstmt.execute();
	}finally {
		db.dbClose(null, pstmt, con);
	}//finally
}//insertJoinMember
}//class

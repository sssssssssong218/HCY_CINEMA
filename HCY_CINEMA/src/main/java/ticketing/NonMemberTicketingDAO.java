package ticketing;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbConnection.DBConnection;

public class NonMemberTicketingDAO {
private static NonMemberTicketingDAO nmtDAO;

private NonMemberTicketingDAO() {
}//constructor

public static NonMemberTicketingDAO getInstance() {
	if(nmtDAO == null) {nmtDAO = new NonMemberTicketingDAO();}
	return nmtDAO;
}//getInstance

private boolean selectNonmember(String tel) throws SQLException {
boolean flag = false;

DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String selectNonmember = "SELECT NONMEM_TEL FROM NON_MEMBER WHERE NONMEM_TEL = ?";
		
		pstmt = con.prepareStatement(selectNonmember);
		pstmt.setString(1, tel);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			flag = true;
		}//if
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
	return flag;
}//selectNonmember

public void insertNonmemberPayment(PaymentVO pVO) throws SQLException {
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		con = db.getCon();
		con.setAutoCommit(false);
		String insertNonmemberPayment = "";
		if(!selectNonmember(pVO.getTel())) {
		insertNonmemberPayment = "INSERT INTO NON_MEMBER(NONMEM_TEL, NNAME, PASSWORD, BIRTH) VALUES(?,?,?,?)";
		
		pstmt = con.prepareStatement(insertNonmemberPayment);
		pstmt.setString(1, pVO.getTel());
		pstmt.setString(2, pVO.getName());
		pstmt.setString(3, pVO.getPass());
		pstmt.setString(4, pVO.getBirth());
		
		pstmt.executeUpdate();
		}//if
		
		
		insertNonmemberPayment = "INSERT INTO TICKETING(SCHEDULENUM, TEL, MOVIECODE, SCREENNUM, PPLCOUNT, STATUS, TICKETDATE, PAYMENT) VALUES(?,?,?,?,?,'Y',sysdate,?)     ";
		
		pstmt = con.prepareStatement(insertNonmemberPayment);
		pstmt.setString(1, pVO.getScheduleNum());
		pstmt.setString(2, pVO.getTel());
		pstmt.setString(3, pVO.getMovieCode());
		pstmt.setString(4, pVO.getScreenNum());
		pstmt.setInt(5, pVO.getPplcount());
		pstmt.setString(6, pVO.getPayment());
		
		pstmt.executeUpdate();
		String[] seats = pVO.getSeat().split(",");
		for(String seat:seats) {
			insertNonmemberPayment = "INSERT INTO SEAT( SEATNUM, SCHEDULENUM, TICKETNUM) values(?,?,(select TICKETNUM from TICKETING where tel = ? and SCHEDULENUM = ? AND TICKETDATE = (SELECT MAX(TICKETDATE) FROM TICKETING tt) ))";
			
			pstmt = con.prepareStatement(insertNonmemberPayment);
			System.out.println("seatnon : "+seat.trim());
			pstmt.setString(1, seat.trim());
			pstmt.setString(2, pVO.getScheduleNum());
			pstmt.setString(3, pVO.getTel());
			pstmt.setString(4, pVO.getScheduleNum());
			
			pstmt.executeUpdate();
		}//for
		
		con.commit();
	}finally {
		con.rollback();
		db.dbClose(null, pstmt, con);
	}//finally
}//insertNonmemberPayment
}//class

package ticketing;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbConnection.DBConnection;
import myTicket.MyTicketVO;

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

public boolean selectNonmember(String tel,String birth, String pass) throws SQLException {
	boolean flag = false;
	
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String selectNonmember = "SELECT NONMEM_TEL FROM NON_MEMBER WHERE NONMEM_TEL = ? and PASSWORD = ? and BIRTH = ?";
		
		pstmt = con.prepareStatement(selectNonmember);
		pstmt.setString(1, tel);
		pstmt.setString(2, pass);
		pstmt.setString(3, birth);
		
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
	}catch(SQLException se){
		se.printStackTrace();
		con.rollback();
	}finally {
		db.dbClose(null, pstmt, con);
	}//finally
}//insertNonmemberPayment

private String selectSeatNum(int tNum) throws SQLException {
	StringBuilder result = new StringBuilder();
	
	DBConnection db = DBConnection.getInstance();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		con = db.getCon();
		
		String selectSeatNum = "SELECT SEATNUM from SEAT where TICKETNUM = ?";
		
		pstmt = con.prepareStatement(selectSeatNum);
		pstmt.setInt(1, tNum);
		
		rs = pstmt.executeQuery();
		String[] seatName = {"A","B","C","D","E","F","G","H","I","J","K","L","M"};
		while(rs.next()) {
			result.append(",")
			.append(seatName[rs.getInt("SEATNUM")/13]+rs.getInt("SEATNUM")%13);
		}//while
		result.replace(0, 1, "");
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
	return result.toString();
}//selectSeatNum

public List<MyTicketVO> selectMyTicket(String tel) throws SQLException{
	List<MyTicketVO> list = new ArrayList<MyTicketVO>();

	DBConnection db = DBConnection.getInstance();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		con = db.getCon();
		
		String selectMyTicket = "SELECT t.STATUS,TO_CHAR(t.TICKETDATE,'yyyy.mm.dd') TICKETDATE,t.MOVIECODE, t.TICKETNUM, (SELECT MNAME from MOVIE m where m.MOVIECODE = t.MOVIECODE) mname, (SELECT FILENAME from MOVIEFILE mf where mf.MOVIECODE = t.MOVIECODE and FILETYPE = 'P') FILENAME, t.PPLCOUNT*sc.PRICE price , t.PPLCOUNT,to_char(sc.SHOWTIME,'yyyy.mm.dd') || CASE TO_CHAR(sc.SHOWTIME, 'D') WHEN '1' THEN '(일)' WHEN '2' THEN '(월)' WHEN '3' THEN '(화)'  WHEN '4' THEN '(수)' WHEN '5' THEN '(목)' WHEN '6' THEN '(금)' WHEN '7' THEN '(토)' END || TO_CHAR(sc.SHOWTIME, ' hh:mi') showtime,(SELECT SCREENNAME from SCREEN scr where scr.SCREENNUM=t.SCREENNUM) SCREENNAME,t.PAYMENT  from TICKETING t, SCHEDULE sc where t.SCHEDULENUM=sc.SCHEDULENUM(+) and tel = ?";
		
		pstmt = con.prepareStatement(selectMyTicket);
		pstmt.setString(1, tel);
		
		rs = pstmt.executeQuery();
		
		MyTicketVO mtVO = null;
		while(rs.next()) {
			mtVO = new MyTicketVO();
			mtVO.setMovieCode(rs.getString("MOVIECODE"));
			mtVO.setTicketNum(rs.getInt("TICKETNUM"));
			mtVO.setMname(rs.getString("mname"));
			mtVO.setPosterFileName(rs.getString("FILENAME"));
			mtVO.setPrice(rs.getInt("price"));
			mtVO.setPplcount(rs.getInt("PPLCOUNT"));
			mtVO.setShowtime(rs.getString("SHOWTIME"));
			mtVO.setScreen(rs.getString("SCREENNAME"));
			mtVO.setPayment(rs.getString("PAYMENT"));
			mtVO.setSeat(selectSeatNum(rs.getInt("TICKETNUM")));
			mtVO.setTicketDate(rs.getString("TICKETDATE"));
			mtVO.setStatus(rs.getString("STATUS"));
			list.add(mtVO);
		}//while
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
	return list;
}//selectMyTicket
}//class

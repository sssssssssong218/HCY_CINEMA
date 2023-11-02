package myTicket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbConnection.DBConnection;

public class MyTicketDAO {
private static MyTicketDAO mtDAO;

private MyTicketDAO() {
}//construct

public static MyTicketDAO getInstance() {
	if(mtDAO == null) {
		mtDAO = new MyTicketDAO();
	}//getInstance
	
	return mtDAO;
}//getInstance

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
		
		while(rs.next()) {
			result.append(",")
			.append(rs.getString("SEATNUM"));
		}//while
		result.replace(0, 1, "");
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
	return result.toString();
}//selectSeatNum

public List<MyTicketVO> selectMyTicket(String id) throws SQLException{
	List<MyTicketVO> list = new ArrayList<MyTicketVO>();

	DBConnection db = DBConnection.getInstance();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		con = db.getCon();
		
		String selectMyTicket = "SELECT t.STATUS,TO_CHAR(t.TICKETDATE,'yyyy.mm.dd') TICKETDATE,t.MOVIECODE, t.TICKETNUM, (SELECT MNAME from MOVIE m where m.MOVIECODE = t.MOVIECODE) mname, (SELECT FILENAME from MOVIEFILE mf where mf.MOVIECODE = t.MOVIECODE and FILETYPE = 'P') FILENAME, t.PPLCOUNT*sc.PRICE price , t.PPLCOUNT,to_char(sc.SHOWTIME,'yyyy.mm.dd') || CASE TO_CHAR(sc.SHOWTIME, 'D') WHEN '1' THEN '(일)' WHEN '2' THEN '(월)' WHEN '3' THEN '(화)'  WHEN '4' THEN '(수)' WHEN '5' THEN '(목)' WHEN '6' THEN '(금)' WHEN '7' THEN '(토)' END || TO_CHAR(sc.SHOWTIME, ' hh:mi') showtime,(SELECT SCREENNAME from SCREEN scr where scr.SCREENNUM=t.SCREENNUM) SCREENNAME,t.PAYMENT  from TICKETING t, SCHEDULE sc where t.SCHEDULENUM=sc.SCHEDULENUM(+) and ID = ?";
		
		pstmt = con.prepareStatement(selectMyTicket);
		pstmt.setString(1, id);
		
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


public void updateCancelTicket(int tNum) throws SQLException {
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		con = db.getCon();
		
		String updateCancelTicket = "UPDATE TICKETING set STATUS = 'N' where TICKETNUM = ?";
		
		pstmt = con.prepareStatement(updateCancelTicket);
		pstmt.setInt(1, tNum);
		
		pstmt.executeUpdate();
	}finally {
		db.dbClose(null, pstmt, con);
	}//finally
}//updateCancelTicket


}//class

package ticketing;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import dbConnection.DBConnection;

public class TicketingDAO {
private static TicketingDAO tDAO;

private TicketingDAO() {
}//constructor

public static TicketingDAO getInstance() {
	if(tDAO==null) {
		tDAO = new TicketingDAO();
	}//if
	return tDAO;
}//getInstance

public List<MovieVO> selectMovie() throws SQLException{
	List<MovieVO> list = new ArrayList<MovieVO>();
	MovieVO mVO = null;
	
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String selectMovie = "select MOVIECODE, MNAME, MOVIE_RATING FROM MOVIE where status = 'Y' and RELEASEDATE <= sysdate and ENDDATE >= sysdate";
		
		pstmt = con.prepareStatement(selectMovie);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			mVO = new MovieVO();
			mVO.setMoviecode(rs.getString("MOVIECODE"));
			mVO.setMname(rs.getString("MNAME"));
			mVO.setMovieRating(rs.getString("MOVIE_RATING"));
			list.add(mVO);
		}//while
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	return list;
}//selectMovie

public List<ScreenVO> selectSchedule(DailyScheduleVO dsVO) throws SQLException{
	List<ScreenVO> list = new ArrayList<ScreenVO>();
	
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		StringBuilder  selectSchedule = new StringBuilder();
		selectSchedule
		.append("	select * from (SELECT s.SCREENNUM, s.SCREENNAME, sd.MOVIECODE,	")
		.append("	(SELECT SCREENTYPE from SCREEN_TYPE st where s.TYPENUM = st.TYPENUM) screentyp,	")
		.append("	sd.SCHEDULENUM, to_char(sd.SHOWTIME,'hh:mi') starttime,	(SELECT RUNNINGTIME from MOVIE m where m.MOVIECODE = sd.MOVIECODE) RUNNINGTIME,")
		.append("	(SELECT count(*) from TICKETING t where sd.SCHEDULENUM = t.SCHEDULENUM and STATUS='Y') ticketed,	")
		.append("	(SELECT MNAME FROM MOVIE m WHERE m.MOVIECODE = sd.MOVIECODE) mname, sd.PRICE	")
		.append("	FROM SCREEN s, SCHEDULE sd	")
		.append("	where s.SCREENNUM(+) = sd.SCREENNUM and sd.MOVIECODE = ? and to_char(sd.SHOWTIME,'yyyymmdd') = ?) where screentyp = ?	");
		
		pstmt = con.prepareStatement(selectSchedule.toString());
		
		pstmt.setString(1, dsVO.getMovieCode());
		pstmt.setString(2, dsVO.getScheduleDate());
		pstmt.setString(3, dsVO.getScreenType());
		
		rs = pstmt.executeQuery();
		
		ScreenVO sVO = null;
		ScheduleVO sdVO = null;
		
		List<ScheduleVO> sdList = null;
		
		int tempscode = -1;
		while(rs.next()) {
				
			if(tempscode != (rs.getInt("SCREENNUM"))) {
				if(sVO != null) {
					sVO.setScdVO(sdList);
					list.add(sVO);
					sVO = null;
					sdList = null;
				}//if
				sVO = new ScreenVO();
				sdList = new ArrayList<ScheduleVO>();
				tempscode = rs.getInt("SCREENNUM");
				sVO.setScreenNum(rs.getInt("SCREENNUM"));
				sVO.setScreenName(rs.getString("SCREENNAME"));
				sVO.setTypeName(rs.getString("screentyp"));
				sVO.setMoviecode(rs.getString("MOVIECODE"));
				sVO.setMname(rs.getString("mname"));
			}//if
			
			sdVO = new ScheduleVO();
			sdVO.setScheduleNum(rs.getInt("SCHEDULENUM"));
			sdVO.setShowtime(rs.getString("starttime"));
			sdVO.setRunningrime(rs.getString("RUNNINGTIME"));
			sdVO.setTicketedSeat(rs.getInt("ticketed"));
			sdVO.setPrice(rs.getInt("PRICE"));
			sdList.add(sdVO);
		}//while
		
		if(sVO != null) {
			sVO.setScdVO(sdList);
			list.add(sVO);
		}//if
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
	return list;
}//selectSchedule

public List<String> selectSeat(String sdCode) throws SQLException{
	List<String> list = new ArrayList<String>();
	
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String selectSeat = "SELECT SEATNUM FROM SEAT where SCHEDULENUM  = ?";
		
		pstmt = con.prepareStatement(selectSeat);
		pstmt.setString(1, sdCode);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			list.add(rs.getString("SEATNUM"));
		}//while
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
	return list;
}//selectSeat

public void insertMemberPayment(PaymentVO pVO) throws SQLException {
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		con = db.getCon();
		con.setAutoCommit(false);
		
		String insertMemberPayment = "INSERT INTO TICKETING(SCHEDULENUM, ID, MOVIECODE, SCREENNUM, PPLCOUNT, STATUS, TICKETDATE, PAYMENT) VALUES(?,?,?,?,?,'Y',SYSDATE,?)";
		
		pstmt = con.prepareStatement(insertMemberPayment);
		pstmt.setString(1, pVO.getScheduleNum());
		pstmt.setString(2, pVO.getId());
		pstmt.setString(3, pVO.getMovieCode());
		pstmt.setString(4, pVO.getScreenNum());
		pstmt.setInt(5, pVO.getPplcount());
		pstmt.setString(6, pVO.getPayment());
		
		pstmt.executeUpdate();
		String[] seats = pVO.getSeat().split(",");
		for(String seat:seats) {
			insertMemberPayment = "INSERT INTO SEAT( SEATNUM, SCHEDULENUM, TICKETNUM) values(?,?,(SELECT TICKETNUM FROM TICKETING t WHERE ID = ? AND SCHEDULENUM = ? AND TICKETDATE = (SELECT MAX(TICKETDATE) FROM TICKETING tt)))";
			
			pstmt = con.prepareStatement(insertMemberPayment);
			System.out.println("seat : "+seat.trim());
			System.out.println("schedule : "+pVO.getScheduleNum());
			System.out.println("id : "+pVO.getId());
			pstmt.setString(1, seat.trim());
			pstmt.setString(2, pVO.getScheduleNum());
			pstmt.setString(3, pVO.getId());
			pstmt.setString(4, pVO.getScheduleNum());
			
			pstmt.executeUpdate();
		}//for
		
		con.commit();
	}finally {
		con.rollback();
		db.dbClose(null, pstmt, con);
	}//finally
}//insertMemberPayment
}//class

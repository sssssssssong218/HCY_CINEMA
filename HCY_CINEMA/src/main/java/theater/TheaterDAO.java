package theater;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbConnection.DBConnection;

public class TheaterDAO {
private static TheaterDAO tDAO;
	
	private TheaterDAO() {
	}//constructor
	
	public static TheaterDAO getInstance() {
		if(tDAO == null) {
			tDAO = new TheaterDAO();
		}//if
		
		return tDAO;
	}//getInstance
	
	public List<MovieVO> selectTheaterSchedule(String date) throws SQLException{
		List<MovieVO> list = new ArrayList<MovieVO>();
		DBConnection db = DBConnection.getInstance();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = db.getCon();
			
			StringBuilder selectTheaterSchedule = new StringBuilder();
			
			selectTheaterSchedule
			.append("	SELECT sd.MOVIECODE, m.MNAME, m.RELEASEDATE, m.RUNNINGTIME,	")
			.append("	m.MOVIE_RATING, s.SCREENNUM, s.SCREENNAME,	")
			.append("	(select SCREENTYPE from SCREEN_TYPE st where st.TYPENUM = s.TYPENUM) screentype ,	")	
			.append("	sd.SCHEDULENUM, to_date(sd.SHOWTIME,'yy-mm-dd') SHOWdate,to_char(sd.SHOWTIME,'hh24:mi') SHOWtime ,(select count(*) from TICKETING t, 	")	
			.append("	SEAT se where  t.SCHEDULENUM = sd.SCHEDULENUM and t.TICKETNUM = se.TICKETNUM) seat	")	
			.append("	FROM MOVIE m, SCREEN s, SCHEDULE sd	")	
			.append("	WHERE sd.MOVIECODE = m.MOVIECODE(+) and sd.SCREENNUM = s.SCREENNUM(+) and to_char(sd.SHOWTIME,'yyyymmdd') = ? ORDER BY MOVIECODE, SCREENNUM	");	
			
			pstmt = con.prepareStatement(selectTheaterSchedule.toString());
			
			pstmt.setString(1, date);
			
			rs = pstmt.executeQuery();
			
			MovieVO mVO = null;
			ScreenVO sVO = null;
			ScheduleVO sdVO = null;
			
			List<ScreenVO> sList = null;
			List<ScheduleVO> sdList = null;
			
			String tempmcode = "";
			int tempscode = -1;
			while(rs.next()) {
				if(!tempmcode.equals(rs.getString("MOVIECODE"))) {
					if(mVO != null) {
						sVO.setScdVO(sdList);
						sList.add(sVO);
						mVO.setsVO(sList);
						list.add(mVO);
						mVO = null;
						sList = null;
						sVO = null;
						sdList = null;
					}//if
					sList = new ArrayList<ScreenVO>();
					mVO = new MovieVO();
					tempmcode = rs.getString("MOVIECODE");
					mVO.setMoviecode(rs.getString("MOVIECODE"));
					mVO.setMname(rs.getString("MNAME"));
					mVO.setReleseDate(rs.getDate("RELEASEDATE"));
					mVO.setRunningTime(rs.getString("RUNNINGTIME"));
					mVO.setMovieRating(rs.getString("MOVIE_RATING"));
				}//if
					
				if(tempscode != (rs.getInt("SCREENNUM"))) {
					if(sVO != null) {
						sVO.setScdVO(sdList);
						sList.add(sVO);
						sVO = null;
						sdList = null;
					}//if
					sVO = new ScreenVO();
					sdList = new ArrayList<ScheduleVO>();
					tempscode = rs.getInt("SCREENNUM");
					sVO.setScreenNum(rs.getInt("SCREENNUM"));
					sVO.setScreenName(rs.getString("SCREENNAME"));
					sVO.setTypeName(rs.getString("screentype"));
				}//if
				
				sdVO = new ScheduleVO();
				sdVO.setScheduleNum(rs.getInt("SCHEDULENUM"));
				sdVO.setShowdate(rs.getDate("SHOWdate"));
				sdVO.setShowtime(rs.getString("SHOWtime"));
				sdVO.setTicketedSeat(rs.getInt("seat"));
				sdList.add(sdVO);
			}//while
			
			if(mVO != null) {
				sVO.setScdVO(sdList);
				sList.add(sVO);
				mVO.setsVO(sList);
				list.add(mVO);
			}//if
		}finally {
		db.dbClose(rs, pstmt, con);
		}//finally
		
		return list;
	}//selectTheaterSchedule
}//class

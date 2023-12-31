package screen;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbConnection.DBConnection;
import movie.ScheduleDateVO;

public class ManageScreenDAO {
	private static ManageScreenDAO msDAO;
	
	public ManageScreenDAO() {
		
	}//constructor
	
	public static ManageScreenDAO getInstance() {
		if(msDAO==null) {
			msDAO=new ManageScreenDAO();
		}//end if
		
		return msDAO;
	}//getInstance
	
	public List<ScheduleVO> selectScheduleDate(int screenNum)throws SQLException{
		
		List<ScheduleVO> list=new ArrayList<ScheduleVO>();
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		ScheduleVO sVO=null;
		
		try {
			con=db.getCon();
			
			StringBuilder selectScheduleDate=new StringBuilder();
			selectScheduleDate.append(" SELECT S.MOVIECODE, TO_CHAR(S.SHOWTIME, 'YYYY-MM-DD HH24:MI') AS SHOWTIME, M.MNAME")
			.append(" FROM SCHEDULE S																					  ")
			.append(" INNER JOIN MOVIE M ON S.MOVIECODE = M.MOVIECODE													  ")
			.append(" WHERE S.SCREENNUM = ?	and m.status in('Y','W')																			  ")
			.append(" AND S.SHOWTIME BETWEEN TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')) AND TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')) + 1 ORDER BY SHOWTIME ");
			
			pstmt=con.prepareStatement(selectScheduleDate.toString());
			
			pstmt.setInt(1, screenNum);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				sVO=new ScheduleVO();
				sVO.setMovieCode(rs.getString("moviecode"));
				sVO.setShowtime(rs.getString("showtime"));
				sVO.setMname(rs.getString("mname"));
			
				list.add(sVO);
			
			}//end while
			
			
		}finally {
			db.dbClose(rs, pstmt, con); 
		}//end finally
		
		return list;
	}//selectScheduleDate
	
	public List<ScheduleVO> selectMovieSchedule(ChooseScheduleVO csVO) throws SQLException {
	    List<ScheduleVO> list = new ArrayList<ScheduleVO>();
	    DBConnection db = DBConnection.getInstance();
	    Connection con = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    ScheduleVO sVO = null;

	    try {
	        con = db.getCon();
	        // SQL 쿼리를 작성
	        StringBuilder selectMovieSchedule=new StringBuilder();
	        selectMovieSchedule.append(" SELECT S.MOVIECODE, TO_CHAR(S.SHOWTIME, 'YYYY-MM-DD HH24:MI') AS SHOWTIME, M.MNAME")
			.append(" FROM SCHEDULE S																					  ")
			.append(" INNER JOIN MOVIE M ON S.MOVIECODE = M.MOVIECODE													  ")
			.append(" WHERE S.SCREENNUM = ?	and m.status in('Y','W')																			  ")
			.append("  AND S.SHOWTIME BETWEEN TO_DATE(TO_CHAR(?, 'YYYY-MM-DD')) AND TO_DATE(TO_CHAR(?, 'YYYY-MM-DD')) + 1 ORDER BY SHOWTIME ");

	        pstmt = con.prepareStatement(selectMovieSchedule.toString());
	        pstmt.setInt(1, csVO.getScreenNum());
	        pstmt.setDate(2, (Date)(csVO.getShowtime()));
	        pstmt.setDate(3, (Date)(csVO.getShowtime()));
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            sVO = new ScheduleVO();
	            sVO.setMovieCode(rs.getString("moviecode"));
	            sVO.setShowtime(rs.getString("showtime"));
	            sVO.setMname(rs.getString("mname"));
	            list.add(sVO);
	        }
	    } finally {
	        db.dbClose(rs, pstmt, con);
	    }//end finally

	    return list;
	}//selectMovieSchedule
	
	
	public NonScheduleVO selectShowtime(Date scheduleDate)throws SQLException{
		NonScheduleVO nsVO=null;
		
		
		
		
		return nsVO;
	}//selectShowtime
	
	public void insertSchedule(AddScheduleVO asVO)throws SQLException{
		
		
		
	}//insertSchedule
	
	public List<ManageSeatVO> selectShowtimeSeat(int screenNum)throws SQLException{
		List<ManageSeatVO> list=new ArrayList<ManageSeatVO>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			StringBuilder selectShowtimeSeat =new StringBuilder();
			
			
			
			
			
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		
		return list;
	}//selectShowtimeSeat
	
	public boolean updateCancelTicket(CancelTicketVO ctVO)throws SQLException{
		
		boolean flag=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DBConnection db=DBConnection.getInstance();
		try {
			con=db.getCon();
			StringBuilder updateCancelTicket=new StringBuilder();
			updateCancelTicket.append(" update ticketing 	")
			.append(" set  status='N'  						")
			.append("  where schedulenum=? and ticketnum=? 	");
			
			pstmt=con.prepareStatement(updateCancelTicket.toString());
			
			pstmt.setInt(1, ctVO.getScheduleNum());
			pstmt.setInt(2, ctVO.getTicketNum());
			
			int rowCnt=pstmt.executeUpdate();
			if(rowCnt>0) {
				flag=true;
			}//end if
			
		}finally {
			db.dbClose(null, pstmt, con);
		}//end finally
		
		return flag;
		
	}//updateCancelTicket
	
	
	 public List<MemberVO> selectMember(String screenNum) throws SQLException {
	 
		 List<MemberVO> list=new ArrayList<MemberVO>();
			
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			DBConnection db=DBConnection.getInstance();
			
			try {
				con=db.getCon();
				StringBuilder selectMember =new StringBuilder();
				selectMember
				.append(" 	select s.seatnum,t.id,t.tel,t.status,t.ticketnum							")
				.append(" 	from seat s,ticketing t											")
				.append(" 	where s.schedulenum=t.schedulenum and s.ticketnum=t.ticketnum	")
				.append(" 	and t.schedulenum=?	and status='Y' order by seatnum								");
				pstmt=con.prepareStatement(selectMember.toString());
				pstmt.setString(1,screenNum);
				
				rs=pstmt.executeQuery();
				MemberVO mVO=null;
				while(rs.next()) {
					mVO=new MemberVO();
					mVO.setId(rs.getString("id"));
					mVO.setStatus(rs.getString("status"));
					mVO.setScreenNum(rs.getString("seatnum"));
					mVO.setTel(rs.getString("tel"));
					mVO.setTicketnum(rs.getString("ticketnum"));
					list.add(mVO);
				}
			}finally {
				db.dbClose(rs, pstmt, con);
			}
			return list;
	 }
	 
	
	public List<MovieVO> selectMovie(Date date) throws SQLException{
		List<MovieVO> list=new ArrayList<MovieVO>();
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con =null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con=db.getCon();
			
			String selectMovie="select moviecode, mname,plot from movie where releasedate<? and enddate>? and status in('Y','W')";
			
			pstmt=con.prepareStatement(selectMovie);
			pstmt.setDate(1,date);
			pstmt.setDate(2,date);
			
			rs=pstmt.executeQuery();
			MovieVO mVO=null;
			while(rs.next()) {
				mVO=new MovieVO();
				mVO.setMovieCode(rs.getString("moviecode"));
				mVO.setmName(rs.getString("mname"));
				BufferedReader br = null;
				StringBuilder plot = new StringBuilder("");
				try {
					Clob clob = rs.getClob("plot");
					if (clob != null) {
						br = new BufferedReader(clob.getCharacterStream());
						String temp = "";
						while ((temp = br.readLine()) != null) {
							plot.append(temp);
						}
						mVO.setPlot(plot.toString());
						if (br != null) {
							br.close();
						}
					}
				} catch (IOException ie) {
					ie.printStackTrace();
				} // try
				list.add(mVO);
			}//while
		}finally {
			db.dbClose(rs, pstmt, con);
		}//try
		
		return list;
	}//selectMovie
	
	public void insertSchedule(MovieVO mVO,Date date) throws SQLException {
		DBConnection db=DBConnection.getInstance();
		
		Connection con =null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con=db.getCon();
			
			String insertSchedule="insert into schedule(MOVIECODE, SCREENNUM, SHOWTIME,price) values(?,?,?,10000)";
			pstmt=con.prepareStatement(insertSchedule);
			
			pstmt.setString(1, mVO.getMovieCode());
			pstmt.setString(2, mVO.getScreennum());
			pstmt.setDate(3, date);
			
			pstmt.executeUpdate();
		}finally {
			db.dbClose(rs, pstmt, con);
		}
	}//insertSchedule
	
	public String selectSchedule(ScheduleNumVO snVO) throws SQLException {
		DBConnection db=DBConnection.getInstance();
		String schedulenum="";
		Connection con =null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con=db.getCon();
			
			String insertSchedule="select * from schedule where moviecode=? and screennum=? and to_char(showtime,'yyyy-mm-dd HH24:mi')=to_char(?,'yyyy-mm-dd HH24:mi')";
			pstmt=con.prepareStatement(insertSchedule);
			
			pstmt.setString(1, snVO.getMoviecode());
			pstmt.setString(2, snVO.getScreennum());
			pstmt.setDate(3, snVO.getDate());
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				schedulenum=rs.getString("schedulenum");
			}
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		return schedulenum;	
	}
	public void updateSeat(String ticketnum) throws SQLException {
		DBConnection db=DBConnection.getInstance();
		Connection con =null;
		PreparedStatement pstmt=null;
		
		try {
			con=db.getCon();
			
			String deleteSeat="update ticketing set status='N' where ticketnum=?";
			pstmt=con.prepareStatement(deleteSeat);
			
			pstmt.setString(1,ticketnum);
			
			pstmt.executeUpdate();
			
		}finally {
			db.dbClose(null, pstmt, con);
		}
	}
	public void deleteSeat(String ticketnum) throws SQLException{
		DBConnection db=DBConnection.getInstance();
		Connection con =null;
		PreparedStatement pstmt=null;
		try {
			con=db.getCon();
			
			String deleteSeat="delete from seat where ticketnum=?";
			pstmt=con.prepareStatement(deleteSeat);
			
			pstmt.setString(1,ticketnum);
			
			pstmt.executeUpdate();
			
		}finally {
			db.dbClose(null, pstmt, con);
		}
	}
}//class

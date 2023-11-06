package screen;

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
			.append(" WHERE S.SCREENNUM = ?																				  ")
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
			.append(" WHERE S.SCREENNUM = ?																				  ")
			.append(" AND S.SHOWTIME BETWEEN TO_DATE(TO_CHAR(?, 'YYYY-MM-DD')) AND TO_DATE(TO_CHAR(?, 'YYYY-MM-DD')) + 1 ORDER BY SHOWTIME ");

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
	
}//class

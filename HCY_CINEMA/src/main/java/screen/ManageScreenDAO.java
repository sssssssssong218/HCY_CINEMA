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
	
	public ScheduleVO selectScheduleDate(ChooseScheduleVO csVO)throws SQLException{
		
		ScheduleVO sVO=null;
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con=db.getCon();
			
			StringBuilder selectScheduleDate=new StringBuilder();
			selectScheduleDate.append(" select to_char(showtime,'yyyy-MM-dd HH:mm')")
			.append(" from SCHEDULE ")
			.append(" where moviecode=? and schedulenum=? ");
			
			pstmt=con.prepareStatement(selectScheduleDate.toString());
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				sVO=new ScheduleVO();
			}//end while
			
			
		}finally {
			db.dbClose(rs, pstmt, con); 
		}//end finally
		
		
		
		
		return sVO;
		
	}//selectScheduleDate
	
	public NonScheduleVO selectShowtime(Date d)throws SQLException{
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

package screen;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
		
		
		return list;
	}//selectShowtimeSeat
	
	public boolean updateCancelTicket(CancelTicketVO ctVO)throws SQLException{
		
		boolean flag=false;
		
		
		return flag;
		
	}//updateCancelTicket
	
	
}//class

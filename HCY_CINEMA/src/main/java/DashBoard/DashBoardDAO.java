package DashBoard;

public class DashBoardDAO {
	private static DashBoardDAO dbDAO;
	
	public DashBoardDAO() {
		
	}//constructor
	
	public static DashBoardDAO getInstance() {
		if(dbDAO==null) {
			dbDAO=new DashBoardDAO();
		}//end if
		
		return dbDAO;
	}//getInstance
	
}//class

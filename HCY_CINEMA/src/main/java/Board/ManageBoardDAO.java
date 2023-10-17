package Board;

public class ManageBoardDAO {
	private static ManageBoardDAO mbDAO;
	
	public ManageBoardDAO() {
		
	}//constructor
	
	public static ManageBoardDAO getInstance() {
		if(mbDAO==null) {
			mbDAO=new ManageBoardDAO();
		}//end if
		
		return mbDAO;
	}//getInstance
	
}//class

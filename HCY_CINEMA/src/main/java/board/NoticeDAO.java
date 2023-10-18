package board;

public class NoticeDAO {
	private static NoticeDAO nDAO;
	
	public NoticeDAO() {
		
	}//constructor
	
	public static NoticeDAO getInstance() {
		if(nDAO==null) {
			nDAO=new NoticeDAO();
		}//end if
		
		return nDAO;
	}//getInstance
	
}//class

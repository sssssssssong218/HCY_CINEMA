package Board;

public class BoardDAO {
	private static BoardDAO bDAO;
	
	public BoardDAO() {
		
	}//constructor
	
	public static BoardDAO getInstance() {
		if(bDAO==null) {
			bDAO=new BoardDAO();
		}//end if
		
		return bDAO;
	}//getInstance
}//class

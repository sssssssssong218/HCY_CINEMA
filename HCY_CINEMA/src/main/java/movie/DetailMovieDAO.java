package movie;

public class DetailMovieDAO {
	private static DetailMovieDAO dmDAO;
	
	public DetailMovieDAO() {
		
	}//constructor
	
	public static DetailMovieDAO getInstance() {
		if(dmDAO==null) {
			dmDAO=new DetailMovieDAO();
		}//end if
		
		return dmDAO;
	}//getInstance
	
}//class

package movie;

public class ManageMovieMainDAO {
	private static ManageMovieMainDAO mmmDAO;
	
	public ManageMovieMainDAO() {
		
	}//constructor
	
	public static ManageMovieMainDAO getInstance() {
		if(mmmDAO==null) {
			mmmDAO=new ManageMovieMainDAO();
		}//end if
		
		return mmmDAO;
	}//getInstance
}

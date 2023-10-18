package movie;

public class AddMovieDAO {
	private static AddMovieDAO amDAO;
	
	public AddMovieDAO() {
		
	}//constructor
	
	public static AddMovieDAO getInstance() {
		if(amDAO==null) {
			amDAO=new AddMovieDAO();
		}//end if
		
		return amDAO;
	}//getInstance
}

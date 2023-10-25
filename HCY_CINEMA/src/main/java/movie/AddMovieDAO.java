package movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbConnection.DBConnection;

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
	
	public void insertMovie(AddMovieVO amVO) throws SQLException {
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		try {
			con=db.getCon();
			
			StringBuilder insertMovie=new StringBuilder();
		}finally{
			db.dbClose(null, pstmt, con);
		}
	}
}

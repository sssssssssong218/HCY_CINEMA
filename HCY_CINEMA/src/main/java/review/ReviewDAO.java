package review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import board.BoardVO;
import dbConnection.DBConnection;

public class ReviewDAO {
	private static ReviewDAO rvDAO;
	
	private ReviewDAO() {
	}//ReviewDAO
	
	public static ReviewDAO getInstance() {
		if( rvDAO == null) {
			rvDAO=new ReviewDAO();
		}//end if
		return rvDAO; 
	}//getInstance
	
	public List<ReviewVO> selectMovieList( String id ) throws SQLException{
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ReviewVO rVO=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			
			String selectMovieList="select id, moviecode, ";
			
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}//end finally'
		
		return list;
	}//selectMovieList
	
	public void insertReview( WriteReviewVO  wrVO ) throws SQLException {

		Connection con=null;
		PreparedStatement pstmt=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			
			StringBuilder insertReview=new StringBuilder();
			insertReview
			.append("		insert into review(id, moviecode, content, star_rating)		")
			.append("		values(?,?,?,?)																		");
		
			pstmt=con.prepareStatement(insertReview.toString());
			pstmt.setString(1, wrVO.getId());
			pstmt.setString(2, wrVO.getMoviecode());
			pstmt.setString(3, wrVO.getContent());
			pstmt.setDouble(4,  wrVO.getStarRating());
			
			pstmt.executeUpdate();
	
		}finally{
			db.dbClose(null, pstmt, con);
			
		}//end finally
		
	}//insertReview
	
	
	public boolean updateReview( UpdateReviewVO urVO ) throws SQLException {
		boolean flag=false;
		
		return flag; 
	}//updateReivew
	
}//class

package movie;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbConnection.DBConnection;

public class DetailMovieDAO {
	private static DetailMovieDAO dmDAO;

	public DetailMovieDAO() {

	}// constructor

	public static DetailMovieDAO getInstance() {
		if (dmDAO == null) {
			dmDAO = new DetailMovieDAO();
		} // end if

		return dmDAO;
	}// getInstance

	public void insertActorInfo(MovieInfoVO miVO, String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = db.getCon();

			StringBuilder movieInfo = new StringBuilder();
			movieInfo.append("	insert into MOVIE_INFO(MOVIECODE, INFO, INFOTYPE)	")
					 .append(" 	values(?,?,'A')										");
			pstmt = con.prepareStatement(movieInfo.toString());
			for (String actor : miVO.getActor()) {
				pstmt.setString(1, movieCode);
				pstmt.setString(2, actor);
				pstmt.executeUpdate();
			}//for
		} finally {
			db.dbClose(rs, pstmt, con);
		}//try
	}//insertActorInfo

	public void insertDirectorInfo(MovieInfoVO miVO, String movieCode) throws SQLException{
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = db.getCon();

			StringBuilder movieInfo = new StringBuilder();
			movieInfo.append("	insert into MOVIE_INFO(MOVIECODE, INFO, INFOTYPE)	")
					 .append(" 	values(?,?,'D')										");
			pstmt = con.prepareStatement(movieInfo.toString());
			for (String director : miVO.getDirector()) {
				pstmt.setString(1, movieCode);
				pstmt.setString(2, director);
				pstmt.executeUpdate();
			}//for
		} finally {
			db.dbClose(rs, pstmt, con);
		}//try
	}//insertDirectorInfo
	public void insertGenreInfo(MovieInfoVO miVO, String movieCode) throws SQLException{
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = db.getCon();
			
			StringBuilder movieInfo = new StringBuilder();
			movieInfo.append("	insert into MOVIE_INFO(MOVIECODE, INFO, INFOTYPE)	")
			.append(" 	values(?,?,'G')										");
			pstmt = con.prepareStatement(movieInfo.toString());
			for (String genre : miVO.getGenre()) {
				pstmt.setString(1, movieCode);
				pstmt.setString(2, genre);
				pstmt.executeUpdate();
			}//for
		} finally {
			db.dbClose(rs, pstmt, con);
		}//try
	}//insertGenreInfo
	public void insertExtraInfo(MovieInfoVO miVO, String movieCode) throws SQLException{
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = db.getCon();
			
			StringBuilder movieInfo = new StringBuilder();
			movieInfo.append("	insert into MOVIE_INFO(MOVIECODE, INFO, INFOTYPE)	")
			.append(" 	values(?,?,'a')										");
			pstmt = con.prepareStatement(movieInfo.toString());
			for (String extra : miVO.getExtra()) {
				pstmt.setString(1, movieCode);
				pstmt.setString(2, extra);
				pstmt.executeUpdate();
			}//for
		} finally {
			db.dbClose(rs, pstmt, con);
		}//try
	}//insertExtraInfo
	
	public ManageMovieVO selectSpecificMovieInfo(String movieCode)throws SQLException  {
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ManageMovieVO mmVO=null;
		try {
			con = db.getCon();
			
			StringBuilder selectMovie = new StringBuilder();
			
			selectMovie
			.append("select * from movie where moviecode=?");
			
			pstmt = con.prepareStatement(selectMovie.toString());
			
				pstmt.setString(1, movieCode);
				
				rs=pstmt.executeQuery();
	
				if(rs.next()) {
					mmVO=new ManageMovieVO();
					mmVO.setMname(rs.getString("mname"));
					mmVO.setReleaseDate(rs.getDate("RELEASEDATE"));
					mmVO.setEndDate(rs.getDate("enddate"));
					mmVO.setRunningtime(rs.getInt("runningtime"));
					BufferedReader br = null;
					StringBuilder plot = new StringBuilder("");
					try {
						Clob clob = rs.getClob("plot");
						if (clob != null) {
							br = new BufferedReader(clob.getCharacterStream());
							String temp = "";
							while ((temp = br.readLine()) != null) {
								plot.append(temp);
							}
							mmVO.setPlot(plot.toString());
							if (br != null) {
								br.close();
							}
						}
					} catch (IOException ie) {
						ie.printStackTrace();
					}//try
					mmVO.setStatus(rs.getString("status"));
					mmVO.setMovieRatting(rs.getString("movie_rating"));
					
				}//if
		} finally {
			db.dbClose(rs, pstmt, con);
		}//try
		return mmVO;
	}//selectSpecificMovieInfo
}// class

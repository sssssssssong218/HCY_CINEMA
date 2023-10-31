package movie;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
			} // for
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
	}// insertActorInfo

	public void insertDirectorInfo(MovieInfoVO miVO, String movieCode) throws SQLException {
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
			} // for
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
	}// insertDirectorInfo

	public void insertGenreInfo(MovieInfoVO miVO, String movieCode) throws SQLException {
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
			} // for
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
	}// insertGenreInfo

	public void insertExtraInfo(MovieInfoVO miVO, String movieCode) throws SQLException {
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
			} // for
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
	}// insertExtraInfo

	public ManageMovieVO selectSpecificMovieInfo(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ManageMovieVO mmVO = null;
		try {
			con = db.getCon();

			StringBuilder selectMovie = new StringBuilder();

			selectMovie.append("select * from movie where moviecode=?");

			pstmt = con.prepareStatement(selectMovie.toString());

			pstmt.setString(1, movieCode);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				mmVO = new ManageMovieVO();
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
				} // try
				mmVO.setStatus(rs.getString("status"));
				mmVO.setMovieRatting(rs.getString("movie_rating"));

			} // if
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return mmVO;
	}// selectSpecificMovieInfo

	public List<String> selectActor(String movieCode) throws SQLException {

		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<String> list = new ArrayList<String>();

		try {
			con = db.getCon();

			StringBuilder selectActor = new StringBuilder();

			selectActor.append("	select * from movie_info			")
					.append("	where moviecode=?					").append("	and infotype='A'					");

			pstmt = con.prepareStatement(selectActor.toString());

			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("info"));
			}

		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}// selectActor

	public List<String> selectExtra(String movieCode) throws SQLException {

		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<String> list = new ArrayList<String>();

		try {
			con = db.getCon();

			StringBuilder selectActor = new StringBuilder();

			selectActor.append("	select * from movie_info			")
					.append("	where moviecode=?					").append("	and infotype='a'					");

			pstmt = con.prepareStatement(selectActor.toString());

			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("info"));
			}

		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}// selectExtra

	public List<String> selectDirector(String movieCode) throws SQLException {

		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<String> list = new ArrayList<String>();

		try {
			con = db.getCon();

			StringBuilder selectActor = new StringBuilder();

			selectActor.append("	select * from movie_info			")
					.append("	where moviecode=?					").append("	and infotype='D'					");

			pstmt = con.prepareStatement(selectActor.toString());

			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("info"));
			}

		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}// selectDirector

	public List<String> selectGenre(String movieCode) throws SQLException {

		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<String> list = new ArrayList<String>();

		try {
			con = db.getCon();

			StringBuilder selectActor = new StringBuilder();

			selectActor.append("	select * from movie_info			")
					.append("	where moviecode=?					").append("	and infotype='G'					");

			pstmt = con.prepareStatement(selectActor.toString());

			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("info"));
			}

		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}// selectGenre

	public String selectPoster(String movieCode) throws SQLException{
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String poster="";

		try {
			con=db.getCon();
			
			String selectPoster="select filename from moviefile where movieCode=? and filetype='P'";
			
			pstmt=con.prepareStatement(selectPoster);
			
			pstmt.setString(1,movieCode);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				poster=rs.getString("filename");
			}
		}finally {
			db.dbClose(rs, pstmt, con);
		}//try
		return poster;
	}//selectPoster
	public List<String> selectStill(String movieCode) throws SQLException{
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<String> list=new ArrayList<String>();

		try {
			con=db.getCon();
			
			String selectPoster="select filename from moviefile where movieCode=? and filetype='S'";
			
			pstmt=con.prepareStatement(selectPoster);
			
			pstmt.setString(1,movieCode);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(rs.getString("filename"));
			}
		}finally {
			db.dbClose(rs, pstmt, con);
		}//try
		return list;
	}//selectStill
	public String selectTrailer(String movieCode) throws SQLException{
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String trailer="";

		try {
			con=db.getCon();
			
			String selectPoster="select filename from moviefile where movieCode=? and filetype='T'";
			
			pstmt=con.prepareStatement(selectPoster);
			
			pstmt.setString(1,movieCode);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				trailer=rs.getString("filename");
			}
		}finally {
			db.dbClose(rs, pstmt, con);
		}//try
		return trailer;
	}//selectTrailer
	
	public void updateMovie(String movieCode, AddMovieVO amVO) throws SQLException{
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		try {
			con = db.getCon();

			StringBuilder updateMovie = new StringBuilder();
			updateMovie
			.append("	update movie										")
			.append("	set mname=?,releasedate=?,enddate=?,runningtime=?,	")
			.append("	plot=?,status=?,movie_rating=?						")
			.append("	where moviecode=?									");

			pstmt = con.prepareStatement(updateMovie.toString());
			
			pstmt.setString(1, amVO.getMname());
			pstmt.setDate(2, amVO.getReleaseDate());
			pstmt.setDate(3, amVO.getEndDate());
			pstmt.setInt(4, amVO.getRunningTime());
			pstmt.setString(5, amVO.getPlot());
			pstmt.setString(6, amVO.getStatus());
			pstmt.setString(7, amVO.getMovieRating());
			pstmt.setString(8, movieCode);
			
			pstmt.executeUpdate();
		
		} finally {
			db.dbClose(rs, pstmt, con);
		}//try
	}//updateMovie

	public void deleteMovieInfo(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = db.getCon();

			StringBuilder updateMovie = new StringBuilder();
			updateMovie
			.append("	delete 				")
			.append("	from movie_info		")
			.append("	where moviecode=?	");

			pstmt = con.prepareStatement(updateMovie.toString());
			

			pstmt.setString(1, movieCode);
			
			pstmt.executeUpdate();
		
		} finally {
			db.dbClose(null, pstmt, con);
		}//try
	}//deleteMovieInfo
	public void deleteMovieFile(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = db.getCon();

			StringBuilder updateMovie = new StringBuilder();
			updateMovie
			.append("	delete 				")
			.append("	from moviefile		")
			.append("	where moviecode=?	");

			pstmt = con.prepareStatement(updateMovie.toString());
			

			pstmt.setString(1, movieCode);
			
			pstmt.executeUpdate();
		
		} finally {
			db.dbClose(null, pstmt, con);
		}//try
	}//deleteMovieFile
	
}// class

package movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import dbConnection.DBConnection;

public class AddMovieDAO {
	private static AddMovieDAO amDAO;

	public AddMovieDAO() {

	}// constructor

	public static AddMovieDAO getInstance() {
		if (amDAO == null) {
			amDAO = new AddMovieDAO();
		} // end if

		return amDAO;
	}// getInstance

	public void insertMovie(AddMovieVO amVO) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = db.getCon();

			StringBuilder insertMovie = new StringBuilder();
			insertMovie.append(
					"	insert into movie(MNAME, RELEASEDATE, ENDDATE, RUNNINGTIME, PLOT, STATUS, INPUT_DATE, MOVIE_RATING)	")
					.append("	values(?,?,?,?,?,?,sysdate,?)																		");

			pstmt = con.prepareStatement(insertMovie.toString());

			pstmt.setString(1, amVO.getMname());
			pstmt.setDate(2, amVO.getReleaseDate());
			pstmt.setDate(3, amVO.getEndDate());
			pstmt.setInt(4, amVO.getRunningTime());
			pstmt.setString(5, amVO.getPlot());
			pstmt.setString(6, amVO.getStatus());
			pstmt.setString(7, amVO.getMovieRating());

			pstmt.executeUpdate();

		} finally {
			db.dbClose(null, pstmt, con);
		}

	}

	public String selectMovieCode(String mname) throws SQLException {
		String moviecode = "";
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = db.getCon();

			StringBuilder insertMovie = new StringBuilder();
			insertMovie
					.append("	select moviecode																	")
					.append("	from movie																			")
					.append("	where mname=?																		")
					.append("	and to_char(input_date,'yyyy-mm-dd')=to_char(sysdate,'yyyy-mm-dd')		");

			pstmt = con.prepareStatement(insertMovie.toString());

			pstmt.setString(1, mname);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				moviecode = rs.getString("moviecode");
			}
		} finally {
			db.dbClose(rs, pstmt, con);
		}

		return moviecode;
	}

	public boolean insertMoviePosterFile(MovieFileVO mVO, String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		boolean flag=false;
		try {
			con = db.getCon();

			StringBuilder insertMovie = new StringBuilder();
			insertMovie.append("	insert into moviefile(MOVIECODE, FILENAME, FILETYPE)	")
					.append("	values(?,?,'P')											");
			
			pstmt = con.prepareStatement(insertMovie.toString());
			pstmt.setString(1, movieCode);
			pstmt.setString(2, mVO.getPosterFile());

			rs=pstmt.executeQuery();
			if(rs.next()) {
				flag=true;
			}
			
		} finally {
			db.dbClose(rs, pstmt, con);
		}
		
		return flag;
	}

	public void insertMovieStillFile(MovieFileVO mVO, String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
			try {
				
				con = db.getCon();
				StringBuilder insertMovie = new StringBuilder();
				insertMovie.append("	insert into moviefile(MOVIECODE, FILENAME, FILETYPE)	")
						.append("	values(?,?,'S')											");

				pstmt = con.prepareStatement(insertMovie.toString());
				for (String stillFile : mVO.getStillFile()) {
					pstmt.setString(1, movieCode);
					pstmt.setString(2, stillFile);
					pstmt.executeUpdate();
				}
			} finally {
				db.dbClose(null, pstmt, con);
			}
	}

	public void insertMovieInfo(MovieInfoVO miVO) {

	}

	public void insertMainTrailer(MovieFileVO mVO, String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = db.getCon();

			StringBuilder insertMovie = new StringBuilder();
			insertMovie.append("	insert into moviefile(MOVIECODE, FILENAME, FILETYPE)	")
					.append("	values(?,?,'T')											");

			pstmt = con.prepareStatement(insertMovie.toString());
			pstmt.setString(1, movieCode);
			pstmt.setString(2, mVO.getTrailerFile());
			
			pstmt.executeUpdate();
		} finally {
			db.dbClose(null, pstmt, con);
		}//try
	}//insertMainTrailer

}//class

package moviedetail;

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
import movie.ManageMovieVO;

public class MovieDAO {

	private static MovieDAO mDAO;

	private MovieDAO() {

	}// constroctor

	public static MovieDAO getInstance() {
		if (mDAO == null) {
			mDAO = new MovieDAO();
		} // if
		return mDAO;
	}// getInstance

	public MovieVO selectMovie(String movieCode) throws SQLException {

		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieVO mVO = new MovieVO();
		try {
			con = db.getCon();

			StringBuilder selectMovie = new StringBuilder();
			selectMovie.append(
					"	SELECT m.moviecode,m.movie_rating,m.runningtime, m.mname, m.releasedate, m.enddate, m.plot, m.status, f.filename, a.total_review, b.average, c.total_ticket		")
					.append("	FROM movie m																																					")
					.append("	LEFT JOIN (SELECT moviecode, count(*) as total_review FROM review GROUP BY moviecode) a ON m.moviecode = a.moviecode											")
					.append("	LEFT JOIN moviefile f ON m.moviecode = f.moviecode AND f.filename LIKE '%\\_P%' ESCAPE '\\'																		")
					.append("	LEFT JOIN (SELECT round((sum_star/cnt), 1) as average, r.moviecode																								")
					.append("	FROM (SELECT sum(star_rating) as sum_star, count(moviecode) as cnt, moviecode																					")
					.append("	FROM review GROUP BY moviecode) r) b ON m.moviecode = b.moviecode																								")
					.append("	LEFT JOIN (SELECT count(*) as total_ticket, moviecode FROM ticketing GROUP BY moviecode) c ON m.moviecode = c.moviecode	where m.moviecode=?						");
			pstmt = con.prepareStatement(selectMovie.toString());

			pstmt.setString(1, movieCode);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				mVO = new MovieVO();
				mVO.setMname(rs.getString("mname"));
				mVO.setReleaseDate(rs.getDate("releasedate"));
				mVO.setEndDate(rs.getDate("enddate"));
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
						mVO.setPlot(plot.toString());
						if (br != null) {
							br.close();
						}
					}
				} catch (IOException ie) {
					ie.printStackTrace();
				}
				mVO.setStatus(rs.getString("status"));
				mVO.setTicketRate(rs.getInt("total_ticket"));
				mVO.setStarRating(rs.getDouble("average"));
				mVO.setRunningtime(rs.getString("runningtime"));
				mVO.setMovieRating(rs.getString("movie_rating"));
			}
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return mVO;
	}// selectMovie

	public List<String> selectMovieInfoActor(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> list = new ArrayList<String>();
		try {
			con = db.getCon();

			String selectMovieFile = "select * from movie_info where moviecode=? and infotype='A'";
			pstmt = con.prepareStatement(selectMovieFile);
			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("info"));
			}
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}// selectMovieInfo

	public List<String> selectMovieInfoExtra(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> list = new ArrayList<String>();
		try {
			con = db.getCon();

			String selectMovieFile = "select * from movie_info where moviecode=? and infotype='a'";
			pstmt = con.prepareStatement(selectMovieFile);
			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("info"));
			}
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}// selectMovieInfo

	public List<String> selectMovieInfoGenre(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> list = new ArrayList<String>();
		try {
			con = db.getCon();

			String selectMovieFile = "select * from movie_info where moviecode=? and infotype='G'";
			pstmt = con.prepareStatement(selectMovieFile);
			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("info"));
			}
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}// selectMovieInfo

	public List<String> selectMovieInfoDirector(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> list = new ArrayList<String>();
		try {
			con = db.getCon();

			String selectMovieFile = "select * from movie_info where moviecode=? and infotype='D'";
			pstmt = con.prepareStatement(selectMovieFile);
			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("info"));
			}
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}// selectMovieInfo
//	public String selectMovieInfoCountry(String movieCode) throws SQLException {
//		DBConnection db=DBConnection.getInstance();
//		
//		Connection con=null;
//		PreparedStatement pstmt=null;
//		ResultSet rs=null;
//		List<String> list=new ArrayList<String>();
//		try {
//			con=db.getCon();
//			
//			String selectMovieFile="select * from movie_info where moviecode=? and infotype='D'";
//			pstmt=con.prepareStatement(selectMovieFile);
//			pstmt.setString(1, movieCode);
//			rs=pstmt.executeQuery();
//			
//			while(rs.next()) {
//				list.add(rs.getString("info"));
//			}
//		}finally {
//			db.dbClose(rs, pstmt, con);
//		}//try
//		return list;	
//	}//selectMovieInfo 나라 넣는거 만들어야댐 ㅠ 까먹음 

	public String selectPosterFile(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String poster = "";
		try {
			con = db.getCon();

			String selectMovieFile = "select * from moviefile where moviecode=? and filetype='P'";
			pstmt = con.prepareStatement(selectMovieFile);
			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				poster = rs.getString("filename");
			}
		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return poster;
	}// selectPosterFile

	public List<String> selectStillFile(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> list = new ArrayList<String>();
		try {
			con = db.getCon();

			String selectMovieFile = "select * from moviefile where moviecode=? and filetype='S'";
			pstmt = con.prepareStatement(selectMovieFile);
			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("filename"));
			}

		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}// selectMovieFile

	public String selectTrailerFile(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String trailer = "";
		try {
			con = db.getCon();

			String selectMovieFile = "select * from moviefile where moviecode=? and filetype='T'";
			pstmt = con.prepareStatement(selectMovieFile);
			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();

			rs.next();
			trailer = rs.getString("filename");

		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return trailer;
	}// selectMovieFile

	public List<ReviewVO> selectReview(String movieCode, PageVO pVO) throws SQLException{
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ReviewVO> list=new ArrayList<ReviewVO>();
		try {
			con = db.getCon();

			StringBuilder selectReview=new StringBuilder();
			selectReview
			.append(" select ID, INPUT_DATE, CONTENT, STAR_RATING,rnum from")
			.append(" (select ID, INPUT_DATE,moviecode, CONTENT, STAR_RATING, row_number() over(order by moviecode desc) rnum from review where moviecode=?)")
			.append("where rnum between ? and ?");
			pstmt = con.prepareStatement(selectReview.toString());
			pstmt.setString(1, movieCode);
			pstmt.setInt(2, pVO.getStartNum());
			pstmt.setInt(3, pVO.getEndNum());
			rs = pstmt.executeQuery();
			ReviewVO rVO=null;
			while(rs.next()) {
				rVO=new ReviewVO();
				rVO.setId(rs.getString("id"));
				rVO.setInput_date(rs.getDate("input_date"));
				rVO.setContent(rs.getString("content"));
				rVO.setStar_rating(rs.getDouble("star_rating"));
				list.add(rVO);
			}

		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return list;
	}//selectReview
	public int reviewCnt(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt=0;
		try {
			con = db.getCon();

			String selectMovieFile = "select count(*) cnt from review where moviecode=?";
			pstmt = con.prepareStatement(selectMovieFile);
			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();
		rs.next();
		cnt=rs.getInt("cnt");

		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return cnt;
	}
	
	public ReviewInfoVO reviewCntArg(String movieCode) throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ReviewInfoVO riVO=null;
		try {
			con = db.getCon();

			String selectReview="select count(*) cnt,round(sum(star_rating)/count(*),2) arg from review where moviecode=?";
			pstmt = con.prepareStatement(selectReview);
			pstmt.setString(1, movieCode);
			rs = pstmt.executeQuery();
		if(rs.next()) {
			riVO=new ReviewInfoVO();
			riVO.setReviewCnt(rs.getInt("cnt"));
			riVO.setReviewArg(rs.getDouble("arg"));
		}
		

		} finally {
			db.dbClose(rs, pstmt, con);
		} // try
		return riVO;
		
	}
	
}// class

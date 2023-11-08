package movieChart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dbConnection.DBConnection;



public class MovieChartDAO {
private static MovieChartDAO mnDAO;
	public MovieChartDAO() {
	}//constructor
	
	public static MovieChartDAO getInstance() {
	if(mnDAO==null) {
		mnDAO = new MovieChartDAO();
	}//if
	return mnDAO;
	}//getInstance
	
	public List<MovieChartVO> selectPreMainMovie() throws NamingException, SQLException{
		List<MovieChartVO> list = new ArrayList<MovieChartVO>();
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con=db.getCon();
			//쿼리문부터
			String spl = "select to_char(RELEASEDATE,'yyyy-mm-dd') RELEASEDATE, MOVIECODE, MNAME, round((SELECT count(*) from TICKETING t where TICKETDATE BETWEEN sysdate-7 AND sysdate and t.MOVIECODE = m.MOVIECODE)/(SELECT count(*) from TICKETING t where TICKETDATE BETWEEN sysdate-7 AND sysdate),3)*100||'%' ticketrate, MOVIE_RATING, PLOT,(SELECT round(sum(STAR_RATING)/count(*)) from REVIEW r where r.MOVIECODE = m.MOVIECODE) starrating FROM  MOVIE m where RELEASEDATE > sysdate and status = 'W' order by ticketrate desc";
			
			pstmt = con.prepareStatement(spl);
			rs = pstmt.executeQuery();
			
			MovieChartVO mmVO = null;
			while(rs.next()) {
				mmVO = new MovieChartVO();
				mmVO.setMovieCode(rs.getString("MOVIECODE"));
				mmVO.setmName(rs.getString("MNAME"));
				mmVO.setTicketRate(rs.getString("ticketrate"));
				mmVO.setMovieRating(rs.getString("MOVIE_RATING"));
				mmVO.setPlot(rs.getString("PLOT"));
				mmVO.setStarRating(rs.getDouble("starrating"));
				mmVO.setReleaseDate(rs.getString("RELEASEDATE"));
				list.add(mmVO);
			}//while
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		
		return list;
	}//selectMainMovie
	public List<MovieChartVO> selectMainMovie() throws NamingException, SQLException{
		List<MovieChartVO> list = new ArrayList<MovieChartVO>();
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
            con=db.getCon();
			//쿼리문부터
			String spl = "select to_char(RELEASEDATE,'yyyy-mm-dd') RELEASEDATE, MOVIECODE, MNAME, round((SELECT count(*) from TICKETING t where TICKETDATE BETWEEN sysdate-7 AND sysdate and t.MOVIECODE = m.MOVIECODE)/(SELECT count(*) from TICKETING t where TICKETDATE BETWEEN sysdate-7 AND sysdate),3)*100||'%' ticketrate, MOVIE_RATING, PLOT,(SELECT round(sum(STAR_RATING)/count(*)) from REVIEW r where r.MOVIECODE = m.MOVIECODE) starrating FROM  MOVIE m where status = 'Y' order by ticketrate desc";
			
			pstmt = con.prepareStatement(spl);
			rs = pstmt.executeQuery();
			
			MovieChartVO mmVO = null;
			while(rs.next()) {
			mmVO = new MovieChartVO();
			mmVO.setMovieCode(rs.getString("MOVIECODE"));
			mmVO.setmName(rs.getString("MNAME"));
			mmVO.setTicketRate(rs.getString("ticketrate"));
			mmVO.setMovieRating(rs.getString("MOVIE_RATING"));
			mmVO.setPlot(rs.getString("PLOT"));
			mmVO.setStarRating(rs.getDouble("starrating"));
			mmVO.setReleaseDate(rs.getString("RELEASEDATE"));
			list.add(mmVO);
			}//while
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		
		return list;
	}//selectMainMovie
	
	
}//class

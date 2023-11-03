package search;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbConnection.DBConnection;
import main.MainMovieVO;
import movieChart.MovieChartVO;

public class SearchDAO {
private static SearchDAO sDAO;

private SearchDAO() {
}//constructor

public static SearchDAO getInstance() {
	if(sDAO == null) {
		sDAO = new SearchDAO();
	}//if
	
	return sDAO;
}//getInstance

public List<MovieChartVO> selectMovieSearch(String search) throws SQLException{
	List<MovieChartVO> list = new ArrayList<MovieChartVO>();
	
	DBConnection db = DBConnection.getInstance();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = db.getCon();
		
		String selectMovieSearch = "select to_char(RELEASEDATE,'yyyy.mm.dd') RELEASEDATE, MOVIECODE, MNAME, round((SELECT count(*) from TICKETING t where TICKETDATE BETWEEN sysdate-7 AND sysdate and t.MOVIECODE = m.MOVIECODE)/(SELECT count(*) from TICKETING t where TICKETDATE BETWEEN sysdate-7 AND sysdate),3)*100||'%' ticketrate, MOVIE_RATING, PLOT,(SELECT round(sum(STAR_RATING)/count(*)) from REVIEW r where r.MOVIECODE = m.MOVIECODE) starrating FROM  MOVIE m where MNAME like ? order by ticketrate desc ";
		
		pstmt = con.prepareStatement(selectMovieSearch);
		pstmt.setString(1, "%"+search+"%");
		
		rs = pstmt.executeQuery();
		MovieChartVO mcVO = null;
		while(rs.next()) {
			mcVO = new MovieChartVO();
			mcVO.setMovieCode(rs.getString("MOVIECODE"));
			mcVO.setmName(rs.getString("MNAME"));
			mcVO.setTicketRate(rs.getString("ticketrate"));
			mcVO.setMovieRating(rs.getString("MOVIE_RATING"));
			mcVO.setPlot(rs.getString("PLOT"));
			mcVO.setStarRating(rs.getDouble("starrating"));
			mcVO.setReleaseDate(rs.getString("RELEASEDATE"));
			list.add(mcVO);
		}//while
	}finally {
		db.dbClose(rs, pstmt, con);
	}//finally
	
	return list;
}//selectMovieSearch
}//class

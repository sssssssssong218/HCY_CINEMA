package main;

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



public class MainDAO {
private static MainDAO mnDAO;
	public MainDAO() {
	}//constructor
	
	public static MainDAO getInstance() {
	if(mnDAO==null) {
		mnDAO = new MainDAO();
	}//if
	return mnDAO;
	}//getInstance
	
	public List<MainMovieVO> selectMainMovie() throws NamingException, SQLException{
		List<MainMovieVO> list = new ArrayList<MainMovieVO>();
		DBConnection db = DBConnection.getInstance();
		
		MainMovieVO mmVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
            con=db.getCon();
			//쿼리문부터
//			String spl = "SELECT MT.MOVIECODE, FILENAME, AD_MSG,(SELECT M.MNAME FROM MOVIE M WHERE MT.MOVIECODE = M.MOVIECODE) MNAME FROM MAINTRAILER MT";
//			
//			pstmt = con.prepareStatement(spl);
//			rs = pstmt.executeQuery();
//			
//			if(rs.next()) {
//			mmVO = new MainMovieVO();
//			mmVO.setMovieCode(rs.getString("MOVIECODE"));
//			mmVO.setTrailerName(rs.getString("FILENAME"));
//			mmVO.setAdMsg(rs.getString("AD_MSG"));
//			mmVO.setMovieName(rs.getString("MNAME"));
//			}//if
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		
		return list;
	}//selectMainMovie
	
	private double selectMainStarRating() {
		double rating = 0.0;
		//아직 안함
		return rating;
	}//selectMainStarRating
	
	public MainTrailerVO selectMainTrailer() throws SQLException, NamingException {
		DBConnection db = DBConnection.getInstance();
		
		MainTrailerVO mtVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
            con=db.getCon();
			
			String spl = "SELECT MT.MOVIECODE, FILENAME, AD_MSG,(SELECT M.MNAME FROM MOVIE M WHERE MT.MOVIECODE = M.MOVIECODE) MNAME FROM MAINTRAILER MT";
			
			pstmt = con.prepareStatement(spl);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			mtVO = new MainTrailerVO();
			mtVO.setMovieCode(rs.getString("MOVIECODE"));
			mtVO.setTrailerName(rs.getString("FILENAME"));
			mtVO.setAdMsg(rs.getString("AD_MSG"));
			mtVO.setMovieName(rs.getString("MNAME"));
			}//if
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		return mtVO;
	}//selectMainTrailer
	
}//class

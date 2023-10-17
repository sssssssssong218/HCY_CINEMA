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

import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;

import DB.DbConn;

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
	
	public List<MainMovieVO> selectMainMovie(){
		List<MainMovieVO> list = new ArrayList<MainMovieVO>();
		//아직 안함
		return list;
	}//selectMainMovie
	
	private double selectMainStarRating() {
		double rating = 0.0;
		//아직 안함
		return rating;
	}//selectMainStarRating
	
	public MainTrailerVO selectMainTrailer() throws SQLException, NamingException {
		MainTrailerVO mtVO = new MainTrailerVO();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			Context ctx = new InitialContext();
            
            DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/hcydb");
            
            con=ds.getConnection();
			
			String spl = "SELECT MT.MOVIECODE, FILENAME, AD_MSG,(SELECT M.MNAME FROM MOVIE M WHERE MT.MOVIECODE = M.MOVIECODE) MNAME FROM MAINTRAILER MT";
			
			pstmt = con.prepareStatement(spl);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			mtVO.setMovieCode(Integer.toString(rs.getInt("MOVIECODE")));
			mtVO.setTrailerName(rs.getString("FILENAME"));
			mtVO.setAdMsg(rs.getString("AD_MSG"));
			mtVO.setMovieName(rs.getString("MNAME"));
			}//if
		}finally {
			if(con!=null) {con.close();}
			if(pstmt!=null) {pstmt.close();}
			if(rs!=null) {rs.close();}
		}//finally
		return mtVO;
	}//selectMainTrailer
	public static void main(String[] args) {
		try {
			System.out.println(getInstance().selectMainTrailer()); 
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}//class

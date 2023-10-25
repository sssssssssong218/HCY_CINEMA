package movie;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbConnection.DBConnection;

public class ManageMovieMainDAO {
	private static ManageMovieMainDAO mmmDAO;
	
	public ManageMovieMainDAO() {
		
	}//constructor
	
	public static ManageMovieMainDAO getInstance() {
		if(mmmDAO==null) {
			mmmDAO=new ManageMovieMainDAO();
		}//end if
		
		return mmmDAO;
	}//getInstance
	
	public List<ManageMovieVO> selectMovie() throws SQLException{
		List<ManageMovieVO> list=new ArrayList<ManageMovieVO>();
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ManageMovieVO mmVO=null;
		try {
			con=db.getCon();
			
			StringBuilder selectMovie=new StringBuilder();
			selectMovie
			.append("	select m.moviecode,m.mname,m.releasedate,m.enddate,m.plot,m.status,f.filename,a.total_review,b.average,c.total_ticket			")
			.append("	from 	 movie m,(select count(*) total_review,moviecode from review group by moviecode) a,moviefile f,							")
			.append("	(select round((sum_star/cnt),1) average, r.moviecode																			")
			.append("	from (select sum(star_rating) sum_star,count(moviecode) cnt,moviecode															")
			.append("	from review group by moviecode) r) b,																							")
			.append("	(select count(*) total_ticket, MOVIECODE from ticketing group by moviecode) c													")
			.append("	where m.moviecode=f.moviecode(+) and m.moviecode=a.moviecode(+) and m.moviecode=b.moviecode(+) and m.moviecode=c.moviecode(+)	");
			
			pstmt=con.prepareStatement(selectMovie.toString());
			
			rs=pstmt.executeQuery();
			Clob clob=null;
			while(rs.next()) {
				mmVO=new ManageMovieVO();
				mmVO.setMovieCode(rs.getString("moviecode"));
				mmVO.setMname(rs.getString("mname"));
				mmVO.setReleaseDate(rs.getDate("releasedate"));
				mmVO.setEndDate(rs.getDate("enddate"));
				clob=rs.getClob("plot");
				 BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(clob.getAsciiStream()));
	                StringBuilder stringBuilder = new StringBuilder();
	                String line;
	                try {
						while ((line = bufferedReader.readLine()) != null) {
						    stringBuilder.append(line);
						}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	                String clobData = stringBuilder.toString();
				mmVO.setPlot(clobData);
				mmVO.setStatus(rs.getString("status"));
				mmVO.setReviewCnt(rs.getInt("total_review"));
				mmVO.setFileName(rs.getString("filename"));
				mmVO.setTicketRate(rs.getInt("total_ticket"));
				mmVO.setStarRating(rs.getDouble("average"));
				list.add(mmVO);
			}
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		
		return list;
	}
}

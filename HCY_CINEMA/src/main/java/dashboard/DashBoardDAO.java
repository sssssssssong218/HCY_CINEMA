package dashboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import dbConnection.DBConnection;
import manageMember.MemberVO;

public class DashBoardDAO {
	private static DashBoardDAO dbDAO;
	
	public DashBoardDAO() {
		
	}//constructor
	
	public static DashBoardDAO getInstance() {
		if(dbDAO==null) {
			dbDAO=new DashBoardDAO();
		}//end if
		
		return dbDAO;
	}//getInstance
	
	public List<String> selectMovieCntInfo()throws SQLException{
		List<String> list=new ArrayList<String>();
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
	

		
		try {
			con=db.getCon();
			
			StringBuilder selectMovieCnt=new StringBuilder();
			selectMovieCnt
			.append(" 		SELECT *																		")
			.append(" 		FROM  (SELECT COUNT(ticketdate) now_week,moviecode								")
			.append(" 		from ticketing																	")
			.append(" 	 	WHERE ticketdate BETWEEN sysdate-7 AND sysdate									")
			.append(" 		GROUP BY moviecode) nw,															")
			.append(" 		(SELECT COUNT(ticketdate) last_week,moviecode									")
			.append(" 		FROM ticketing																	")
			.append(" 		WHERE ticketdate BETWEEN sysdate-15 AND sysdate-8								")
			.append(" 		GROUP BY moviecode) lw															")
			.append(" 		where nw.moviecode=lw.moviecode													");
			
			pstmt=con.prepareCall(selectMovieCnt.toString());
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(rs.getString("now_week"));
				list.add(rs.getString("last_week"));
			}
			
		}finally {
		db.dbClose(rs, pstmt, con);
		}
		return list;
	}
	
}//class

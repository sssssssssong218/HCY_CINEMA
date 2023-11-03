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

	}// constructor

	public static DashBoardDAO getInstance() {
		if (dbDAO == null) {
			dbDAO = new DashBoardDAO();
		} // end if

		return dbDAO;
	}// getInstance

	public List<String> selectMovieCntInfo() throws SQLException {
		List<String> list = new ArrayList<String>();

		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = db.getCon();

			StringBuilder selectMovieCnt = new StringBuilder();
			selectMovieCnt
					.append(" 		SELECT nw.now_week,lw.last_week,nw.moviecode,m.mname							")
					.append(" 		FROM  (SELECT COUNT(ticketdate) now_week,moviecode								")
					.append(" 		from ticketing																	")
					.append(" 	 	WHERE ticketdate BETWEEN sysdate-7 AND sysdate									")
					.append(" 		GROUP BY moviecode) nw,															")
					.append(" 		(SELECT COUNT(ticketdate) last_week,moviecode									")
					.append(" 		FROM ticketing																	")
					.append(" 		WHERE ticketdate BETWEEN sysdate-15 AND sysdate-8								")
					.append(" 		GROUP BY moviecode) lw,															")
					.append(" 		movie m																			")
					.append(" 		where (m.moviecode=nw.moviecode(+) and m.moviecode=lw.moviecode(+))					")
					.append("		and m.status='Y' order by nw.now_week desc														");

			pstmt = con.prepareCall(selectMovieCnt.toString());

			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("now_week"));
				list.add(rs.getString("last_week"));
				list.add(rs.getString("mname"));
			}
		} finally {
			db.dbClose(rs, pstmt, con);
		}
		return list;
	}

	public int selectWeekTicketCnt() throws SQLException {

		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int ticketCnt = 0;
		try {
			con = db.getCon();

			StringBuilder selectMovieName = new StringBuilder();
			selectMovieName
			.append(" 		SELECT COUNT(ticketdate) now_week												")
			.append(" 		from ticketing																	")
			.append(" 	 	WHERE ticketdate BETWEEN to_date(to_char(sysdate,'yyyy-mm-dd'))-7 AND to_date(to_char(sysdate,'yyyy-mm-dd'))									")
			.append(" 		GROUP BY moviecode																");

			pstmt = con.prepareStatement(selectMovieName.toString());

			rs = pstmt.executeQuery();
			rs.next();
			ticketCnt = rs.getInt("now_week");

		} finally {
			db.dbClose(rs, pstmt, con);
		}
		return ticketCnt;
	}

	public int[] selectTicketCnt() throws SQLException {
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int[] ticketCnt = null;
		
		try {
			con=db.getCon();
			
			StringBuilder monthCnt=new StringBuilder();
			monthCnt.append("select((select SUM(capacity) from screen)-(select count(*) from ticketing where ticketdate between to_date(to_char(sysdate,'yyyy-mm-dd'))-30 and to_date(to_char(sysdate,'yyyy-mm-dd')))) vacany,")
					.append("(select count(*) from ticketing where ticketdate between to_date(to_char(sysdate,'yyyy-mm-dd'))-30 and to_date(to_char(sysdate,'yyyy-mm-dd'))) month_ticket,										")
					.append("(select count(*) from ticketing where status='N') cancel_ticket																	")
					.append("from dual																															");
			pstmt=con.prepareStatement(monthCnt.toString());
			
			rs=pstmt.executeQuery();
			
			rs.next();
			ticketCnt=new int[3];
			ticketCnt[0]=rs.getInt("vacany");
			ticketCnt[1]=rs.getInt("month_ticket");
			ticketCnt[2]=rs.getInt("cancel_ticket");
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		return ticketCnt;
	}
	public int[] selectMember() throws SQLException {
		int[] memberCnt=null;
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con=db.getCon();
			
			StringBuilder member=new StringBuilder();
			member
			.append("	select																		")
			.append("	(select count(status) from member where status='M') member,					")
			.append("	(select count(status) from member where status='W') former					")
			.append("	from dual																	");
			
			pstmt=con.prepareStatement(member.toString());
			
			rs=pstmt.executeQuery();
			
			rs.next();
			memberCnt=new int[2];
			
			memberCnt[0]=rs.getInt("member");
			memberCnt[1]=rs.getInt("former");
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		return memberCnt;
	}
	public int selectReviewCnt() throws SQLException {
		int rvCnt=0;
		
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con=db.getCon();
			
			StringBuilder reviewCnt=new StringBuilder();
			reviewCnt.append("select count(*) cnt from review where input_date between to_date(to_char(sysdate,'yyyy-mm-dd'))-7 and to_date(to_char(sysdate,'yyyy-mm-dd'))");
			
			pstmt=con.prepareStatement(reviewCnt.toString());
			
			rs=pstmt.executeQuery();
			
			rs.next();
			
			rvCnt=rs.getInt("cnt");
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		
		return rvCnt;
	}
	
	public int selectPostCnt() throws SQLException {
		int postCnt=0;
		DBConnection db = DBConnection.getInstance();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con=db.getCon();
			
			StringBuilder selectPost=new StringBuilder();
			selectPost.append("select count(*) cnt from board where input_date between to_date(to_char(sysdate,'yyyy-mm-dd'))-7 and to_date(to_char(sysdate,'yyyy-mm-dd'))");
			
			pstmt=con.prepareStatement(selectPost.toString());
			
			rs=pstmt.executeQuery();
			
			rs.next();
			
			postCnt=rs.getInt("cnt");
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		return postCnt;
	}
}// class

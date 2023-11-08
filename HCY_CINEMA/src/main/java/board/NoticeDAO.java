package board;

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
import manageMember.BoardRangeVO;

public class NoticeDAO {
	private static NoticeDAO nDAO;
	
	public NoticeDAO() {
		
	}//constructor
	
	public static NoticeDAO getInstance() {
		if(nDAO==null) {
			nDAO=new NoticeDAO();
		}//end if
		
		return nDAO;
	}//getInstance
	
	public List<NoticeVO> selectNotice(BoardRangeVO brVO) throws SQLException{
		List<NoticeVO> list=new ArrayList<NoticeVO>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		NoticeVO nVO=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try{
			con=db.getCon();
			
			StringBuilder selectNotice=new StringBuilder();
			selectNotice.append( " select *	")
			.append(" from (select noticenum, section, title, input_date, viewcount, ROWNUM as rnum	")
			.append(" from (select noticenum, section, title, to_char(input_date, 'yyyy-mm-dd') input_date, viewcount from notice order by noticenum desc))				");
			selectNotice.append("where rnum between ? and ?      ");
			
			pstmt=con.prepareStatement(selectNotice.toString());
			 System.out.println(selectNotice.toString());
			 int bindCnt=1;
	         if( brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )) {
	         pstmt.setString( bindCnt++ , brVO.getKeyword());
	         }//end if
	         
	         pstmt.setInt( bindCnt++ , brVO.getStartNum() );
	         pstmt.setInt( bindCnt++ , brVO.getEndNum() );
	         
			 
			 rs=pstmt.executeQuery();
			 
			 while( rs.next() ){
				 nVO=new NoticeVO();
				 nVO.setNoticeNum(rs.getInt("noticenum"));
				 nVO.setSection(rs.getString("section"));
				 nVO.setTitle(rs.getString("title"));
				 nVO.setInputDate(rs.getDate("input_date"));
				 nVO.setViewCnt(rs.getInt("viewcount"));
				 
				 list.add(nVO);
			 }//end while
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}//end finally
		
		return list;
	}//selectNotice
	
	public List<NoticeVO> selectNotice( String section ) throws SQLException{//구분 탭으로 리스트
		List<NoticeVO> list=new ArrayList<NoticeVO>();
		
		NoticeVO nVO=null;
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			
			con=db.getCon();
			
			StringBuilder selectNotice=new StringBuilder();
			selectNotice.append("		select title, section, to_char(input_date, 'yyyy-mm-dd') input_date, viewcount, content	")
			.append("		from  notice						")
			.append("		where section=?				");
			
			pstmt=con.prepareStatement(selectNotice.toString());
			pstmt.setString(1, section);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				nVO=new NoticeVO();
				nVO.setTitle(rs.getString("title"));
				nVO.setSection(rs.getString("section"));
				nVO.setInputDate(rs.getDate("input_date"));
				nVO.setViewCnt(rs.getInt("viewCnt"));
				nVO.setContent(rs.getString("content"));
				list.add(nVO);
			}//end if
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}//end finally
		
		return list;
	}//selectNotice
	
	public List<NoticeVO> selectSpecificNoticeSection(String key,String section) throws SQLException{
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = db.getCon();
			
			String selectSpecificBoard = "SELECT NOTICENUM, SECTION, TITLE, INPUT_DATE, VIEWCOUNT from NOTICE where TITLE like ?";
			
			pstmt = con.prepareStatement(selectSpecificBoard);
			pstmt.setString(1, "%"+key+"%");
			pstmt.setString(2, "%"+section+"%");
			
			rs=pstmt.executeQuery();
			NoticeVO nVO = null;
			while(rs.next()) {
				nVO = new NoticeVO();
				nVO.setNoticeNum(rs.getInt("NOTICENUM"));
				nVO.setSection(rs.getString("SECTION"));
				nVO.setTitle(rs.getString("TITLE"));
				nVO.setInputDate(rs.getDate("INPUT_DATE"));
				nVO.setViewCnt(rs.getInt("VIEWCOUNT"));
				list.add(nVO);
			}//while
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		
		return list;
	}//selectSpecificBoard
	
	public int selectSpecificNotice(String key, String field, String section) throws SQLException{
		int result = 0;
		
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = db.getCon();
			
			StringBuilder selectSpecificBoard = new StringBuilder();
			selectSpecificBoard.append("	SELECT count(*) from NOTICE	")
			.append("	where	")
			.append(field)
			.append("	like ?	");
			if( !"전체".equals(section)) {
				selectSpecificBoard.append("	and 	")
				.append("	SECTION =	'")
				.append(section)
				.append("'");
			}//if
			
			pstmt = con.prepareStatement(selectSpecificBoard.toString());
			pstmt.setString(1, "%"+key+"%");
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}//while
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		
		return result;
	}//selectSpecificBoard
	
	public List<NoticeVO> selectSpecificNotice(String key, String field, String section,int page ) throws SQLException{
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = db.getCon();
			StringBuilder selectSpecificBoard = new StringBuilder();
			selectSpecificBoard.append("SELECT * FROM (	");
			selectSpecificBoard.append("	SELECT NOTICENUM, SECTION, TITLE, INPUT_DATE, VIEWCOUNT, ROWNUM AS rnum from (SELECT NOTICENUM, SECTION, TITLE, INPUT_DATE, VIEWCOUNT from notice	")
			.append("	where	")
			.append(field)
			.append("	like ?		");
			if( !"전체".equals(section)) {
				selectSpecificBoard.append("	and 	")
				.append("	SECTION =	'")
				.append(section)
				.append("'");
			}//if
			selectSpecificBoard.append("	order by NOTICENUM desc)) 	")
			.append("	where rnum >= ? and rnum <= ?	");
			
			pstmt = con.prepareStatement(selectSpecificBoard.toString());
			System.out.println(selectSpecificBoard.toString());
			pstmt.setString(1, "%"+key+"%");
			pstmt.setInt(2, (page-1)*20+1);
			pstmt.setInt(3, page*20);
			rs=pstmt.executeQuery();
			NoticeVO nVO = null;
			while(rs.next()) {
				nVO = new NoticeVO();
				nVO.setNoticeNum(rs.getInt("NOTICENUM"));
				nVO.setSection(rs.getString("SECTION"));
				nVO.setTitle(rs.getString("TITLE"));
				nVO.setInputDate(rs.getDate("INPUT_DATE"));
				nVO.setViewCnt(rs.getInt("VIEWCOUNT"));
				list.add(nVO);
			}//while
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		
		return list;
	}//selectSpecificBoard
	
	public List<NoticeVO> selectSpecificNotice( int noticeNum ) throws SQLException{
		List<NoticeVO> list=new ArrayList<NoticeVO>();
		
		NoticeVO nVO=null;
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try {
			
			con=db.getCon();
			
			StringBuilder selectSpecificNotice=new StringBuilder();
			selectSpecificNotice.append("		select title, section, to_char(input_date, 'yyyy-mm-dd') input_date, viewcount, content	")
			.append("		from  notice						")
			.append("		where noticenum=?		");
			
			pstmt=con.prepareStatement(selectSpecificNotice.toString());
			pstmt.setInt(1, noticeNum);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				nVO=new NoticeVO();
				nVO.setTitle(rs.getString("title"));
				nVO.setSection(rs.getString("section"));
				nVO.setInputDate(rs.getDate("input_date"));
				nVO.setViewCnt(rs.getInt("viewCount"));
				
				BufferedReader br=null;
				StringBuilder content=new StringBuilder("");
				try {
					Clob clob=rs.getClob("content");
					if(clob!=null) {
						br=new BufferedReader(clob.getCharacterStream());
						String temp="";
						while((temp=br.readLine())!=null) {
							content.append(temp);
						}//end while
						nVO.setContent(content.toString());
						if(br!=null) {
							br.close();
						}//end if
					}//end if
					
				}catch(IOException ie) {
					ie.printStackTrace();
				}//end catch
				
				list.add(nVO);
			}//end if
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}//end finally
		
		return list;
	}//selectSpecificNotice
	
	public boolean increaseViewCount(int noticeNum)throws SQLException{
		
		boolean flag=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			
			String updateViewCount="update notice set viewcount=viewcount+1 where noticenum=?";
			
			pstmt=con.prepareStatement(updateViewCount);
			
			pstmt.setInt(1, noticeNum);
			
			int rowCnt=pstmt.executeUpdate();
			
			if(rowCnt>0) {
				flag=true;
			}//end if
		}finally {
			db.dbClose(null, pstmt, con);
		}
		
		return flag;
	}//increaseViewCount
	
	public int UpdatedViewCount(int noticeNum) throws SQLException {
	    int updatedViewCount = 0;
	    
	    Connection con = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    DBConnection db = DBConnection.getInstance();
	    
	    try {
	        con = db.getCon();
	        
	        String selectViewCount = "SELECT viewcount FROM notice WHERE noticenum = ?";
	        
	        pstmt = con.prepareStatement(selectViewCount);
	        pstmt.setInt(1, noticeNum);
	        
	        rs = pstmt.executeQuery();
	        
	        if (rs.next()) {
	            updatedViewCount = rs.getInt("viewcount");
	        }
	    } finally {
	        db.dbClose(rs, pstmt, con);
	    }
	    
	    return updatedViewCount;
	}//UpdatedViewCount
	
	public int totalCount( manageMember.BoardRangeVO brVO ) throws SQLException {
		int totalCount=0;
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {		
		//1.
		//2.
		//3.
			con=db.getCon();
		//4.
			StringBuilder selectCnt=new StringBuilder();
			selectCnt.append("select count(*) cnt from notice	");
			
			if( /*조건1=처음호출되면 키워드 없으니까*/  brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )){
				String field="info";
				if( "1".equals( brVO.getField() ) ){
					field="title";
				}//end if
				if( "2".equals( brVO.getField() ) ) {
					field="contents";
				}//end if
				
				selectCnt.append("where  ").append( field ).append("	like '%'||?||'%'");
			}//end if
			
			pstmt=con.prepareStatement(selectCnt.toString());
			
		//5. 바인드변수 값 설정
			if(  brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )){
				pstmt.setString(1, brVO.getKeyword());
			}//end if
			
		//6.
			rs=pstmt.executeQuery();
			
			if( rs.next() ) {
				totalCount=rs.getInt("cnt");
			}//end if
			
		}finally {
		//7.
			db.dbClose(rs, pstmt, con);
		}//end finally
		
		return totalCount;
	}//totalCount
	
}//class

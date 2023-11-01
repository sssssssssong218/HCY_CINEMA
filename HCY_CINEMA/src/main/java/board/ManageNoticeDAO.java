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

public class ManageNoticeDAO {
	private static ManageNoticeDAO mnDAO;
	
	public ManageNoticeDAO() {
		
	}//constructor
	
	public static ManageNoticeDAO getInstance() {
		if(mnDAO==null) {
			mnDAO=new ManageNoticeDAO();
		}//end if
		return mnDAO;
	}//getInstance
	
	public int totalCount( BoardRangeVO brVO ) throws SQLException {
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
	         selectCnt.append("select count(*) cnt from notice   ");
	         
	         /*조건1=처음호출되면 키워드 없으니까*/
	         if( brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )){
	            String field="section";
	            
	            if( "2".equals( brVO.getField() ) ) {
	               field="title";
	            }//end if
	            
	            selectCnt.append("where  ").append( field ).append("   like '%'||?||'%'");
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
	
	/**
	    * 시작번호와 끝번호 
	    */
	   public List<NoticeVO> selectNotice(BoardRangeVO brVO) throws SQLException{
	      List<NoticeVO> list=new ArrayList<NoticeVO>();
	      
	      DBConnection db=DBConnection.getInstance();
	      
	      Connection con=null;
	      PreparedStatement pstmt=null;
	      ResultSet rs=null;
	      
	      try {
	      //1. JDNI 사용객체 생성
	      //2. DataSource 얻기
	      //3. Connection 얻기
	         con=db.getCon();
	      //4. 쿼리문 생성객체 얻기 => 검색 키워드와 검색 field에 따라 Dynamic Query로 변경
	         StringBuilder selectNotice=new StringBuilder();
	         selectNotice
	         .append("      select noticenum, section, title, input_date, viewcount, content                        ")
	         .append("      from (select noticenum, section, title, input_date, viewcount, content,                 ")
	         .append("      row_number() over (order by noticeNum desc) rnum                              			")
	         .append("      from notice      ");
	            
	         if(  brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() ) ) {
	            String field="section";
	            
	            if("2".equals( brVO.getField() ) ) {
	               field="title";
	            }///end if
	            selectNotice.append("where   ").append(field).append(" like '%'||?||'%'");
	            
	         }//end if
	         
	         selectNotice.append(")      where rnum between ? and ?         ");
	         
	         pstmt=con.prepareStatement( selectNotice.toString() );
	         
	      //5. 바인드 변수 값 설정
	         int bindCnt=1;
	         if( brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )) {
	         pstmt.setString( bindCnt++ , brVO.getKeyword());
	         }//end if
	         
	         pstmt.setInt( bindCnt++ , brVO.getStartNum() );
	         pstmt.setInt( bindCnt++ , brVO.getEndNum() );
	         
	      //6. 쿼리문 수행 후 결과 얻기
	         NoticeVO nVO=null;
	         
	         rs=pstmt.executeQuery();
	         
	         while( rs.next() ) {
	        	 nVO=new NoticeVO();
	        	 nVO.setNoticeNum(rs.getInt("noticeNum"));
	             nVO.setSection(rs.getString("section"));
	             nVO.setTitle(rs.getString("title"));
	             nVO.setInputDate(rs.getDate("input_Date"));
	             nVO.setViewCnt(rs.getInt("viewCount"));
	            list.add(nVO);
	         }//end while
	         
	      }finally {
	         db.dbClose(rs, pstmt, con);
	      //7. 연결끊기
	      }//end finally
	      
	      return list;
	   }//selectNotice
	   
	   public List<NoticeVO> selectSpecificNotice(int noticeNum) throws SQLException{
			List<NoticeVO> list=new ArrayList<NoticeVO>();
			
			DBConnection db=DBConnection.getInstance();
			
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			NoticeVO nVO=null;
			
			
			try {
				con=db.getCon();
				
				StringBuilder selectNotice=new StringBuilder();
				selectNotice.append("SELECT NOTICENUM, SECTION, TITLE, INPUT_DATE, VIEWCOUNT, CONTENT")
				.append("	FROM NOTICE																")
				.append("	WHERE NOTICENUM  =?															");
				
				pstmt=con.prepareStatement(selectNotice.toString());
				pstmt.setInt(1, noticeNum);
				
				rs=pstmt.executeQuery();
				
				
				while(rs.next()) {
					nVO=new NoticeVO();
		        	 nVO.setNoticeNum(rs.getInt("noticeNum"));
		             nVO.setSection(rs.getString("section"));
		             nVO.setTitle(rs.getString("title"));
		             nVO.setInputDate(rs.getDate("input_Date"));
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
				}//end while
			}finally {
				db.dbClose(rs, pstmt, con);
			}//end finally
			return list;
		}//selectSpecificBoard
	   
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
	   
	
	public boolean deleteNotice(int noticecNum)throws SQLException{
		
		boolean flag=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			
			String deleteBoard="delete from notice where noticenum=?";
			
			pstmt=con.prepareStatement(deleteBoard);
			
			pstmt.setInt(1, noticecNum);
			
			int rowCnt=pstmt.executeUpdate();
			
			if(rowCnt>0) {
				flag=true;
			}//end if
		}finally {
			db.dbClose(null, pstmt, con);
		}
		
		return flag;
	}//deleteNotice
	
	public boolean insertNotice(NoticeVO nVO)throws SQLException{
		
		boolean flag=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DBConnection db=DBConnection.getInstance();
		try {
			con=db.getCon();
			
			StringBuilder insertNotice=new StringBuilder();
			insertNotice.append("insert into notice(section,title,content) values(?,?,?)");
			
			pstmt=con.prepareStatement(insertNotice.toString());
			
			pstmt.setString(1, nVO.getSection());
			pstmt.setString(2, nVO.getTitle());
			pstmt.setString(3, nVO.getContent());
			int rowCnt=pstmt.executeUpdate();
			if(rowCnt>0) {
				flag=true;
			}//end if
			
		}catch(SQLException se) {
			se.printStackTrace();
		
		}finally {
			db.dbClose(null, pstmt, con);
		}//end finally
		
		return flag;
	}//insertNotice
	
	public boolean updateNotice(NoticeVO nVO)throws SQLException{
		
		boolean flag=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			StringBuilder updateNotice=new StringBuilder();
			updateNotice.append("update notice ")
			.append("set section=?,title=?,content=? ")
			.append(" where noticenum=? ");
			
			
			pstmt=con.prepareStatement(updateNotice.toString());
			
			pstmt.setString(1, nVO.getSection());
			pstmt.setString(2, nVO.getTitle());
			Clob clob=con.createClob();
			clob.setString(1, nVO.getContent());
			
			pstmt.setClob(3, clob);
			pstmt.setInt(4, nVO.getNoticeNum());

			int rowCnt=pstmt.executeUpdate();
			
			if(rowCnt>0) {
				flag=true;
			}//end if
			
		}finally {
			db.dbClose(null, pstmt, con);
		}//end finally
		
		
		return flag;
	}//updateNotice
	
	
}//class
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
import manageMember.MemberVO;

public class ManageBoardDAO {
	private static ManageBoardDAO mbDAO;
	
	public ManageBoardDAO() {
		
	}//constructor
	
	public static ManageBoardDAO getInstance() {
		if(mbDAO==null) {
			mbDAO=new ManageBoardDAO();
		}//end if
		
		return mbDAO;
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
            selectCnt.append("      SELECT count(*) cnt")
            .append("      FROM (")
            .append("      SELECT b.postNum, b.id, b.title, b.input_date, b.viewcount,")
            .append("     ROW_NUMBER() OVER (ORDER BY b.POSTNUM DESC) AS rnum ")
            .append("       FROM board b ")
            .append("         LEFT JOIN member m ON b.id = m.id ")
            .append("         WHERE m.status = 'M' ");
            
            /*조건1=처음호출되면 키워드 없으니까*/ 
            if(  brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )){
               String field="id";
               if( "2".equals( brVO.getField() ) ) {
                  field="title";
               }//end if
               
               selectCnt.append(" AND (b.  ").append( field ).append("   like '%'||?||'%' )");
            }//end if
            selectCnt.append(")");
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
	 
	 
	 public List<BoardVO> selectBoard(BoardRangeVO brVO) throws SQLException{
	      List<BoardVO> list=new ArrayList<BoardVO>();
	      
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
	         StringBuilder selectBoard=new StringBuilder();
	         selectBoard
	         .append("      SELECT postNum, id, title, input_date, viewcount  ")
	         .append("      FROM (")
	         .append("      SELECT b.postNum, b.id, b.title, b.input_date, b.viewcount,")
	         .append("      ROW_NUMBER() OVER (ORDER BY b.POSTNUM DESC) AS rnum")
	         .append("      FROM board b")
	         .append("      LEFT JOIN member m ON b.id = m.id")
	         .append("      WHERE m.status = 'M'");
	            
	         if(  brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() ) ) {
	            String field="id";
	            
	             if("2".equals( brVO.getField() ) ) {
	                field="title";
	             }///end if
	             selectBoard.append("AND (b.  ").append(field).append(" like '%'||?||'%')");
	            
	         }//end if
	         
	         selectBoard.append(")WHERE rnum BETWEEN ? AND ?       ");
	            
	         pstmt=con.prepareStatement( selectBoard.toString() );
	         
	      //5. 바인드 변수 값 설정
	         int bindCnt=1;
	         if( brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )) {
	         pstmt.setString( bindCnt++ , brVO.getKeyword());
	         }//end if
	         
	         pstmt.setInt( bindCnt++ , brVO.getStartNum() );
	         pstmt.setInt( bindCnt++ , brVO.getEndNum() );
	         
	      //6. 쿼리문 수행 후 결과 얻기
	         BoardVO bVO=null;
	         
	         rs=pstmt.executeQuery();
	         
	         while( rs.next() ) {
	        	 bVO=new BoardVO();
	        	 bVO.setPostNum(rs.getInt("postNum"));
	        	 bVO.setId(rs.getString("id"));
	        	 bVO.setTitle(rs.getString("title"));
	        	 bVO.setInputDate(rs.getDate("input_Date"));
	        	 bVO.setViewCount(rs.getInt("viewCount"));
	            list.add(bVO);
	         }//end while
	         
	      }finally {
	         db.dbClose(rs, pstmt, con);
	      //7. 연결끊기
	      }//end finally
	      
	      return list;
	   }//selectMember
	
	
}//class

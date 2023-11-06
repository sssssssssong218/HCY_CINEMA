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

public class BoardDAO {
	private static BoardDAO bDAO;
	
	public BoardDAO() {
		
	}//constructor
	
	public static BoardDAO getInstance() {
		if(bDAO==null) {
			bDAO=new BoardDAO();
		}//end if
		
		return bDAO;
	}//getInstance
	
	
	public List<BoardVO> selectBoard(BoardRangeVO brVO) throws SQLException{
		List<BoardVO> list=new ArrayList<BoardVO>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		BoardVO bVO=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			
			StringBuilder selectBoardList=new StringBuilder();
			
			selectBoardList
			.append("select postnum, id, title, input_date, viewcount, rnum ")
			.append("from (select postnum, id, title, to_char(input_date, 'yyyy-mm-dd') input_date, viewcount, ROW_NUMBER() OVER (ORDER BY POSTNUM DESC) as rnum ")
			.append("from board)								")
			.append("where rnum between ? and ? ");
			
			pstmt=con.prepareStatement(selectBoardList.toString());
			
			 int bindCnt=1;
	         if( brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )) {
	         pstmt.setString( bindCnt++ , brVO.getKeyword());
	         }//end if
	         
	         pstmt.setInt( bindCnt++ , brVO.getStartNum() );
	         pstmt.setInt( bindCnt++ , brVO.getEndNum() );
	         
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				bVO=new BoardVO();
				bVO.setPostNum(rs.getInt("postNum"));
				bVO.setId(rs.getString("id"));
				bVO.setTitle(rs.getString("title"));
				bVO.setInputDate(rs.getDate("input_date"));
				bVO.setViewCount(rs.getInt("viewcount"));
				list.add(bVO);
			}//end while
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}//end finally
		
		return list; 
	}//selectBoard
	
	
//	public List<BoardVO> selectBoard( BoardRangeVO brVO ) {//얘뭐지 검색인가? 
//		List<BoardVO> list=new ArrayList<BoardVO>();
//	      
//		/*
//		 * DBConnection db=DBConnection.getInstance();
//		 * 
//		 * Connection con=null; PreparedStatement pstmt=null; ResultSet rs=null;
//		 * 
//		 * try { //1. JDNI 사용객체 생성 //2. DataSource 얻기 //3. Connection 얻기
//		 * con=db.getCon(); //4. 쿼리문 생성객체 얻기 => 검색 키워드와 검색 field에 따라 Dynamic Query로 변경
//		 * StringBuilder selectMember=new StringBuilder(); selectMember
//		 * .append("      select mname,id,joindate                          ")
//		 * .append("      from (select mname,id,joindate  ,                ")
//		 * .append("      row_number() over (order by joindate desc) rnum                              "
//		 * ) .append("      from member  where    ");
//		 * 
//		 * if( brVO.getKeyword() != null && !"".equals(brVO.getKeyword() ) &&
//		 * !"null".equals( brVO.getKeyword() ) ) { String field="id";
//		 * 
//		 * selectMember.append(field).append(" like '%'||?||'%' and");
//		 * 
//		 * }//end if
//		 * 
//		 * selectMember.append("  status='M')      where rnum between ? and ?         "
//		 * );
//		 * 
//		 * pstmt=con.prepareStatement( selectMember.toString() );
//		 * 
//		 * //5. 바인드 변수 값 설정 int bindCnt=1; if( brVO.getKeyword() != null &&
//		 * !"".equals(brVO.getKeyword() ) && !"null".equals( brVO.getKeyword() )) {
//		 * pstmt.setString( bindCnt++ , brVO.getKeyword()); }//end if
//		 * 
//		 * pstmt.setInt( bindCnt++ , brVO.getStartNum() ); pstmt.setInt( bindCnt++ ,
//		 * brVO.getEndNum() );
//		 * 
//		 * //6. 쿼리문 수행 후 결과 얻기 BoardVO bVO=null;
//		 * 
//		 * rs=pstmt.executeQuery();
//		 * 
//		 * while( rs.next() ) { bVO=new BoardVO(); bVO.setMname(rs.getString("mname"));
//		 * bVO.setId(rs.getString("id")); bVO.setJoindate(rs.getDate("joindate"));
//		 * list.add(bvo); }//end while
//		 * 
//		 * }finally { db.dbClose(rs, pstmt, con); //7. 연결끊기 }//end finally
//		 */
//		return list;
//	}//selectBoard
	
	
	public boolean insertBoard( BoardVO bVO) throws SQLException {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DBConnection db=DBConnection.getInstance();
		
		boolean flag=false;
		try {
			con=db.getCon();
			
			StringBuilder insertBoard=new StringBuilder();
			insertBoard
			.append("		insert into board(id, title, content)		")
			.append("		values(?,?,?)											");
		
			pstmt=con.prepareStatement(insertBoard.toString());
			pstmt.setString(1, bVO.getId());
			pstmt.setString(2, bVO.getTitle());
			pstmt.setString(3, bVO.getContent());
			
			int rowCnt=pstmt.executeUpdate();
			if(rowCnt>0) {
				flag=true;
			}//end if
			
		}finally{
			db.dbClose(null, pstmt, con);
		}//end finally
		
		return flag;
	}//insertBoard
	
	
	public List<BoardVO> selectSpecificBoard( int postNum ) throws SQLException {
		List<BoardVO> list=new ArrayList<BoardVO>();
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		BoardVO bVO=null;
		
		try {
			
			con=db.getCon();
			
			StringBuilder selectSpecificBoard=new StringBuilder();
			selectSpecificBoard.append("		select title, id, to_char(input_date, 'yyyy-mm-dd') input_date, viewcount, content	")
			.append("		from  board					")
			.append("		where postnum=?		");
			
			pstmt=con.prepareStatement(selectSpecificBoard.toString());
			pstmt.setInt(1, postNum);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				bVO=new BoardVO();
				bVO.setTitle(rs.getString("title"));
				bVO.setId(rs.getString("id"));
				bVO.setInputDate(rs.getDate("input_date"));
				bVO.setViewCount(rs.getInt("viewcount"));
				
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
						bVO.setContent(content.toString());
						if(br!=null) {
							br.close();
						}//end if
					}//end if
					
				}catch(IOException ie) {
					ie.printStackTrace();
				}//end catch
				list.add(bVO);
			}//end if
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}//end finally
		
		return list;
	}//selectSpecificBoard
	
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
			selectCnt.append("select count(*) cnt from board	");
			
			if( /*조건1=처음호출되면 키워드 없으니까*/  brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )){
				String field="info";
				if( "1".equals( brVO.getField() ) ){
					field="id";
				}//end if
				if( "2".equals( brVO.getField() ) ) {
					field="addr1";
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
	
	public boolean increaseViewCount(int postNum)throws SQLException{
		
		boolean flag=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			
			String updateViewCount="update board set viewcount=viewcount+1 where postNum=?";
			
			pstmt=con.prepareStatement(updateViewCount);
			
			pstmt.setInt(1, postNum);
			
			int rowCnt=pstmt.executeUpdate();
			
			if(rowCnt>0) {
				flag=true;
			}//end if
		}finally {
			db.dbClose(null, pstmt, con);
		}
		
		return flag;
	}//increaseViewCount
	
	public int UpdatedViewCount(int postNum) throws SQLException {
	    int updatedViewCount = 0;
	    
	    Connection con = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    DBConnection db = DBConnection.getInstance();
	    
	    try {
	        con = db.getCon();
	        
	        String selectViewCount = "SELECT viewcount FROM board WHERE postNum = ?";
	        
	        pstmt = con.prepareStatement(selectViewCount);
	        pstmt.setInt(1, postNum);
	        
	        rs = pstmt.executeQuery();
	        
	        if (rs.next()) {
	            updatedViewCount = rs.getInt("viewcount");
	        }
	    } finally {
	        db.dbClose(rs, pstmt, con);
	    }
	    
	    return updatedViewCount;
	}//UpdatedViewCount
	
	public List<BoardVO> selectSpecificBoard(String key) throws SQLException{
		List<BoardVO> list = new ArrayList<BoardVO>();
		
		DBConnection db = DBConnection.getInstance();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = db.getCon();
			
			String selectSpecificBoard = "SELECT POSTNUM, ID, TITLE, INPUT_DATE, VIEWCOUNT from BOARD where TITLE like ?";
			
			pstmt = con.prepareStatement(selectSpecificBoard);
			pstmt.setString(1, "%"+key+"%");
			
			rs=pstmt.executeQuery();
			BoardVO bVO = null;
			while(rs.next()) {
				bVO = new BoardVO();
				bVO.setPostNum(rs.getInt("POSTNUM"));
				bVO.setId(rs.getString("ID"));
				bVO.setTitle(rs.getString("TITLE"));
				bVO.setInputDate(rs.getDate("INPUT_DATE"));
				bVO.setViewCount(rs.getInt("VIEWCOUNT"));
				list.add(bVO);
			}//while
		}finally {
			db.dbClose(rs, pstmt, con);
		}//finally
		
		return list;
	}//selectSpecificBoard
	
}//class

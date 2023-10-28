package manageMember;

import java.sql.Connection;




import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbConnection.DBConnection;

public class ManageMemberDAO {
private static ManageMemberDAO mmDAO;

private ManageMemberDAO() {
}//constructor

	public static ManageMemberDAO getInstance() {
		if(mmDAO==null) {
			mmDAO=new ManageMemberDAO();
		}//end if
		return mmDAO;
	}//getInstance
	
	
	public List<MemberVO> selectMemberList() throws SQLException{
		List<MemberVO> list=new ArrayList<MemberVO>();
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		MemberVO mVO=null;
		
		try {
			con=db.getCon();
			
			String selectMemberList="select mname,id,joindate from member where status='M' order by joindate desc";
			
			pstmt=con.prepareStatement(selectMemberList);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				mVO=new MemberVO();
				mVO.setMname(rs.getString("mname")); 
				mVO.setId(rs.getString("id"));
				mVO.setJoindate(rs.getDate("joindate"));
				list.add(mVO);
			}
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		
		
		return list;
	}//selectMemberList
	
	public List<MemberVO> selectMember(String id) throws SQLException{
		List<MemberVO> list=new ArrayList<MemberVO>();
		
		DBConnection db=DBConnection.getInstance();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con=db.getCon();
			
			StringBuilder selectMember=new StringBuilder();
			 selectMember.append("      select  mname,id, birth,email, tel ,joindate       ")
	         .append("      from member       ")
	         .append("     where id=?    ");
			
			 pstmt=con.prepareStatement(selectMember.toString());
			 pstmt.setString(1, id);
			 
			 rs=pstmt.executeQuery();
			 
			 MemberVO mVO=null;
			 if(rs.next()) {
				 mVO=new MemberVO();
				 mVO.setMname(rs.getString("mname"));
				 mVO.setId(rs.getString("id"));
				 mVO.setBirth(rs.getString("birth"));
				 mVO.setEmail(rs.getString("email"));
				 mVO.setTel(rs.getString("tel"));
				 mVO.setJoindate(rs.getDate("joindate"));
				 list.add(mVO);
			 }
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}//end finally
		
		return list;
	}//selectMember

	
	public boolean updateMemberStatus(String id) throws SQLException {
		boolean flag=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DBConnection db=DBConnection.getInstance();
		
		try {
			con=db.getCon();
			
			String updateMemberStatus="update member set status='N' where id=?";
			
			pstmt=con.prepareStatement(updateMemberStatus);
			
			pstmt.setString(1, id);
			
			int rowUpdate=pstmt.executeUpdate();
			
			if(rowUpdate>0) {
				flag=true;
			}
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		
		return flag;
	}//updateMemberStatus
	
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
	         selectCnt.append("select count(*) cnt from member   ");
	         selectCnt.append("  where status = 'M' ");
	         /*조건1=처음호출되면 키워드 없으니까*/  
	         if(brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )){
	            String field="id";
	        	 selectCnt.append("and  ").append(field).append("   like '%'||?||'%'");
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
	   public List<MemberVO> selectMember(BoardRangeVO brVO) throws SQLException{
	      List<MemberVO> list=new ArrayList<MemberVO>();
	      
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
	         StringBuilder selectMember=new StringBuilder();
	         selectMember
	         .append("      select mname,id,joindate                          ")
	         .append("      from (select mname,id,joindate  ,                ")
	         .append("      row_number() over (order by joindate desc) rnum                              ")
	         .append("      from member  where    ");
	            
	         if(  brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() ) ) {
	            String field="id";
	            
	            selectMember.append(field).append(" like '%'||?||'%' and");
	            
	         }//end if
	         
	         selectMember.append("  status='M')      where rnum between ? and ?         ");
	            
	         pstmt=con.prepareStatement( selectMember.toString() );
	         
	      //5. 바인드 변수 값 설정
	         int bindCnt=1;
	         if( brVO.getKeyword() != null &&  !"".equals(brVO.getKeyword() ) &&  !"null".equals( brVO.getKeyword() )) {
	         pstmt.setString( bindCnt++ , brVO.getKeyword());
	         }//end if
	         
	         pstmt.setInt( bindCnt++ , brVO.getStartNum() );
	         pstmt.setInt( bindCnt++ , brVO.getEndNum() );
	         
	      //6. 쿼리문 수행 후 결과 얻기
	         MemberVO mVO=null;
	         
	         rs=pstmt.executeQuery();
	         
	         while( rs.next() ) {
	        	 mVO=new MemberVO();
	        	 mVO.setMname(rs.getString("mname"));
	        	 mVO.setId(rs.getString("id"));
	        	 mVO.setJoindate(rs.getDate("joindate"));
	            list.add(mVO);
	         }//end while
	         
	      }finally {
	         db.dbClose(rs, pstmt, con);
	      //7. 연결끊기
	      }//end finally
	      
	      return list;
	   }//selectMember
	
}//class

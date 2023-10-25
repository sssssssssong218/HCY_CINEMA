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
			
			String selectMemberList="select mname,id,joindate from member order by joindate desc";
			
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

	public boolean updateMemberInfo(MemberVO mVO) throws SQLException {
		boolean flag=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DBConnection db=DBConnection.getInstance();
		try {
			con=db.getCon();
			
			String updateMemberInfo="update member set mname=?,id=?,email=?, tel=? where id=?";
			
			pstmt=con.prepareStatement(updateMemberInfo);
			
			pstmt.setString(1, mVO.getMname());
			pstmt.setString(2, mVO.getId());
			pstmt.setString(3, mVO.getEmail());
			pstmt.setString(4, mVO.getTel());
			pstmt.setString(5, mVO.getId());
			
			int rowUpdate=pstmt.executeUpdate();
			
			if(rowUpdate>0) {
				flag=true;
			}
			
		}finally {
			db.dbClose(rs, pstmt, con);
		}
		
		return flag;
	}//updateMemberInfo
	
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


}//class

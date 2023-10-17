package MemberInfo;

public class EditMemberInfoDAO {
	private static EditMemberInfoDAO emiDAO;
	
	public EditMemberInfoDAO() {
		
	}//constructor
	
	public static EditMemberInfoDAO getInstance() {
		if(emiDAO==null) {
			emiDAO=new EditMemberInfoDAO();
		}//end if
		
		return emiDAO;
	}//getInstance
}

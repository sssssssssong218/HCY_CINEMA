package memberInfo;

public class ManageMemberDAO {
	private static ManageMemberDAO mmDAO;
	
	public ManageMemberDAO() {
		
	}//constructor
	
	public static ManageMemberDAO getInstance() {
		if(mmDAO==null) {
			mmDAO=new ManageMemberDAO();
		}//end if
		
		return mmDAO;
	}//getInstance
}//class

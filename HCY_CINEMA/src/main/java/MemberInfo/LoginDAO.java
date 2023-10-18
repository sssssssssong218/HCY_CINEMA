package MemberInfo;

public class LoginDAO {
	private static LoginDAO lDAO;
	
	private LoginDAO() {
	}//constructor
	
	public static LoginDAO getInstance() {
		if(lDAO==null) {
			lDAO=new LoginDAO();
		}//end if
		
		return lDAO;
	}//getInstance
	
	public MemberVO 
	
}//class

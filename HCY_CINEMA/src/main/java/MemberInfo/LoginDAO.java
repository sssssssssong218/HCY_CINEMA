package MemberInfo;

public class LoginDAO {
	private static LoginDAO lDAO;
	
	public LoginDAO() {
		
	}//constructor
	
	public static LoginDAO getInstance() {
		if(lDAO==null) {
			lDAO=new LoginDAO();
		}//end if
		
		return lDAO;
	}//getInstance
}//class

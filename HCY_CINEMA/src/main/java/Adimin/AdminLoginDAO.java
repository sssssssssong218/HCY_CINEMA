package Adimin;

public class AdminLoginDAO {
	private static AdminLoginDAO aliDAO;
	
	private AdminLoginDAO() {
		
	}//constructor
	
	public static AdminLoginDAO getInstance() {
		if(aliDAO==null) {
			aliDAO=new AdminLoginDAO();
		}//if
		return aliDAO;
	}//getInstance
	
	public AdminVO selectAdminLogin(String id,String pass) {
		
		
	}
}//class

package manageMember;

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

}//class

package AdiminLogin;

public class AdminVO {

	private String id;
	private String password;
	public AdminVO(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}
	public AdminVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "AdminVO [id=" + id + ", password=" + password + "]";
	}
	
	
	
}

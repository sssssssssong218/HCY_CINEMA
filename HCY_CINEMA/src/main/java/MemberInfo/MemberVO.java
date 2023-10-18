package memberinfo;

import java.util.Date;

public class MemberVO {
	private String id;
	private String password;
	private String mname;
	private String birth;
	private String tel;
	private String email;
	private Date joinDate;
	private String status;
	
	public MemberVO() {
		
	}//constructor

	public MemberVO(String id, String password, String mname, String birth, String tel, String email, Date joinDate,
			String status) {
		super();
		this.id = id;
		this.password = password;
		this.mname = mname;
		this.birth = birth;
		this.tel = tel;
		this.email = email;
		this.joinDate = joinDate;
		this.status = status;
	}//constructor

	//getter
	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getMname() {
		return mname;
	}

	public String getBirth() {
		return birth;
	}

	public String getTel() {
		return tel;
	}

	public String getEmail() {
		return email;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public String getStatus() {
		return status;
	}

	//setter
	public void setId(String id) {
		this.id = id;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}//class

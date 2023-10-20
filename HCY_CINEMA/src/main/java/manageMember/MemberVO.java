package manageMember;

import java.sql.Date;

public class MemberVO {
private String id, password, mname, birth, tel, email, status;
private Date joindate;


public MemberVO(String id, String password, String mname, String birth, String tel, String email, String status,
		Date joindate) {
	this.id = id;
	this.password = password;
	this.mname = mname;
	this.birth = birth;
	this.tel = tel;
	this.email = email;
	this.status = status;
	this.joindate = joindate;
}
public MemberVO() {
}
@Override
public String toString() {
	return "MemberVO [id=" + id + ", password=" + password + ", mname=" + mname + ", birth=" + birth + ", tel=" + tel
			+ ", email=" + email + ", status=" + status + ", joindate=" + joindate + "]";
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
public String getMname() {
	return mname;
}
public void setMname(String mname) {
	this.mname = mname;
}
public String getBirth() {
	return birth;
}
public void setBirth(String birth) {
	this.birth = birth;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public Date getJoindate() {
	return joindate;
}
public void setJoindate(Date joindate) {
	this.joindate = joindate;
}


}//class

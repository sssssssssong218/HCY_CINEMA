package screen;

public class MemberVO {
private String id,tel,status,screenNum;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getScreenNum() {
	return screenNum;
}
public void setScreenNum(String screenNum) {
	this.screenNum = screenNum;
}
public MemberVO(String id, String tel, String status, String screenNum) {
	super();
	this.id = id;
	this.tel = tel;
	this.status = status;
	this.screenNum = screenNum;
}
public MemberVO() {
	super();
	// TODO Auto-generated constructor stub
}


}

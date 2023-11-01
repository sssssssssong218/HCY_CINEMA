package ticketing;

public class PaymentVO {
private int ticketNum,pplcount;
private String id,tel,movieCode,payment,scheduleNum,screenNum,seat,name,pass,birth;


public String getBirth() {
	return birth;
}
public void setBirth(String birth) {
	this.birth = birth;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public int getTicketNum() {
	return ticketNum;
}
public void setTicketNum(int ticketNum) {
	this.ticketNum = ticketNum;
}
public String getScheduleNum() {
	return scheduleNum;
}
public void setScheduleNum(String scheduleNum) {
	this.scheduleNum = scheduleNum;
}
public String getScreenNum() {
	return screenNum;
}
public void setScreenNum(String screenNum) {
	this.screenNum = screenNum;
}
public int getPplcount() {
	return pplcount;
}
public void setPplcount(int pplcount) {
	this.pplcount = pplcount;
}
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
public String getMovieCode() {
	return movieCode;
}
public void setMovieCode(String movieCode) {
	this.movieCode = movieCode;
}
public String getPayment() {
	return payment;
}
public void setPayment(String payment) {
	this.payment = payment;
}

public String getSeat() {
	return seat;
}
public void setSeat(String seat) {
	this.seat = seat;
}
@Override
public String toString() {
	return "PaymentVO [ticketNum=" + ticketNum + ", pplcount=" + pplcount + ", id=" + id + ", tel=" + tel
			+ ", movieCode=" + movieCode + ", payment=" + payment + ", scheduleNum=" + scheduleNum + ", screenNum="
			+ screenNum + ", seat=" + seat + "]";
}



}//class

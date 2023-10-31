package ticketing;

public class PaymentVO {
private int ticketNum,pplcount;
private String id,tel,movieCode,payment,scheduleNum,screenNum;

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
@Override
public String toString() {
	return "PaymentVO [ticketNum=" + ticketNum + ", scheduleNum=" + scheduleNum + ", screenNum=" + screenNum
			+ ", ppicount=" + pplcount + ", id=" + id + ", tel=" + tel + ", movieCode=" + movieCode + ", payment="
			+ payment + "]";
}


}//class

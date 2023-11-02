package myTicket;

import java.sql.Date;

public class MyTicketVO {
private String movieCode, mname, posterFileName, seat, screen, payment,showtime,ticketDate,status;
private int ticketNum, price, pplcount;


public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getTicketDate() {
	return ticketDate;
}
public void setTicketDate(String ticketDate) {
	this.ticketDate = ticketDate;
}
public String getMovieCode() {
	return movieCode;
}
public void setMovieCode(String movieCode) {
	this.movieCode = movieCode;
}
public String getMname() {
	return mname;
}
public void setMname(String mname) {
	this.mname = mname;
}
public String getPosterFileName() {
	return posterFileName;
}
public void setPosterFileName(String posterFileName) {
	this.posterFileName = posterFileName;
}
public String getSeat() {
	return seat;
}
public void setSeat(String seat) {
	this.seat = seat;
}
public String getScreen() {
	return screen;
}
public void setScreen(String screen) {
	this.screen = screen;
}
public String getPayment() {
	return payment;
}
public void setPayment(String payment) {
	this.payment = payment;
}
public String getShowtime() {
	return showtime;
}
public void setShowtime(String showtime) {
	this.showtime = showtime;
}
public int getTicketNum() {
	return ticketNum;
}
public void setTicketNum(int ticketNum) {
	this.ticketNum = ticketNum;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getPplcount() {
	return pplcount;
}
public void setPplcount(int pplcount) {
	this.pplcount = pplcount;
}
@Override
public String toString() {
	return "MyTicketVO [movieCode=" + movieCode + ", mname=" + mname + ", posterFileName=" + posterFileName + ", seat="
			+ seat + ", screen=" + screen + ", payment=" + payment + ", showtime=" + showtime + ", ticketNum="
			+ ticketNum + ", price=" + price + ", pplcount=" + pplcount + "]";
}


}//class

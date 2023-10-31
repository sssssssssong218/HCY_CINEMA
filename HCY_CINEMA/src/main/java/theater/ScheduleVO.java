package theater;

import java.sql.Date;

public class ScheduleVO {
private int scheduleNum,ticketedSeat;
private Date showdate;
private String showtime;
public int getScheduleNum() {
	return scheduleNum;
}
public void setScheduleNum(int scheduleNum) {
	this.scheduleNum = scheduleNum;
}
public int getTicketedSeat() {
	return ticketedSeat;
}
public void setTicketedSeat(int ticketedSeat) {
	this.ticketedSeat = ticketedSeat;
}
public Date getShowdate() {
	return showdate;
}
public void setShowdate(Date showdate) {
	this.showdate = showdate;
}

public String getShowtime() {
	return showtime;
}
public void setShowtime(String showtime) {
	this.showtime = showtime;
}
@Override
public String toString() {
	return "ScheduleVO [scheduleNum=" + scheduleNum + ", ticketedSeat=" + ticketedSeat + ", showtime=" + showdate + "]";
}


}//class

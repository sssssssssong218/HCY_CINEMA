package theater;

import java.sql.Date;

public class ScheduleVO {
private int scheduleNum,ticketedSeat;
private Date showtime;
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
public Date getShowtime() {
	return showtime;
}
public void setShowtime(Date showtime) {
	this.showtime = showtime;
}
@Override
public String toString() {
	return "ScheduleVO [scheduleNum=" + scheduleNum + ", ticketedSeat=" + ticketedSeat + ", showtime=" + showtime + "]";
}


}//class

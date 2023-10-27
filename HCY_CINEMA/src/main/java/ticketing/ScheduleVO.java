package ticketing;

import java.sql.Date;

public class ScheduleVO {
private int scheduleNum,ticketedSeat;
private String showtime,runningrime;
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
public String getShowtime() {
	return showtime;
}
public void setShowtime(String showtime) {
	this.showtime = showtime;
}

public String getRunningrime() {
	return runningrime;
}
public void setRunningrime(String runningrime) {
	this.runningrime = runningrime;
}
@Override
public String toString() {
	return "ScheduleVO [scheduleNum=" + scheduleNum + ", ticketedSeat=" + ticketedSeat + ", showtime=" + showtime + "]";
}


}//class

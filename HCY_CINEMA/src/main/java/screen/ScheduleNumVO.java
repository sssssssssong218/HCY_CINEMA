package screen;

import java.sql.Date;

public class ScheduleNumVO {
private Date date;
private String screennum,moviecode;
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getScreennum() {
	return screennum;
}
public void setScreennum(String screennum) {
	this.screennum = screennum;
}
public String getMoviecode() {
	return moviecode;
}
public void setMoviecode(String moviecode) {
	this.moviecode = moviecode;
}
public ScheduleNumVO(Date date, String screennum, String moviecode) {
	super();
	this.date = date;
	this.screennum = screennum;
	this.moviecode = moviecode;
}
public ScheduleNumVO() {
	super();
	// TODO Auto-generated constructor stub
}


}

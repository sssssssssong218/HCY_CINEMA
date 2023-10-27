package ticketing;

import java.sql.Date;

public class DailyScheduleVO {
private String movieCode;
private String scheduleDate;
private String screenType;


public String getMovieCode() {
	return movieCode;
}
public void setMovieCode(String movieCode) {
	this.movieCode = movieCode;
}
public String getScheduleDate() {
	return scheduleDate;
}
public void setScheduleDate(String scheduleDate) {
	this.scheduleDate = scheduleDate;
}

public String getScreenType() {
	return screenType;
}
public void setScreenType(String screenType) {
	this.screenType = screenType;
}
@Override
public String toString() {
	return "DailyScheduleVO [movieCode=" + movieCode + ", scheduleDate=" + scheduleDate + ", screenType=" + screenType
			+ "]";
}



}//class

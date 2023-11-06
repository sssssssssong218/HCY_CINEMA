package screen;

import java.sql.Date;

public class ScheduleVO {
	private String showtime;
	private String mname;
	private String movieCode;
	
	public ScheduleVO() {
		
	}//constructor

	public String getShowtime() {
		return showtime;
	}

	public void setShowtime(String showtime) {
		this.showtime = showtime;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMovieCode() {
		return movieCode;
	}

	public void setMovieCode(String movieCode) {
		this.movieCode = movieCode;
	}

	@Override
	public String toString() {
		return "ScheduleVO [showtime=" + showtime + ", mname=" + mname + ", movieCode=" + movieCode + "]";
	}

	
	
	
}//class

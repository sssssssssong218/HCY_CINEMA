package screen;

public class ScheduleVO {
	private int scheduleNum;
	private String mname;
	private String movieCode;
	
	public ScheduleVO() {
		
	}//constructor

	public ScheduleVO(int scheduleNum, String mname, String movieCode) {
		super();
		this.scheduleNum = scheduleNum;
		this.mname = mname;
		this.movieCode = movieCode;
	}//constructor

	//getter
	public int getScheduleNum() {
		return scheduleNum;
	}

	public String getMname() {
		return mname;
	}

	public String getMovieCode() {
		return movieCode;
	}

	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}

	//setter
	public void setMname(String mname) {
		this.mname = mname;
	}

	public void setMovieCode(String movieCode) {
		this.movieCode = movieCode;
	}
	
	
	
	
}//class

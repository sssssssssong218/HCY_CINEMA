package screen;

import java.sql.Date;

public class ChooseScheduleVO {
	private int screenNum;
	private Date showtime;
	
	public ChooseScheduleVO() {
		
	}//constructor

	public ChooseScheduleVO(int screenNum, Date showtime) {
		super();
		this.screenNum = screenNum;
		this.showtime = showtime;
	}

	public int getScreenNum() {
		return screenNum;
	}

	public void setScreenNum(int screenNum) {
		this.screenNum = screenNum;
	}

	public Date getShowtime() {
		return showtime;
	}

	public void setShowtime(Date showtime) {
		this.showtime = showtime;
	}

	@Override
	public String toString() {
		return "ChooseScheduleVO [screenNum=" + screenNum + ", showtime=" + showtime + "]";
	}


}//class

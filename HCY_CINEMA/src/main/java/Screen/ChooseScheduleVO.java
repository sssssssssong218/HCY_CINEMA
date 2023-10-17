package Screen;

import java.util.Date;

public class ChooseScheduleVO {
	private int screenNum;
	private Date scheduleDate;
	
	public ChooseScheduleVO() {
		
	}//constructor

	public ChooseScheduleVO(int screenNum, Date scheduleDate) {
		super();
		this.screenNum = screenNum;
		this.scheduleDate = scheduleDate;
	}//constructor

	//getter
	public int getScreenNum() {
		return screenNum;
	}

	public Date getScheduleDate() {
		return scheduleDate;
	}

	//setter
	public void setScreenNum(int screenNum) {
		this.screenNum = screenNum;
	}

	public void setScheduleDate(Date scheduleDate) {
		this.scheduleDate = scheduleDate;
	}
	
	
	
	
}//class

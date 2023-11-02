package movie;

public class ScheduleDateVO {
	private int screenNum;
	private int scheduleNum;
	
	public ScheduleDateVO() {
		
	}//constructor

	public ScheduleDateVO(int screenNum, int scheduleNum) {
		super();
		this.screenNum = screenNum;
		this.scheduleNum = scheduleNum;
	}

	public int getScreenNum() {
		return screenNum;
	}

	public void setScreenNum(int screenNum) {
		this.screenNum = screenNum;
	}

	public int getScheduleNum() {
		return scheduleNum;
	}

	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}

	@Override
	public String toString() {
		return "ScheduleDateVO [screenNum=" + screenNum + ", scheduleNum=" + scheduleNum + "]";
	}
	
	
	
}//class

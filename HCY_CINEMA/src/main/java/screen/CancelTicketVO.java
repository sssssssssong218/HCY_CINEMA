package screen;

public class CancelTicketVO {
	private int scheduleNum;
	private int ticketNum;
	
	public CancelTicketVO() {
		
	}//constructor

	public CancelTicketVO(int scheduleNum, int ticketNum) {
		super();
		this.scheduleNum = scheduleNum;
		this.ticketNum = ticketNum;
	}//constructor

	//getter
	public int getScheduleNum() {
		return scheduleNum;
	}

	public int getTicketNum() {
		return ticketNum;
	}

	//setter
	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}

	public void setTicketNum(int ticketNum) {
		this.ticketNum = ticketNum;
	}

	@Override
	public String toString() {
		return "CancelTicketVO [scheduleNum=" + scheduleNum + ", ticketNum=" + ticketNum + "]";
	}
	
	
	
	
}//class

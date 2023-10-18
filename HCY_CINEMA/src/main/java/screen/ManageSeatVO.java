package screen;

public class ManageSeatVO {
	private String id;
	private String seatNum;
	private int ticketNum;
	
	public ManageSeatVO() {
		
	}//constructor

	public ManageSeatVO(String id, String seatNum, int ticketNum) {
		super();
		this.id = id;
		this.seatNum = seatNum;
		this.ticketNum = ticketNum;
	}//constructor

	//getter
	public String getId() {
		return id;
	}

	public String getSeatNum() {
		return seatNum;
	}

	public int getTicketNum() {
		return ticketNum;
	}

	//setter
	public void setId(String id) {
		this.id = id;
	}

	public void setSeatNum(String seatNum) {
		this.seatNum = seatNum;
	}

	public void setTicketNum(int ticketNum) {
		this.ticketNum = ticketNum;
	}
	
	
	
	
}//class

package dashboard;

import java.util.Date;
import java.util.Map;

public class DashBoardVO {
	private Map<String, Integer> ticketMap;
	private int ticketCnt;
	private int vacancy;
	private int cancelCnt;
	private int joinCnt;
	private int exitCnt;
	private int newReviewCnt;
	private Date releaseDate;
	
	public DashBoardVO() {
		
	}//constructor

	public DashBoardVO(Map<String, Integer> ticketMap, int ticketCnt, int vacancy, int cancelCnt, int joinCnt,
			int exitCnt, int newReviewCnt, Date releaseDate) {
		super();
		this.ticketMap = ticketMap;
		this.ticketCnt = ticketCnt;
		this.vacancy = vacancy;
		this.cancelCnt = cancelCnt;
		this.joinCnt = joinCnt;
		this.exitCnt = exitCnt;
		this.newReviewCnt = newReviewCnt;
		this.releaseDate = releaseDate;
	}//constructor

	//getter
	public Map<String, Integer> getTicketMap() {
		return ticketMap;
	}

	public int getTicketCnt() {
		return ticketCnt;
	}

	public int getVacancy() {
		return vacancy;
	}

	public int getCancelCnt() {
		return cancelCnt;
	}

	public int getJoinCnt() {
		return joinCnt;
	}

	public int getExitCnt() {
		return exitCnt;
	}

	public int getNewReviewCnt() {
		return newReviewCnt;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	//setter
	public void setTicketMap(Map<String, Integer> ticketMap) {
		this.ticketMap = ticketMap;
	}

	public void setTicketCnt(int ticketCnt) {
		this.ticketCnt = ticketCnt;
	}

	public void setVacancy(int vacancy) {
		this.vacancy = vacancy;
	}

	public void setCancelCnt(int cancelCnt) {
		this.cancelCnt = cancelCnt;
	}

	public void setJoinCnt(int joinCnt) {
		this.joinCnt = joinCnt;
	}

	public void setExitCnt(int exitCnt) {
		this.exitCnt = exitCnt;
	}

	public void setNewReviewCnt(int newReviewCnt) {
		this.newReviewCnt = newReviewCnt;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	
	
	
	
}//class

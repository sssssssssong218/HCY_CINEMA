package movie;

import java.util.Date;

public class ManageMovieVO {
	private String movieCode;
	private String mname;
	private double starRating;
	private int ticketRate;
	private Date releaseDate;
	private Date endDate;
	private String plot;
	private String status;
	private int reviewCnt;
	private String fileName;
	
	public ManageMovieVO() {
		
	}//constructor

	public ManageMovieVO(String movieCode, String mname, double starRating, int ticketRate, Date releaseDate,
			Date endDate, String plot, String status, int reviewCnt, String fileName) {
		super();
		this.movieCode = movieCode;
		this.mname = mname;
		this.starRating = starRating;
		this.ticketRate = ticketRate;
		this.releaseDate = releaseDate;
		this.endDate = endDate;
		this.plot = plot;
		this.status = status;
		this.reviewCnt = reviewCnt;
		this.fileName = fileName;
	}//constructor

	//getter
	public String getMovieCode() {
		return movieCode;
	}

	public String getMname() {
		return mname;
	}

	public double getStarRating() {
		return starRating;
	}

	public int getTicketRate() {
		return ticketRate;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public String getPlot() {
		return plot;
	}

	public String getStatus() {
		return status;
	}

	public int getReviewCnt() {
		return reviewCnt;
	}

	public String getFileName() {
		return fileName;
	}

	//setter
	public void setMovieCode(String movieCode) {
		this.movieCode = movieCode;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public void setStarRating(double starRating) {
		this.starRating = starRating;
	}

	public void setTicketRate(int ticketRate) {
		this.ticketRate = ticketRate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
	
	
	
}//class

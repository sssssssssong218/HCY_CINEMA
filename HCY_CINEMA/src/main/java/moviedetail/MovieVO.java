package moviedetail;

import java.sql.Date;

public class MovieVO {
	private String moviecode, mname, runningtime, plot, status,movieRating;
	private int ticketRate;
	private Date releaseDate, endDate;
	private double starRating;
	
	public double getStarRating() {
		return starRating;
	}
	public void setStarRating(double starRating) {
		this.starRating = starRating;
	}
	public String getMoviecode() {
		return moviecode;
	}
	public void setMoviecode(String moviecode) {
		this.moviecode = moviecode;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getRunningtime() {
		return runningtime;
	}
	public void setRunningtime(String runningtime) {
		this.runningtime = runningtime;
	}
	public String getPlot() {
		return plot;
	}
	public void setPlot(String plot) {
		this.plot = plot;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getTicketRate() {
		return ticketRate;
	}
	public void setTicketRate(int ticketRate) {
		this.ticketRate = ticketRate;
	}
	public String getMovieRating() {
		return movieRating;
	}
	public void setMovieRating(String movieRating) {
		this.movieRating = movieRating;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public MovieVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MovieVO(String moviecode, String mname, String runningtime, String plot, String status, String movieRating,
			int ticketRate, Date releaseDate, Date endDate, double starRating) {
		super();
		this.moviecode = moviecode;
		this.mname = mname;
		this.runningtime = runningtime;
		this.plot = plot;
		this.status = status;
		this.movieRating = movieRating;
		this.ticketRate = ticketRate;
		this.releaseDate = releaseDate;
		this.endDate = endDate;
		this.starRating = starRating;
	}
	@Override
	public String toString() {
		return "MovieVO [moviecode=" + moviecode + ", mname=" + mname + ", runningtime=" + runningtime + ", plot="
				+ plot + ", status=" + status + ", movieRating=" + movieRating + ", ticketRate=" + ticketRate
				+ ", releaseDate=" + releaseDate + ", endDate=" + endDate + ", starRating=" + starRating + "]";
	}

	
}

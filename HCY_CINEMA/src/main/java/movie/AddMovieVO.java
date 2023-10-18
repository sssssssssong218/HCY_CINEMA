package movie;

import java.util.Date;

public class AddMovieVO {
	private String mname;
	private Date releaseDate;
	private Date endDate;
	private String plot;
	private int runningTime;
	private String movieRating;
	private String status;
	
	public AddMovieVO() {
		
	}//constructor

	public AddMovieVO(String mname, Date releaseDate, Date endDate, String plot, int runningTime, String movieRating,
			String status) {
		super();
		this.mname = mname;
		this.releaseDate = releaseDate;
		this.endDate = endDate;
		this.plot = plot;
		this.runningTime = runningTime;
		this.movieRating = movieRating;
		this.status = status;
	}//constructor

	//getter
	public String getMname() {
		return mname;
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

	public int getRunningTime() {
		return runningTime;
	}

	public String getMovieRating() {
		return movieRating;
	}

	public String getStatus() {
		return status;
	}

	//setter
	public void setMname(String mname) {
		this.mname = mname;
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

	public void setRunningTime(int runningTime) {
		this.runningTime = runningTime;
	}

	public void setMovieRating(String movieRating) {
		this.movieRating = movieRating;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}//class

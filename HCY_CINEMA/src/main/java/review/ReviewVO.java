package review;

import java.sql.Date;

public class ReviewVO {
	private String moviecode; 
	private String mname;
	private Date showtime;
	private String screen;
	private int pplCount;
	private double starRating;
	
	public ReviewVO() {
	}

	public ReviewVO(String moviecode, String mname, Date showtime, String screen, int pplCount, double starRating) {
		this.moviecode = moviecode;
		this.mname = mname;
		this.showtime = showtime;
		this.screen = screen;
		this.pplCount = pplCount;
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

	public Date getShowtime() {
		return showtime;
	}

	public void setShowtime(Date showtime) {
		this.showtime = showtime;
	}

	public String getScreen() {
		return screen;
	}

	public void setScreen(String screen) {
		this.screen = screen;
	}

	public int getPplCount() {
		return pplCount;
	}

	public void setPplCount(int pplCount) {
		this.pplCount = pplCount;
	}

	public double getStarRating() {
		return starRating;
	}

	public void setStarRating(double starRating) {
		this.starRating = starRating;
	}

	@Override
	public String toString() {
		return "ReviewVO [moviecode=" + moviecode + ", mname=" + mname + ", showtime=" + showtime + ", screen=" + screen
				+ ", pplCount=" + pplCount + ", starRating=" + starRating + "]";
	}
	
}//class

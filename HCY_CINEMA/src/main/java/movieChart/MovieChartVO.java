package movieChart;

import java.sql.Date;

public class MovieChartVO {
private String movieCode;
private String mName;
private String ticketRate;
private String movieRating;
private String movieFile;
private String releaseDate;
private double starRating;
private String plot;


public MovieChartVO() {
}

public MovieChartVO(String movieCode, String mName, String ticketRate, String movieRating, String movieFile,
		String releaseDate, double starRating) {
	super();
	this.movieCode = movieCode;
	this.mName = mName;
	this.ticketRate = ticketRate;
	this.movieRating = movieRating;
	this.movieFile = movieFile;
	this.releaseDate = releaseDate;
	this.starRating = starRating;
}

public String getMovieCode() {
	return movieCode;
}
public void setMovieCode(String movieCode) {
	this.movieCode = movieCode;
}
public String getmName() {
	return mName;
}
public void setmName(String mName) {
	this.mName = mName;
}
public String getTicketRate() {
	return ticketRate;
}
public void setTicketRate(String ticketRate) {
	this.ticketRate = ticketRate;
}
public String getMovieRating() {
	return movieRating;
}
public void setMovieRating(String movieRating) {
	this.movieRating = movieRating;
}
public String getMovieFile() {
	return movieFile;
}
public void setMovieFile(String movieFile) {
	this.movieFile = movieFile;
}
public double getStarRating() {
	return starRating;
}
public void setStarRating(double starRating) {
	this.starRating = starRating;
}

public String getReleaseDate() {
	return releaseDate;
}

public void setReleaseDate(String releaseDate) {
	this.releaseDate = releaseDate;
}

public String getPlot() {
	return plot;
}

public void setPlot(String plot) {
	this.plot = plot;
}

}//class

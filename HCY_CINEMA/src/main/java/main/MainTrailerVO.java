package main;

public class MainTrailerVO {
private String trailerName;
private String movieCode;
private String movieName;
private String adMsg;


public MainTrailerVO(String trailerName, String movieCode, String movieName, String adMsg) {
	this.trailerName = trailerName;
	this.movieCode = movieCode;
	this.movieName = movieName;
	this.adMsg = adMsg;
}
public MainTrailerVO() {
}


public String getTrailerName() {
	return trailerName;
}
public void setTrailerName(String trailerName) {
	this.trailerName = trailerName;
}
public String getMovieCode() {
	return movieCode;
}
public void setMovieCode(String movieCode) {
	this.movieCode = movieCode;
}
public String getMovieName() {
	return movieName;
}
public void setMovieName(String movieName) {
	this.movieName = movieName;
}
public String getAdMsg() {
	return adMsg;
}
public void setAdMsg(String adMsg) {
	this.adMsg = adMsg;
}

}//class

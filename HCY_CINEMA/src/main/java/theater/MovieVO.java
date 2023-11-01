package theater;

import java.sql.Date;
import java.util.List;

public class MovieVO {
private String moviecode,mname,runningTime;
private Date releseDate;
private String movieRating;
private List<ScreenVO> sVO;
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
public String getRunningTime() {
	return runningTime;
}
public void setRunningTime(String runningTime) {
	this.runningTime = runningTime;
}
public Date getReleseDate() {
	return releseDate;
}
public void setReleseDate(Date releseDate) {
	this.releseDate = releseDate;
}
public String getMovieRating() {
	return movieRating;
}
public void setMovieRating(String movieRating) {
	this.movieRating = movieRating;
}
public List<ScreenVO> getsVO() {
	return sVO;
}
public void setsVO(List<ScreenVO> sVO) {
	this.sVO = sVO;
}
@Override
public String toString() {
	return "MovieVO [moviecode=" + moviecode + ", mname=" + mname + ", runningTime=" + runningTime + ", releseDate="
			+ releseDate + ", movieRating=" + movieRating + ", sVO=" + sVO + "]";
}





}//class

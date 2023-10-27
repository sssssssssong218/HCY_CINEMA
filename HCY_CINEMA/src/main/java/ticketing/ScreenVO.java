package ticketing;

import java.util.List;

public class ScreenVO {
private String screenName,typeName,moviecode,mname;
private int screenNum;
private List<ScheduleVO> scdVO;
public String getScreenName() {
	return screenName;
}
public void setScreenName(String screenName) {
	this.screenName = screenName;
}
public String getTypeName() {
	return typeName;
}
public void setTypeName(String typeName) {
	this.typeName = typeName;
}
public int getScreenNum() {
	return screenNum;
}
public void setScreenNum(int screenNum) {
	this.screenNum = screenNum;
}
public List<ScheduleVO> getScdVO() {
	return scdVO;
}
public void setScdVO(List<ScheduleVO> scdVO) {
	this.scdVO = scdVO;
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
@Override
public String toString() {
	return "ScreenVO [screenName=" + screenName + ", typeName=" + typeName + ", screenNum=" + screenNum + "]";
}


}//class

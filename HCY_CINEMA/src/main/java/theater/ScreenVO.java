package theater;

import java.util.List;

public class ScreenVO {
private String screenName,typeName;
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
@Override
public String toString() {
	return "ScreenVO [screenName=" + screenName + ", typeName=" + typeName + ", screenNum=" + screenNum + ", scdVO="
			+ scdVO + "]";
}



}//class

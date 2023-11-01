package moviedetail;

public class PageVO {
private int startNum,endNum;

public int getStartNum() {
	return startNum;
}

public void setStartNum(int startNum) {
	this.startNum = startNum;
}

public int getEndNum() {
	return endNum;
}

public void setEndNum(int endNum) {
	this.endNum = endNum;
}

public PageVO(int startNum, int endNum) {
	super();
	this.startNum = startNum;
	this.endNum = endNum;
}

public PageVO() {
	super();
	// TODO Auto-generated constructor stub
}

}

package main;

public class NoticeVO {
private String title,noticeNum;

public NoticeVO() {
	super();
}

public NoticeVO(String title, String noticeNum) {
	super();
	this.title = title;
	this.noticeNum = noticeNum;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getNoticeNum() {
	return noticeNum;
}

public void setNoticeNum(String noticeNum) {
	this.noticeNum = noticeNum;
}

@Override
public String toString() {
	return "noticeVO [title=" + title + ", noticeNum=" + noticeNum + "]";
}


}//class

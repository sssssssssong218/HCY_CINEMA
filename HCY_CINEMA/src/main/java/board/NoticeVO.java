package board;

import java.util.Date;

public class NoticeVO {
	private int noticeNum;
	private String section;
	private String title;
	private Date inputDate;
	private int viewCnt;
	private String content;
	
	public NoticeVO() {
		
	}//constructor

	public NoticeVO(int noticeNum, String section, String title, Date inputDate, int viewCnt, String content) {
		super();
		this.noticeNum = noticeNum;
		this.section = section;
		this.title = title;
		this.inputDate = inputDate;
		this.viewCnt = viewCnt;
		this.content = content;
	}//constructor

	//getter
	public int getNoticeNum() {
		return noticeNum;
	}

	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getInputDate() {
		return inputDate;
	}

	//setter
	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeNum=" + noticeNum + ", section=" + section + ", title=" + title + ", inputDate="
				+ inputDate + ", viewCnt=" + viewCnt + ", content=" + content + "]";
	}
	
}//class

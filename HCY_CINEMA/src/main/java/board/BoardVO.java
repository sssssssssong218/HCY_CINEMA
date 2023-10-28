package board;

import java.sql.Date;

public class BoardVO {
	private int postNum;
	private String id;
	private String title;
	private Date inputDate;
	private int viewCount;
	private String content;
	
	public BoardVO() {
		
	}//constructor

	public BoardVO(int postNum, String id, String title, Date inputDate, int viewCount, String content) {
		super();
		this.postNum = postNum;
		this.id = id;
		this.title = title;
		this.inputDate = inputDate;
		this.viewCount = viewCount;
		this.content = content;
	}

	public int getPostNum() {
		return postNum;
	}

	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "BoardVO [postNum=" + postNum + ", id=" + id + ", title=" + title + ", inputDate=" + inputDate
				+ ", viewCount=" + viewCount + ", content=" + content + "]";
	}

	
	
}//class

package Board;

import java.util.Date;

public class BoardVO {
	private int postNum;
	private String id;
	private String title;
	private Date inputDate;
	private int viewCnt;
	private String content;
	
	public BoardVO() {
		
	}//constructor

	public BoardVO(int postNum, String id, String title, Date inputDate, int viewCnt, String content) {
		super();
		this.postNum = postNum;
		this.id = id;
		this.title = title;
		this.inputDate = inputDate;
		this.viewCnt = viewCnt;
		this.content = content;
	}//constructor

	//getter
	public int getPostNum() {
		return postNum;
	}

	public String getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public Date getInputDate() {
		return inputDate;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public String getContent() {
		return content;
	}

	//setter
	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	
	
	
}//class

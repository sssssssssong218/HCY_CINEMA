package moviedetail;

import java.sql.Date;

public class ReviewVO {
	private String id,content;
	private double star_rating;
	private Date input_date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public double getStar_rating() {
		return star_rating;
	}
	public void setStar_rating(double star_rating) {
		this.star_rating = star_rating;
	}
	public Date getInput_date() {
		return input_date;
	}
	public void setInput_date(Date input_date) {
		this.input_date = input_date;
	}
	public ReviewVO(String id, String content, double star_rating, Date input_date) {
		super();
		this.id = id;
		this.content = content;
		this.star_rating = star_rating;
		this.input_date = input_date;
	}
	public ReviewVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

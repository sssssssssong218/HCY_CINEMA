package Screen;

import java.util.Date;

public class AddScheduleVO {
	private String movieCode;
	private int screenNum;
	private Date showtime;
	private int price;
	
	public AddScheduleVO() {
		
	}//constructor

	public AddScheduleVO(String movieCode, int screenNum, Date showtime, int price) {
		super();
		this.movieCode = movieCode;
		this.screenNum = screenNum;
		this.showtime = showtime;
		this.price = price;
	}//constructor

	//getter
	public String getMovieCode() {
		return movieCode;
	}

	public int getScreenNum() {
		return screenNum;
	}

	public Date getShowtime() {
		return showtime;
	}

	public int getPrice() {
		return price;
	}

	//setter
	public void setMovieCode(String movieCode) {
		this.movieCode = movieCode;
	}

	public void setScreenNum(int screenNum) {
		this.screenNum = screenNum;
	}

	public void setShowtime(Date showtime) {
		this.showtime = showtime;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
}//class

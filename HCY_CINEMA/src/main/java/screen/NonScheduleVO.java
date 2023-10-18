package screen;

public class NonScheduleVO {
	private String movieCode;
	private String mname;
	private String plot;
	private String fileName;
	private int price;
	
	public NonScheduleVO() {
		
	}//constructor

	public NonScheduleVO(String movieCode, String mname, String plot, String fileName, int price) {
		super();
		this.movieCode = movieCode;
		this.mname = mname;
		this.plot = plot;
		this.fileName = fileName;
		this.price = price;
	}//constructor

	//getter
	public String getMovieCode() {
		return movieCode;
	}

	public String getMname() {
		return mname;
	}

	public String getPlot() {
		return plot;
	}

	public String getFileName() {
		return fileName;
	}

	public int getPrice() {
		return price;
	}

	//setter
	public void setMovieCode(String movieCode) {
		this.movieCode = movieCode;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
}//class

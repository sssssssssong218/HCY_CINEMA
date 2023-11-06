package screen;

public class MovieVO {
	private String movieCode,mName,plot,screennum;

	public String getMovieCode() {
		return movieCode;
	}

	public void setMovieCode(String movieCode) {
		this.movieCode = movieCode;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getPlot() {
		return plot;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}

	public String getScreennum() {
		return screennum;
	}

	public void setScreennum(String screennum) {
		this.screennum = screennum;
	}

	public MovieVO(String movieCode, String mName,String plot,String screennum) {
		super();
		this.movieCode = movieCode;
		this.mName = mName;
		this.plot = plot;
		this.screennum=screennum;
	}

	public MovieVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}

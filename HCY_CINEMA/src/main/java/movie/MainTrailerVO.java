package movie;

public class MainTrailerVO {
	private String trailerName;
	private String movieCode;
	private String movieName;
	private String adMsg;
	
	public MainTrailerVO() {
		
	}//constructor

	public MainTrailerVO(String trailerName, String movieCode, String movieName, String adMsg) {
		super();
		this.trailerName = trailerName;
		this.movieCode = movieCode;
		this.movieName = movieName;
		this.adMsg = adMsg;
	}//constructor

	//getter
	public String getTrailerName() {
		return trailerName;
	}

	public String getMovieCode() {
		return movieCode;
	}

	public String getMovieName() {
		return movieName;
	}

	public String getAdMsg() {
		return adMsg;
	}

	//setter
	public void setTrailerName(String trailerName) {
		this.trailerName = trailerName;
	}

	public void setMovieCode(String movieCode) {
		this.movieCode = movieCode;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public void setAdMsg(String adMsg) {
		this.adMsg = adMsg;
	}
	
	
	
	
}//class

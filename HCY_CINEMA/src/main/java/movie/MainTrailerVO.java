package movie;

public class MainTrailerVO {
	private String trailerName;
	private String movieCode;
	private String movieName;
	private String adMsg;
	
	public MainTrailerVO() {
		
	}//constructor

	public MainTrailerVO(String trailerName, String movieCode,  String adMsg) {
		super();
		this.trailerName = trailerName;
		this.movieCode = movieCode;
		
		this.adMsg = adMsg;
	}//constructor

	//getter
	public String getTrailerName() {
		return trailerName;
	}

	public String getMovieCode() {
		return movieCode;
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


	public void setAdMsg(String adMsg) {
		this.adMsg = adMsg;
	}
	
	
	
	
}//class

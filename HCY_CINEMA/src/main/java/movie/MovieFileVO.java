package movie;

import java.util.List;

public class MovieFileVO {
	private String posterFile;
	private List<String> stillFile;
	private String trailerFile;
	
	public MovieFileVO() {
		
	}//constructor

	public MovieFileVO(String posterFile, List<String> stillFile, String trailerFile) {
		super();
		this.posterFile = posterFile;
		this.stillFile = stillFile;
		this.trailerFile = trailerFile;
	}//constructor

	//getter
	public String getPosterFile() {
		return posterFile;
	}

	public List<String> getStillFile() {
		return stillFile;
	}

	public String getTrailerFile() {
		return trailerFile;
	}

	//setter
	public void setPosterFile(String posterFile) {
		this.posterFile = posterFile;
	}

	public void setStillFile(List<String> stillFile) {
		this.stillFile = stillFile;
	}

	public void setTrailerFile(String trailerFile) {
		this.trailerFile = trailerFile;
	}
	
	
	
	
}//class

package movie;

import java.util.List;

public class MovieInfoVO {
	private List<String> director;
	private List<String> actor;
	private List<String> genre;
	private List<String> extra;
	public MovieInfoVO() {
		
	}//constructor

	public MovieInfoVO(List<String> director, List<String> actor, List<String> genre,List<String> extra) {
		super();
		this.director = director;
		this.actor = actor;
		this.genre = genre;
		this.extra = extra;
	}//constructor

	//getter
	public List<String> getDirector() {
		return director;
	}

	public List<String> getActor() {
		return actor;
	}

	public List<String> getGenre() {
		return genre;
	}

	//setter
	public void setDirector(List<String> director) {
		this.director = director;
	}

	public void setActor(List<String> actor) {
		this.actor = actor;
	}

	public void setGenre(List<String> genre) {
		this.genre = genre;
	}

	public List<String> getExtra() {
		return extra;
	}

	public void setExtra(List<String> extra) {
		this.extra = extra;
	}
	
	
	
	
}//class

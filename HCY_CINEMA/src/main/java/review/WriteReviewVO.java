package review;

public class WriteReviewVO {
	private String moviecode;
	private String id; 
	private double starRating;
	private String content;
	
	public WriteReviewVO() {
	}

	public WriteReviewVO(String moviecode, String id, double starRating, String content) {
		this.moviecode = moviecode;
		this.id = id;
		this.starRating = starRating;
		this.content = content;
	}

	public String getMoviecode() {
		return moviecode;
	}

	public void setMoviecode(String moviecode) {
		this.moviecode = moviecode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public double getStarRating() {
		return starRating;
	}

	public void setStarRating(double starRating) {
		this.starRating = starRating;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "WriteReviewVO [moviecode=" + moviecode + ", id=" + id + ", starRating=" + starRating + ", content="
				+ content + "]";
	}
	
}//class

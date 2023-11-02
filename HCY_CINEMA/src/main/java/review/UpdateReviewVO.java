package review;

public class UpdateReviewVO {
	private String moviecode;
	private String id;
	private double starRating;
	
	public UpdateReviewVO() {
	}

	public UpdateReviewVO(String moviecode, String id, double starRating) {
		this.moviecode = moviecode;
		this.id = id;
		this.starRating = starRating;
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

	@Override
	public String toString() {
		return "UpdateReviewVO [moviecode=" + moviecode + ", id=" + id + ", starRating=" + starRating + "]";
	}
	
}//class

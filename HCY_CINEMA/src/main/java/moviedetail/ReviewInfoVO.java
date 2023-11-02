package moviedetail;

public class ReviewInfoVO {
	private int reviewCnt;
	private double reviewArg;
	public int getReviewCnt() {
		return reviewCnt;
	}
	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}
	public double getReviewArg() {
		return reviewArg;
	}
	public void setReviewArg(double reviewArg) {
		this.reviewArg = reviewArg;
	}
	public ReviewInfoVO(int reviewCnt, double reviewArg) {
		super();
		this.reviewCnt = reviewCnt;
		this.reviewArg = reviewArg;
	}
	public ReviewInfoVO() {
		super();
		// TODO Auto-generated constructor stub
	}


	
	
}

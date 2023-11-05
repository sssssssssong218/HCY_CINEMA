package board;

public class BoardUtilVO {
	private String url, dataFlag, keyword ,  field;
	private int currentPage, totalPage;
	
	public BoardUtilVO() {
	}

	public BoardUtilVO(String url, String dataFlag, String field, String keyword, int currentPage, int totalPage) {
		super();
		this.url = url;
		this.dataFlag = dataFlag;
		this.field = field;
		this.keyword = keyword;
		this.currentPage = currentPage;
		this.totalPage = totalPage;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDataFlag() {
		return dataFlag;
	}

	public void setDataFlag(String dataFlag) {
		this.dataFlag = dataFlag;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	@Override
	public String toString() {
		return "BoardUtilVO [url=" + url + ", dataFlag=" + dataFlag + ", field=" + field + ", keyword=" + keyword
				+ ", currentPage=" + currentPage + ", totalPage=" + totalPage + "]";
	}

}//class

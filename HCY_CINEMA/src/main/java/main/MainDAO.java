package main;

import java.util.ArrayList;
import java.util.List;

public class MainDAO {
private static MainDAO mnDAO;
	public MainDAO() {
	}//constructor
	
	public static MainDAO getInstance() {
	if(mnDAO==null) {
		mnDAO = new MainDAO();
	}//if
	return mnDAO;
	}//getInstance
	
	public List<MainMovieVO> selectMainMovie(){
		List<MainMovieVO> list = new ArrayList<MainMovieVO>();
		//아직 안함
		return list;
	}//selectMainMovie
	
	public double selectMainStarRating() {
		double 
	}//selectMainStarRating
}//class

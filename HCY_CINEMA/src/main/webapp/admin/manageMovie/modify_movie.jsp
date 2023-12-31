<%@page import="movie.MainTrailerVO"%>
<%@page import="java.io.IOException"%>
<%@page import="movie.MovieFileVO"%>
<%@page import="movie.DetailMovieDAO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="movie.MovieInfoVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="movie.AddMovieVO"%>
<%@page import="movie.AddMovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon"
	href="http://192.168.10.147/mybatis/common/main/favicon.png">
<!-- bootStrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style>
</style>
<script type="text/javascript">
	$(function() {
		<%
		DetailMovieDAO dmDAO = DetailMovieDAO.getInstance();
		AddMovieDAO amDAO = AddMovieDAO.getInstance();
		AddMovieVO amVO = new AddMovieVO();
		String hide = "";
		String[] hideArr = null;
		List<String> list = new ArrayList<String>();
		
		try {
			File saveDir = new File("C:/Users/user/git/HCY_CINEMA/HCY_CINEMA/src/main/webapp/common/movie_files");
			int maxSize = 1024 * 1024 * 50; // 키로바이트 * 메가바이트 * 기가바이트
			MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8",
			new DefaultFileRenamePolicy());
			String movieCode = mr.getParameter("movieCode");
			int stillSize = Integer.parseInt(mr.getParameter("stillSize"));
			dmDAO.deleteMovieInfo(movieCode);
			String[] selectStill = mr.getParameterValues("stillfile");
			if (selectStill != null) {
				int i = 0;
				for (String stillfiles : selectStill) {
			if (stillfiles != null) {
				File deleteStillFile = new File(saveDir + "/" + stillfiles);
				deleteStillFile.delete();
			dmDAO.deleteMovieFile(movieCode,stillfiles);
			}
			i++;
				}
			}
			String[] maintrailer=mr.getParameterValues("main_trailer");
			
			String[] posterFile = mr.getParameterValues("posterfile");
			String[] trailerFile = mr.getParameterValues("trailerfile");
			if (posterFile != null) {
				File deletePosterFile = new File(saveDir + "/" + movieCode + "_P");
				for(String poster:posterFile){
					dmDAO.deleteMovieFile(movieCode,poster);
				}
				deletePosterFile.delete();
			}
			if (trailerFile != null) {
				File deleteTrailerFile = new File(saveDir + "/" + movieCode + "_T");
				for(String trailer:trailerFile){
					dmDAO.deleteMovieFile(movieCode,trailer);
				}
				deleteTrailerFile.delete();
			}
			List<String> stillImgList = dmDAO.selectStill(movieCode);

			hide = mr.getParameter("still_hide");
			hideArr = hide.split("/");
			for (String still : hideArr) {
				if (!"".equals(still)) {
			if (still.substring(still.lastIndexOf(".")).equals(".jpg")
					|| still.substring(still.lastIndexOf(".")).equals(".png")) {
				list.add(still);
			} else {
		%>
		alert(스틸컷의 확장자는 jpg또는 png만 가능합니다);

		<%
		response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp");
		return;
		}
		}
		}
			
		List<String> actor_list = new ArrayList<String>();
		List<String> extra_list = new ArrayList<String>();
		List<String> director_list = new ArrayList<String>();
		List<String> genre_list = new ArrayList<String>();
		MovieInfoVO miVO = new MovieInfoVO();
		for (int i = 0; i < Integer.parseInt(mr.getParameter("actor_hide")); i++) {
		actor_list.add(mr.getParameter("actor_" + i));
		}
		for (int i = 0; i < Integer.parseInt(mr.getParameter("extra_hide")); i++) {
		extra_list.add(mr.getParameter("extra_" + i));
		}
		for (int i = 0; i < Integer.parseInt(mr.getParameter("director_hide")); i++) {
		director_list.add(mr.getParameter("director_" + i));
		}
		for (int i = 0; i < Integer.parseInt(mr.getParameter("genre_hide")); i++) {
		genre_list.add(mr.getParameter("genre_select_" + i));
		}

		String posterfile = mr.getFilesystemName("poster_file");
		String posterfileExtension = "";
		if (posterfile != null) {
		posterfileExtension = posterfile.substring(posterfile.lastIndexOf(".")); // 포스터 파일 확장자 추출
		}
		String trailerfile = mr.getFilesystemName("trailer_file");
		String trailerfileExtension = "";
		if (trailerfile != null) {
		trailerfileExtension = trailerfile.substring(trailerfile.lastIndexOf("."));
		} // 트레일러 파일 확장자 추출
		String mname = mr.getParameter("movie_name");
		String actor = mr.getParameter("actor");
		String director = mr.getParameter("director");
		String genre = mr.getParameter("genre_select");
		String country = mr.getParameter("country");
		String plot = mr.getParameter("movie_info");
		String runningtime = mr.getParameter("runningtime");
		String age = mr.getParameter("ageGroup");
		String status = mr.getParameter("status");
		String releasedate = mr.getParameter("year") + "-" + mr.getParameter("month") + "-" + mr.getParameter("date");
		String enddate = mr.getParameter("nextyear") + "-" + mr.getParameter("nextmonth") + "-" + mr.getParameter("nextdate");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = sdf.parse(releasedate);
		Date date1 = sdf.parse(enddate);
		java.sql.Date sqlDate = new java.sql.Date(date.getTime());
		java.sql.Date sqlDate1 = new java.sql.Date(date1.getTime());
		dmDAO.updateMovie(movieCode,
				new AddMovieVO(mname, sqlDate, sqlDate1, plot, Integer.parseInt(runningtime), age, status));

		miVO.setActor(actor_list);
		miVO.setExtra(extra_list);
		miVO.setDirector(director_list);
		miVO.setGenre(genre_list);
		dmDAO.insertActorInfo(miVO, movieCode);
		dmDAO.insertDirectorInfo(miVO, movieCode);
		dmDAO.insertGenreInfo(miVO, movieCode);
		dmDAO.insertExtraInfo(miVO, movieCode);
		String baseFileName = movieCode;
		MovieFileVO mVO = new MovieFileVO();
		
		if (posterfile != null) {
		if (!(posterfileExtension.equals(".jpg") || posterfileExtension.equals(".png"))) {
		%>
		alert(업로드 실패: 올바른 파일 확장자를 사용하세요);
		
		<%
		response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp");
		return;
		}
		
		String posternewFileName = baseFileName + "_P" + posterfileExtension;
		int counter = 1;
		if (posternewFileName != null) {
		while (new File(saveDir, posternewFileName).exists()) {
			posternewFileName = baseFileName + "_P" + counter + posterfileExtension;
			counter++;
		}
		}
		File uploadedPosterFile = new File(saveDir, posterfile);
		File renamedPosterFile = new File(saveDir, posternewFileName);
		if (uploadedPosterFile.renameTo(renamedPosterFile)) {
		// 성공적으로 복사되었으면 포스터 파일 이름 업데이트
		posterfile = posternewFileName;
		} else {
		%>
		alert(파일업로드 중 오류발생);
		<%
		response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp");
		return;
		}
		mVO.setPosterFile(posterfile);
		amDAO.insertMoviePosterFile(mVO, movieCode);
		}
		
		if (trailerfile != null) {
		String trailernewFileName = baseFileName + "_T" + trailerfileExtension;
		if (trailerfileExtension.equals(".mp4")) {
		%>
		alert(업로드 실패: 올바른 파일 확장자를 사용하세요);
		
		<%
		response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp");
		return;
		}

		// 트레일러 파일 이름 중복 확인 및 숫자를 붙여가며 변경
		int counter = 1;
		if (trailernewFileName != null) {
		while (new File(saveDir, trailernewFileName).exists()) {
			trailernewFileName = baseFileName + "_T" + counter + trailerfileExtension;
			counter++;
		}
		}

		// 포스터 파일을 복사하여 새 이름으로 저장

		// 트레일러 파일을 복사하여 새 이름으로 저장
		File uploadedTrailerFile = new File(saveDir, trailerfile);
		File renamedTrailerFile = new File(saveDir, trailernewFileName);
		if (uploadedTrailerFile.renameTo(renamedTrailerFile)) {
		// 성공적으로 복사되었으면 트레일러 파일 이름 업데이트
		trailerfile = trailernewFileName;
		} else {
		%>
alert(파일업로드 중 오류발생);
		
		<%
		response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp");
		return;
		}
	
		mVO.setTrailerFile(trailerfile);
		amDAO.insertMainTrailer(mVO, movieCode);
		}
		if(maintrailer!=null){
			dmDAO.deleteMaintrailer();
			MainTrailerVO mtVO=new MainTrailerVO();
			mtVO.setMovieCode(movieCode);
			mtVO.setTrailerName(movieCode+"_T.mp4");
			mtVO.setAdMsg(mr.getParameter("maintrailer"));
			dmDAO.insertMaintrailer(mtVO);
		}
		// stillfile 이름 변경 및 저장
		if (list != null) {
		for (int i = 0; i < list.size(); i++) {
		String stillfile = list.get(i);
		String stillfileExtension = stillfile.substring(stillfile.lastIndexOf("."));
		String stillnewFileName = baseFileName + "_S" + (i + 1 + stillSize) + stillfileExtension;

		File uploadStillFile = new File(saveDir, stillfile);
		File renamedStillFile = new File(saveDir, stillnewFileName);

		// 파일을 복사하여 새 이름으로 저장
		if (uploadStillFile.renameTo(renamedStillFile)) {
			// 성공적으로 복사되었으면 리스트에 업데이트
			list.set(i, stillnewFileName);
		} else {
		%>
		alert(파일업로드 중 오류발생)
		
		<%
		response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp");
		return;
		}
		}
		mVO.setStillFile(list);
		amDAO.insertMovieStillFile(mVO, movieCode);
		}
		
		} catch (IOException ie) {
		ie.printStackTrace();
		out.println("파일 업로드 처리 중 문제 발생");
		} catch (NumberFormatException nfe) {
		nfe.printStackTrace();
		%>
		alert(상영시간은 숫자로만 입력이 가능합니다.);

		<%
		response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp");
		return;
		}
		response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp");
		%>
	});
</script>
</head>
<body>


	
</body>
</html>

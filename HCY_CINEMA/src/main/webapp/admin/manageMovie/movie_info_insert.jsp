<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.IOException"%>
<%@page import="movie.MovieFileVO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	href="http://192.168.10.147/jsp_prj/common/main/favicon.png">
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
	$(function(){
	
});
</script>
</head>
<body>
		 <%AddMovieDAO amDAO = AddMovieDAO.getInstance();
AddMovieVO amVO = new AddMovieVO();
String hide="";
String hide1="";
try {
	File saveDir = new File("C:/Users/user/git/HCY_CINEMA/HCY_CINEMA/src/main/webapp/common/poster");
	int maxSize = 1024 * 1024 * 50; // 키로바이트 * 메가바이트 * 기가바이트
	MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8",
			new DefaultFileRenamePolicy());
	hide=mr.getParameter("still_hide");
} catch (IOException ie) {
	ie.printStackTrace();
	out.println("파일 업로드 처리 중 문제 발생");
}%>
	<%-- String posterfile = mr.getFilesystemName("poster_file");
	String posterfileExtension = posterfile.substring(posterfile.lastIndexOf(".")); // 파일 확장자 추출
	String stillfile = mr.getFilesystemName("still_file");
	String stillfileExtension = stillfile.substring(stillfile.lastIndexOf(".")); // 파일 확장자 추출
	String trailerfile = mr.getFilesystemName("trailer_file");
	String trailerfileExtension = trailerfile.substring(trailerfile.lastIndexOf(".")); // 파일 확장자 추출
	String mname = mr.getParameter("movie_name");
	String actor = mr.getParameter("actor");
	String director = mr.getParameter("director");
	String genre = mr.getParameter("genre_select");
	String country = mr.getParameter("country");
	String plot = mr.getParameter("movie_info");
	String runningtime = mr.getParameter("runningtime");
	String age = mr.getParameter("ageGroup");
	String status = mr.getParameter("status");
	String releasedate = mr.getParameter("year") + "-" + mr.getParameter("month") + "-"
			+ mr.getParameter("date");
	String enddate = mr.getParameter("nextyear") + "-" + mr.getParameter("nextmonth") + "-"
			+ mr.getParameter("nextdate");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
/* 	mname = new String(mname.getBytes("8859_1"), "UTF-8");
	country = new String(country.getBytes("8859_1"), "UTF-8");
	plot = new String(plot.getBytes("8859_1"), "UTF-8");
	runningtime = new String(runningtime.getBytes("8859_1"), "UTF-8");
	releasedate = new String(releasedate.getBytes("8859_1"), "UTF-8");
	enddate = new String(enddate.getBytes("8859_1"), "UTF-8");
	age = new String(age.getBytes("8859_1"), "UTF-8");
	status = new String(status.getBytes("8859_1"), "UTF-8"); */
	Date date = sdf.parse(releasedate);
	Date date1 = sdf.parse(enddate);
	java.sql.Date sqlDate = new java.sql.Date(date.getTime());
	java.sql.Date sqlDate1 = new java.sql.Date(date1.getTime());
	amDAO.insertMovie(new AddMovieVO(mname, sqlDate, sqlDate1, plot, Integer.parseInt(runningtime), age, status));
	String movieCode = amDAO.selectMovieCode(mname);
	
	if (!(posterfileExtension.equals(".jpg") || posterfileExtension.equals(".png")
			||stillfileExtension.equals(".jpg")||stillfileExtension.equals(".png")
			||trailerfileExtension.equals(".mp4"))) {%>
		    	<strong>업로드 실패</strong>
		    	<%return;
			}
			String baseFileName = movieCode; // 기본 파일명
			String posternewFileName = baseFileName + posterfileExtension;
			String stillnewFileName = baseFileName + stillfileExtension;
			String trailernewFileName = baseFileName + trailerfileExtension;
			MovieFileVO mVO = new MovieFileVO();
			mVO.setPosterFile(posternewFileName);
			/* mVO.setStillFile(stillnewFileName); */
			/* mVO.setTrailerFile(trailernewFileName); */
			amDAO.insertMoviePosterFile(mVO, movieCode);
			File uploadedFile = new File(saveDir, posterfile);
			File renamedFile = new File(saveDir, posternewFileName);
			int counter = 1;
			// 파일명 중복 확인 및 숫자를 붙여가며 변경
			while (renamedFile.exists()) {
				posternewFileName = baseFileName + "_" + counter + posterfileExtension;
				renamedFile = new File(saveDir, posternewFileName);
				counter++;
			}
			  boolean renamed = uploadedFile.renameTo(renamedFile);
			    String uploader = mr.getParameter("uploader");
			    String originfile = mr.getOriginalFileName("poster_file");
			    if (renamed) {
			%>
			    <strong>업로드 성공</strong><br/>
			    업로더: <%= stillnewFileName %><br/>
			    나이: <%= stillnewFileName %><br/>
			    파일명: <%= posternewFileName %> (<%= originfile %>)<br/>
			<%
			    } else {
			%>
			    <strong>파일 이름 변경 실패</strong><br/>
			<%
			    }
		} catch (IOException ie) {
			ie.printStackTrace();
			out.println("파일 업로드 처리 중 문제 발생");
		}%> --%>
		<%= hide %>
</body>
</html>
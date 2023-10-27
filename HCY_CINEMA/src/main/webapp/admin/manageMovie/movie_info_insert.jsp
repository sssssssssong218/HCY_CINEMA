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
<link rel="icon" href="http://192.168.10.147/jsp_prj/common/main/favicon.png">
<!-- bootStrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style>
</style>
<script type="text/javascript">
	$(function(){
		 <%
		AddMovieDAO amDAO=AddMovieDAO.getInstance();
		AddMovieVO amVO=new AddMovieVO();
		String mname=request.getParameter("movie_name");
		String actor=request.getParameter("actor");
		String director=request.getParameter("director");
		String genre=request.getParameter("genre");
		String country=request.getParameter("country");
		String plot=request.getParameter("movie_info");
		String runningtime=request.getParameter("runningtime");
		String age=request.getParameter("ageGroup");
		String status=request.getParameter("status");
		
	 	String releasedate=request.getParameter("year")+"-"+request.getParameter("month")+"-"+request.getParameter("date");
		String enddate=request.getParameter("nextyear")+"-"+request.getParameter("nextmonth")+"-"+request.getParameter("nextdate");
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		mname=new String(mname.getBytes("8859_1"),"UTF-8");
		country=new String(country.getBytes("8859_1"),"UTF-8");
		plot=new String(plot.getBytes("8859_1"),"UTF-8");
		runningtime=new String(runningtime.getBytes("8859_1"),"UTF-8");
		releasedate=new String(releasedate.getBytes("8859_1"),"UTF-8");
		enddate=new String(enddate.getBytes("8859_1"),"UTF-8");
		age=new String(age.getBytes("8859_1"),"UTF-8"); 
		status=new String(status.getBytes("8859_1"),"UTF-8"); 
		
	 	Date date=sdf.parse(releasedate);
		Date date1=sdf.parse(enddate);
		java.sql.Date sqlDate = new java.sql.Date(date.getTime());
		java.sql.Date sqlDate1 = new java.sql.Date(date1.getTime());
		
	 	/* amVO.setMname(mname);
		amVO.setReleaseDate(sqlDate);
		amVO.setEndDate(sqlDate1);
		amVO.setPlot(plot);
		if(runningtime!=null){
		amVO.setRunningTime(Integer.parseInt(runningtime));
		}
		amVO.setMovieRating(age);
		amVO.setStatus(status);  */
		
	 amDAO.insertMovie(new AddMovieVO(mname,sqlDate,sqlDate1,plot,Integer.parseInt(runningtime),age,status)); 
		%>
});
</script>
</head>
<body>
</body>
</html>
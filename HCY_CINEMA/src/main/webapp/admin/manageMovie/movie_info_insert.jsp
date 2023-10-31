<%@page import="movie.MovieInfoVO"%>
<%@page import="movie.DetailMovieDAO"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.StandardCopyOption"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	$(function() {

	});
</script>
</head>
<body>
<%
AddMovieDAO amDAO = AddMovieDAO.getInstance();
AddMovieVO amVO = new AddMovieVO();
String hide = "";
String[] hideArr = null;
List<String> list = new ArrayList<String>();
try {
    File saveDir = new File("C:/Users/user/git/HCY_CINEMA/HCY_CINEMA/src/main/webapp/common/movie_files");
    int maxSize = 1024 * 1024 * 50; // 키로바이트 * 메가바이트 * 기가바이트
    MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8", new DefaultFileRenamePolicy());
    
    hide = mr.getParameter("still_hide");
    hideArr = hide.split("/");
    for (String still : hideArr) {
    	if(still.substring(still.lastIndexOf(".")).equals(".jpg")||still.substring(still.lastIndexOf(".")).equals(".png")){
        list.add(still);
    	}
    }
	List<String> actor_list=new ArrayList<String>();
	List<String> extra_list=new ArrayList<String>();
	List<String> director_list=new ArrayList<String>();
	List<String> genre_list=new ArrayList<String>();
	MovieInfoVO miVO=new MovieInfoVO();
	for(int i=0;i<Integer.parseInt(mr.getParameter("actor_hide"));i++){
		 actor_list.add(mr.getParameter("actor_"+i));
	}
	for(int i=0;i<Integer.parseInt(mr.getParameter("extra_hide"));i++){
		 actor_list.add(mr.getParameter("extra_"+i));
	}
	for(int i=0;i<Integer.parseInt(mr.getParameter("director_hide"));i++){
		director_list.add(mr.getParameter("director_"+i));
	}
	for(int i=0;i<Integer.parseInt(mr.getParameter("genre_hide"));i++){
		genre_list.add(mr.getParameter("genre_select_"+i));
	}
    String posterfile = mr.getFilesystemName("poster_file");
    String posterfileExtension = posterfile.substring(posterfile.lastIndexOf(".")); // 포스터 파일 확장자 추출
    String trailerfile = mr.getFilesystemName("trailer_file");
    String trailerfileExtension = trailerfile.substring(trailerfile.lastIndexOf(".")); // 트레일러 파일 확장자 추출
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
     amDAO.insertMovie(new AddMovieVO(mname, sqlDate, sqlDate1, plot, Integer.parseInt(runningtime), age, status));
    String movieCode = amDAO.selectMovieCode(mname);
	DetailMovieDAO dmDAO=DetailMovieDAO.getInstance(); 

	 miVO.setActor(actor_list);
	 miVO.setActor(extra_list);
	miVO.setDirector(director_list);
	miVO.setGenre(genre_list);
	dmDAO.insertActorInfo(miVO, movieCode);
	dmDAO.insertDirectorInfo(miVO, movieCode);
	dmDAO.insertGenreInfo(miVO, movieCode);
	dmDAO.insertExtraInfo(miVO, movieCode);
    if (!(posterfileExtension.equals(".jpg") || posterfileExtension.equals(".png") || trailerfileExtension.equals(".mp4"))) {
%>
    <strong>업로드 실패: 올바른 파일 확장자를 사용하세요</strong>
<%
        return;
    }

    String baseFileName = movieCode; // 기본 파일명
    String posternewFileName = baseFileName + "_P" + posterfileExtension;
    String trailernewFileName = baseFileName + "_T" + trailerfileExtension;

    // 포스터 파일 이름 중복 확인 및 숫자를 붙여가며 변경
    int counter = 1;
    while (new File(saveDir, posternewFileName).exists()) {
        posternewFileName = baseFileName + "_P" + counter + posterfileExtension;
        counter++;
    }

    // 트레일러 파일 이름 중복 확인 및 숫자를 붙여가며 변경
    counter = 1;
    while (new File(saveDir, trailernewFileName).exists()) {
        trailernewFileName = baseFileName + "_T" + counter + trailerfileExtension;
        counter++;
    }

    // 포스터 파일을 복사하여 새 이름으로 저장
    File uploadedPosterFile = new File(saveDir, posterfile);
    File renamedPosterFile = new File(saveDir, posternewFileName);
    if (uploadedPosterFile.renameTo(renamedPosterFile)) {
        // 성공적으로 복사되었으면 포스터 파일 이름 업데이트
        posterfile = posternewFileName;
    } else {
    %>
    <strong>파일업로드 중 오류발생</strong><br/>
        <a href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_insert_movie.jsp">뒤로가기</a>
    <%
        return;
    }

    // 트레일러 파일을 복사하여 새 이름으로 저장
    File uploadedTrailerFile = new File(saveDir, trailerfile);
    File renamedTrailerFile = new File(saveDir, trailernewFileName);
    if (uploadedTrailerFile.renameTo(renamedTrailerFile)) {
        // 성공적으로 복사되었으면 트레일러 파일 이름 업데이트
        trailerfile = trailernewFileName;
    } else {
    %>
  <strong>파일업로드 중 오류발생</strong><br/>
        <a href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_insert_movie.jsp">뒤로가기</a>
    <%
        return;
    }

    // stillfile 이름 변경 및 저장
    for (int i = 0; i < list.size(); i++) {
        String stillfile = list.get(i);
        String stillfileExtension = stillfile.substring(stillfile.lastIndexOf("."));
        String stillnewFileName = baseFileName + "_S" + (i + 1) + stillfileExtension;

        File uploadStillFile = new File(saveDir, stillfile);
        File renamedStillFile = new File(saveDir, stillnewFileName);

        // 파일을 복사하여 새 이름으로 저장
        if (uploadStillFile.renameTo(renamedStillFile)) {
            // 성공적으로 복사되었으면 리스트에 업데이트
            list.set(i, stillnewFileName);
        } else {
        %>
        <strong>파일업로드 중 오류발생</strong><br/>
        <a href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_insert_movie.jsp">뒤로가기</a>
        <%
            return;
        }
    }

    MovieFileVO mVO = new MovieFileVO();
    mVO.setPosterFile(posterfile);
    mVO.setStillFile(list);
    mVO.setTrailerFile(trailerfile);
    
    

    if (amDAO.insertMoviePosterFile(mVO, movieCode)) {
    	amDAO.insertMovieStillFile(mVO, movieCode);
        amDAO.insertMainTrailer(mVO, movieCode);
%>
    <strong>업로드 성공</strong><br/>
    
<%
    } else {
%>
    <strong>데이터베이스에 업로드 실패</strong>
<%
    }
} catch (IOException ie) {
    ie.printStackTrace();
    out.println("파일 업로드 처리 중 문제 발생");
}catch(NumberFormatException nfe){
	nfe.printStackTrace();
	%>
	상영시간은 숫자로만 입력이 가능합니다.<br/>
	뒤로가시려면 <a href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_insert_movie.jsp">여기</a>를 클릭해주세요
	
	<%
}
%>

</body>
</html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="screen.MovieVO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="screen.ManageScreenDAO"%>
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
	    ManageScreenDAO msDAO = ManageScreenDAO.getInstance();
	    int year = Integer.parseInt(request.getParameter("year_hid"));
	    int month = Integer.parseInt(request.getParameter("month_hid"));
	    int day = Integer.parseInt(request.getParameter("day_hid"));
	    String btnId = request.getParameter("btn_hid");
	    int time = 0;
	int min=0;
	    // 문자열 비교에는 equals 메소드를 사용해야 합니다.
	    if (btnId.equals("1")) {
	        time = 10;
	    }
	    if (btnId.equals("2")) {
	        time = 13;
	    }
	    if (btnId.equals("3")) {
	        time = 16;
	    }
	    if (btnId.equals("4")) {
	        time = 19;
	    }
	    if (btnId.equals("5")) {
	        time = 22;
	    }

	    String movieCode = request.getParameter("moviecode_hid");
	    String screenNum = request.getParameter("screen_hid");

	    Calendar showtime = Calendar.getInstance();
	    showtime.set(Calendar.YEAR, year);
	    showtime.set(Calendar.MONTH, month - 1); 
	    showtime.set(Calendar.DAY_OF_MONTH, day);
	    showtime.set(Calendar.HOUR_OF_DAY, time); // HOUR_OF_DAY를 사용하여 24시간 형식으로 시간을 설정
	    showtime.set(Calendar.MINUTE, min); 
	    Date selectedDate = new Date(showtime.getTimeInMillis());

	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	    String formattedDate = sdf.format(selectedDate);
	    
	    MovieVO mVO = new MovieVO();

	    mVO.setMovieCode(movieCode);
	    mVO.setScreennum(screenNum);

	     msDAO.insertSchedule(mVO, selectedDate);
	     
	     response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen.jsp");
	%>

});
</script>
</head>
<body>

</body>
</html>
<%@page import="movie.DetailMovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.147/mybatis/common/main/favicon.png">
<!-- bootStrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style>
</style>
<script type="text/javascript">
	$(function(){
	<%
	String[] checkMovie=request.getParameterValues("check");
	DetailMovieDAO dmDAO=DetailMovieDAO.getInstance();
	for(String movieCode:checkMovie){
		dmDAO.deleteMovie(movieCode);
	}
    session.setAttribute("msg", "종영처리 되었습니다.");
	session.setAttribute("url", "http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp");
	response.sendRedirect("http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_err_msg.jsp");
	%>
});
</script>
</head>
<body>

</body>
</html>
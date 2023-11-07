<%@page import="review.WriteReviewVO"%>
<%@page import="manageMember.MemberVO"%>
<%@page import="review.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="리뷰작성 / 별점" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://localhost/HCY_CINEMA/common/images/favicon.png">
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	<%
	request.setCharacterEncoding("UTF-8");
	ReviewDAO rDAO=ReviewDAO.getInstance();
	WriteReviewVO wrVO=new WriteReviewVO();
	MemberVO mVO=(MemberVO)session.getAttribute("mVO");
	wrVO.setId(mVO.getId());
	wrVO.setMoviecode(request.getParameter("movie"));
	wrVO.setContent(request.getParameter("info"));
	double star=Integer.parseInt(request.getParameter("rating"))/2.0;
	wrVO.setStarRating(star);
	rDAO.insertReview(wrVO);
	response.sendRedirect("http://localhost/HCY_CINEMA/user/myPage/mypage_myticket.jsp");
	%>
});//ready
</script>
</head>
<body>

</body>
</html>
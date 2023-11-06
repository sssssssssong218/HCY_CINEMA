<%@page import="manageMember.MemberVO"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.145/jsp_prj/common/main/favicon.png">
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	
});//ready
</script>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
//GET방식의 요청이라면 memberjoin_frm.jsp로 이동
String method=request.getMethod();
if("GET".equals(method)){
	response.sendRedirect("board_write.jsp");
	return;
}//end if
%>

<jsp:useBean id="bVO" class="board.BoardVO" scope="page"/>
<jsp:setProperty property="*" name="bVO"/>


<%
request.setCharacterEncoding("UTF-8");

MemberVO mVO = (MemberVO)session.getAttribute("mVO");

String id=(String)session.getAttribute("sesID");
String title=request.getParameter("title");
String content=request.getParameter("content");
BoardDAO bDAO=BoardDAO.getInstance();

bVO.setId(id);
bVO.setTitle(title);
bVO.setContent(content);
boolean flag=bDAO.insertBoard(bVO); 

if(flag){
	response.sendRedirect("http://localhost/HCY_CINEMA/user/board/board.jsp");
}else{
%>
	<h2>게시글 등록 중 오류가 발생하였습니다.</h2>
<%	
}//end else
%> 
</body>
</html>
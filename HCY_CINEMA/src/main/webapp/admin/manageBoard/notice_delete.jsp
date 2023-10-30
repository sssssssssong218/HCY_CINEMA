<%@page import="board.ManageNoticeDAO"%>
<%@page import="board.ManageBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글 삭제</title>
<link rel="icon" href="http://192.168.10.140/jsp_prj/common/main/favicon.png">
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
	String noticeTitle=request.getParameter("noticeNum");
	int noticeNum=Integer.parseInt(noticeTitle);
	
	ManageNoticeDAO mnDAO=ManageNoticeDAO.getInstance();
	boolean isDelete=mnDAO.deleteNotice(noticeNum);
	
	if(isDelete){
		response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageBoard/notice_list.jsp");
	}else{
%>
		<h2>게시글 삭제 중 오류가 발생하였습니다.</h2>
<%		
	}//end else
%>
</body>
</html>
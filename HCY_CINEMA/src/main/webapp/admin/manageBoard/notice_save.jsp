<%@page import="board.ManageNoticeDAO"%>
<%@page import="board.NoticeVO"%>
<%@page import="encryption.Encryption"%>
<%@page import="manageMember.ManageMemberDAO"%>
<%@page import="manageMember.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<%
String section=request.getParameter("section");
String title=request.getParameter("title");
String content=request.getParameter("content");

NoticeVO nVO=new NoticeVO();
nVO.setSection(section);
nVO.setTitle(title);
nVO.setContent(content);

ManageNoticeDAO mnDAO=ManageNoticeDAO.getInstance();
boolean isUpdate=mnDAO.updateNotice(nVO);

if(isUpdate){
	response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageNotice/notice_List.jsp");
}else{
%>
	<h2>공지사항 수정 중 오류가 발생하였습니다.</h2>
<%		
}//end else
%>


</head>
<body>



</body>
</html>
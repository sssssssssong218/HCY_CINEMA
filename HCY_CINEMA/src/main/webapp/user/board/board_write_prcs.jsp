<%@page import="java.sql.SQLException"%>
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
//GET방식의 요청이라면 memberjoin_frm.jsp로 이동
String method=request.getMethod();
if("GET".equals(method)){
	session.setAttribute("msg", "비정상적인 접근이 확인되었습니다.");
	session.setAttribute("url", "http://localhost/HCY_CINEMA/user/board/board_write.jsp");
	response.sendRedirect("http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_err_msg.jsp");
	return;
}//end if


%>

<jsp:useBean id="bVO" class="board.BoardVO" scope="page"/>
<jsp:setProperty property="*" name="bVO"/>


<%
request.setCharacterEncoding("UTF-8");

MemberVO mVO = (MemberVO)session.getAttribute("mVO");

String id=mVO.getId();
//System.out.println(new String(request.getParameter("titleTxt").getBytes("8859_1"),"UTF-8"));
String title=new String(request.getParameter("titleTxt").getBytes("8859_1"),"UTF-8");
String content=new String(request.getParameter("txtContent").getBytes("8859_1"),"UTF-8");
BoardDAO bDAO=BoardDAO.getInstance();

bVO.setId(id);
bVO.setTitle(title);
bVO.setContent(content);
try{
bDAO.insertBoard(bVO);
session.setAttribute("msg", "성공적으로 글을 등록하였습니다!");
session.setAttribute("url", "http://localhost/HCY_CINEMA/user/board/board.jsp");
response.sendRedirect("http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_err_msg.jsp");
}catch(SQLException se){
	se.printStackTrace();
	session.setAttribute("msg", "예상치 못한 오류가 발생했습니다. 다시 시도해주세요!");
	session.setAttribute("url", "http://localhost/HCY_CINEMA/user/board/board.jsp");
	response.sendRedirect("http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_err_msg.jsp");
}//catch

%> 
</body>
</html>
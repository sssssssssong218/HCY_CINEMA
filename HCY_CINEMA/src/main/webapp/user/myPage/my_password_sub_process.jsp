<%@page import="encryption.Encryption"%>
<%@page import="java.sql.SQLException"%>
<%@page import="manageMember.MemberVO"%>
<%@page import="manageMember.EditMemberInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<link href="http://localhost/Jsp_prj/common/main/favicon.png" rel="icon">
<style>

</style>
<script type="text/javascript">
    $(function(){
<%
Encryption en = Encryption.getInstance();
MemberVO mVO = (MemberVO)session.getAttribute("mVO");
String id = mVO.getId();
String pass = en.directEncryption(request.getParameter("pass"));
try{
EditMemberInfoDAO.getInstance().updatePW(id, pass);
}catch(Exception se){
	se.printStackTrace();
	session.setAttribute("msg", "예상치 못한 오류가 발생했습니다. 다시 로그인해주세요");
	session.setAttribute("url", "http://localhost/HCY_CINEMA/user/login/logout.jsp");
	response.sendRedirect("http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_err_msg.jsp");
	return;
}//catch
session.setAttribute("msg", "비밀번호가 정상적으로 변경되었습니다. 다시 로그인해주세요!");
session.setAttribute("url", "http://localhost/HCY_CINEMA/user/login/logout.jsp");
%>
location.href="http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_err_msg.jsp"
        })
</script>
<head>
<meta charset="UTF-8">
</head>
<body>

</body>
</html>
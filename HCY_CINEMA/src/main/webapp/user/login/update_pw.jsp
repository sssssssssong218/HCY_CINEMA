<%@page import="encryption.Encryption"%>
<%@page import="manageMember.MemberVO"%>
<%@page import="manageMember.LoginDAO"%>
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
MemberVO mVO = new MemberVO();
String id = request.getParameter("id");
String pw = request.getParameter("pw");

mVO.setId(id);
mVO.setPassword(Encryption.getInstance().directEncryption(pw));

LoginDAO lDAO = LoginDAO.getInstance();
if(lDAO.updatePW(mVO)){
	response.sendRedirect("http://192.168.10.146/HCY_CINEMA/user/login/find_password_com.jsp?id= "+id);
		return;
}//if
%>
alert("예상하지 못한 문제가 발생했습니다.")
location.href="http://192.168.10.145/HCY_CINEMA/user/home/main.jsp"
        })
</script>
<head>
<meta charset="UTF-8">
</head>
<body>
</body>
</html>
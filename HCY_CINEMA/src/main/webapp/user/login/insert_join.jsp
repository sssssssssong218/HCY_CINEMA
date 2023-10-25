<%@page import="encryption.Encryption"%>
<%@page import="manageMember.MemberVO"%>
<%@page import="manageMember.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         <% request.setCharacterEncoding("UTF-8"); %>
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
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String birth = request.getParameter("birth");
String tel = request.getParameter("tel");
String email = request.getParameter("email");
Encryption enc = Encryption.getInstance();

mVO.setMname(enc.encryption(name));
mVO.setId(id);
mVO.setPassword(enc.directEncryption(pw));
mVO.setBirth(birth);
mVO.setTel(enc.encryption(tel));
mVO.setEmail(enc.encryption(email));

LoginDAO lDAO = LoginDAO.getInstance();
lDAO.insertJoinMember(mVO);
%>
location.href="http://localhost/HCY_CINEMA/user/login/join_member_com.jsp";
        })
</script>
<head>
<meta charset="UTF-8">
</head>
<body>
</body>
</html>
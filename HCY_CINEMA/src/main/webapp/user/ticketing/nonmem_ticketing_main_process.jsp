<%@page import="encryption.Encryption"%>
<%@page import="manageMember.MemberVO"%>
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

String tel = request.getParameter("txtMobile1")+"-"+request.getParameter("txtMobile2")+"-"+request.getParameter("txtMobile3"); 
Encryption en = Encryption.getInstance();
mVO.setBirth(request.getParameter("txtBirthday"));
mVO.setPassword(en.directEncryption(request.getParameter("txtPassword")));
mVO.setTel(en.encryption(tel));
mVO.setMname(en.encryption(request.getParameter("txtName")));
session.setAttribute("mVO", mVO);
session.setAttribute("nonMemLogin", true);
%>
location.href="http://localhost/HCY_CINEMA/user/ticketing/ticketing_main.jsp"
        })//ready
</script>
<head>
<meta charset="UTF-8">
</head>
<body>

</body>
</html>
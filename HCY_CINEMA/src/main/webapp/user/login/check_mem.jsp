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
String tel = request.getParameter("tel");
String email = request.getParameter("email");
Encryption enc = Encryption.getInstance();

mVO.setId(id);
mVO.setTel(enc.encryption(tel));
mVO.setEmail(enc.encryption(email));
System.out.println(id+"/"+enc.encryption(tel)+"/"+enc.encryption(email));
LoginDAO lDAO = LoginDAO.getInstance();
if(lDAO.selectFindPW(mVO)){
	response.sendRedirect("http://192.168.10.146/HCY_CINEMA/user/login/find_password_sub.jsp?id="+id);
		return;
}//if
%>
$("#id").val("<%=id %>")
$("#tel").val("<%=tel %>")
$("#email").val("<%=email %>")

$("#hidFrm").submit()
        })
</script>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="http://192.168.10.146/HCY_CINEMA/user/login/find_password.jsp?check=n" id="hidFrm" name ="hidFrm" method="post">
	<input type="hidden" id="id" name="id">
	<input type="hidden" id="tel" name="tel">
	<input type="hidden" id="email" name="email">
</form>
</body>
</html>
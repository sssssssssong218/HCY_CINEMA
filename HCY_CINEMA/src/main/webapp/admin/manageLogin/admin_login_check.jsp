<%@page import="AdiminLogin.AdminLoginDAO"%>
<%@page import="AdiminLogin.AdminVO"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon"
	href="http://192.168.10.147/jsp_prj/common/main/favicon.png">
<!-- bootStrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style>
</style>
<script type="text/javascript">
	$(function() {
<%
String id = request.getParameter("userName");
String pass = request.getParameter("userPassword");
String rememberId = request.getParameter("remember-check");

/* if (!rememberId) {
    Cookie ck=new Cookie("id",id);
	ck.setMaxAge(60*60*24*7);
	response.addCookie(ck);
}else{
	Cookie ck=new Cookie("id","");
	ck.setMaxAge(0);
	response.addCookie(ck);
} */


AdminVO aVO = AdminLoginDAO.getInstance().selectAdminLogin(id, pass);


if (aVO.getId()!=null) {
	if(aVO.getPassword().equals(pass)){
    response.sendRedirect("../manageDashBoard/manage_dashboard.jsp");
	} else{%>
		alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
	    window.location.href = "manage_login.jsp";
	<%}
} else { %>
  	alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
    window.location.href = "manage_login.jsp";
<% } %>
	});
	</script>
</head>
<body>
 
</body>
</html>
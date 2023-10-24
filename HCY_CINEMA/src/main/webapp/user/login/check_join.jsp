<%@page import="manageMember.LoginDAO"%>
<%@page import="encryption.Encryption"%>
<%@page import="manageMember.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<link href="http://localhost/Jsp_prj/common/main/favicon.png" rel="icon">
<style>
</style>
<script type="text/javascript">
	$(function() {
<%MemberVO mVO = new MemberVO();
String name = request.getParameter("name");
String birth = request.getParameter("birth");
String tel = request.getParameter("tel");
Encryption enc = Encryption.getInstance();

mVO.setMname(enc.encryption(name));
mVO.setBirth(birth);
mVO.setTel(enc.encryption(tel));
LoginDAO lDAO = LoginDAO.getInstance();
System.out.println(enc.encryption(name));
System.out.println(birth);
System.out.println(enc.encryption(tel));
%>
	$("#name").val("<%=name %>")
	$("#birth").val("<%=birth %>")
	$("#tel").val("<%=tel %>")

 	var flag=<%= lDAO.selectCheckMember(mVO) %>;
 	var url="join_member.jsp?check=n";
	if( !flag ){
		url="join_conditions.jsp";
	}//end if
	document.hidFrm.action="http://localhost/HCY_CINEMA/user/login/"+url;
	$("#hidFrm").submit()
})//ready
</script>
<head>
<meta charset="UTF-8">
</head>
<body>
	<form id="hidFrm" name="hidFrm" method="post">
		<input type="hidden" id="name" name="name">
		<input type="hidden" id="birth" name="birth">
		<input type="hidden" id="tel" name="tel">
	</form>
</body>
</html>
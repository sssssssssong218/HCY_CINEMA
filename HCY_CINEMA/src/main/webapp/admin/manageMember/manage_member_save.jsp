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

<%
String memberId=request.getParameter("memberId");
String newName=request.getParameter("newName");
String newBirth=request.getParameter("newBirth");
String newTel=request.getParameter("newTel");
String newEmail=request.getParameter("newEmail");


Encryption ec=Encryption.getInstance();

String EnName=ec.encryption(newName); 
String EnTel=ec.encryption(newTel);
String EnEmail=ec.encryption(newEmail);
MemberVO mVO=new MemberVO();

mVO.setId(memberId);
mVO.setMname(EnName); 
mVO.setTel(EnTel);
mVO.setBirth(newBirth);
mVO.setEmail(EnEmail);

ManageMemberDAO mmDAO=ManageMemberDAO.getInstance();
boolean isUpdate=mmDAO.updateMemberInfo(mVO);

if(isUpdate){
%>
	alert("회원정보가 수정되었습니다.");
<%	
	response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp");
}else{
%>
	alert("회원정보 수정중 오류가 발생하였습니다.");
<%		
}//end else
%>
</script>


</head>
<body>



</body>
</html>
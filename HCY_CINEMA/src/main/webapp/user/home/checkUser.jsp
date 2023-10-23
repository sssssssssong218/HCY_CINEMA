<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="kr.co.sist.util.cipher.DataDecrypt"%>
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


        <%
         session.setAttribute("login", false);
         
         
         String id= request.getParameter("id");
         String pass= request.getParameter("password");
         if(id == null || pass == null){
        	 response.sendRedirect("http://192.168.10.145/HCY_CINEMA/common/images/police.jpg");
        	 return;
        }
         
         MemberVO mVO = new MemberVO();
         
   		 DataEncrypt de = new DataEncrypt("1120020301311126");
   		 
         mVO.setId(id);
         mVO.setPassword(de.encryption(pass));
         
         mVO = LoginDAO.getInstance().selectLogin(mVO);
         
         if(mVO == null){
        	 
        	 %> 
        	 <script type="text/javascript">
        	    $(function(){
        		 location.href = "<%=request.getParameter("returnURL") %>?msgFlag=true";
                })
        	 </script>        	 
			<% 
        	 return;
         }//if
         	session.setAttribute("login", true);
        	response.sendRedirect("http://192.168.10.145/HCY_CINEMA/user/home/main.jsp");
 		 %>
        
<head>
<meta charset="UTF-8">
</head>
<body>

</body>
</html>
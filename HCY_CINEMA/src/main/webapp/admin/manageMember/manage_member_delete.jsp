<%@page import="manageMember.ManageMemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page info="회원정보 탈퇴" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
    <title>탈퇴 결과</title>
    
</head>
<body>
<% 
    String memberId = request.getParameter("memberId");

	ManageMemberDAO mmDAO=ManageMemberDAO.getInstance();
	boolean isDelete=mmDAO.updateMemberStatus(memberId);

    if (isDelete) {
	response.sendRedirect("http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp");
    } else {
%>
        <h2>회원정보 탈퇴 중 오류가 발생했습니다.</h2>
<%
    }//end else
%>
</body>
</html>
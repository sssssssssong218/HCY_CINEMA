<%@page import="ticketing.NonMemberTicketingDAO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="ticketing.PaymentVO"%>
<%@page import="ticketing.TicketingDAO"%>
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
PaymentVO pVO = new PaymentVO();

pVO.setScheduleNum(request.getParameter("scheduleNum"));
pVO.setId(request.getParameter("id"));
pVO.setTel(request.getParameter("tel"));
pVO.setMovieCode(request.getParameter("movieCode"));
pVO.setScreenNum(request.getParameter("screenNum"));
pVO.setPplcount(Integer.parseInt(request.getParameter("pplCount")));
pVO.setPayment(request.getParameter("payment"));
pVO.setSeat(request.getParameter("seatNum"));
pVO.setPass(request.getParameter("pass"));
pVO.setName(request.getParameter("name"));
pVO.setBirth(request.getParameter("birth"));
    try{
    	if(session.getAttribute("nonMemLogin")!= null && (boolean)session.getAttribute("nonMemLogin")){
    		NonMemberTicketingDAO.getInstance().insertNonmemberPayment(pVO);
    	}else{
		TicketingDAO.getInstance().insertMemberPayment(pVO);
    	}//else
    }catch(SQLException se){
	   	se.printStackTrace();
	   	session.setAttribute("msg","비정상적인 접근이 확인되었습니다.<br>다시 시도해주세요!" );
	   	session.setAttribute("url","http://localhost/HCY_CINEMA/user/ticketing/ticketing_main.jsp" );
	   	response.sendRedirect("http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_err_msg.jsp");
    }//catch
    if(session.getAttribute("nonMemLogin")!= null && (boolean)session.getAttribute("nonMemLogin")){
    	session.setAttribute("nonMemLogin",false);
    }//if
%>
    alert("예매가 성공적으로 이루어졌습니다.")
    window.parent.location.href="http://localhost/HCY_CINEMA/user/home/main.jsp";
        })
</script>
<head>
<meta charset="UTF-8">
</head>
<body>

</body>
</html>
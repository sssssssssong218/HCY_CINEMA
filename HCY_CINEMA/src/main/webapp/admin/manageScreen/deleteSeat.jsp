<%@page import="java.sql.SQLException"%>
<%@page import="screen.ManageScreenDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(function(){
	

<%
String ticketnum=request.getParameter("ticketnum");
//System.out.print(ticketnum);
ManageScreenDAO msDAO=ManageScreenDAO.getInstance();
try{
msDAO.deleteSeat(ticketnum);
}catch(SQLException se){
   	session.setAttribute("msg","오류발생!!" );
   	session.setAttribute("url","http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen.jsp" );
   	response.sendRedirect("http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_err_msg.jsp");
}
msDAO.updateSeat(ticketnum);
session.setAttribute("msg","2명이상인경우 다시예매를 진행해주시기 바랍니다." );
session.setAttribute("url","http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen.jsp" );
response.sendRedirect("http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_err_msg.jsp");
%>
});
</script>
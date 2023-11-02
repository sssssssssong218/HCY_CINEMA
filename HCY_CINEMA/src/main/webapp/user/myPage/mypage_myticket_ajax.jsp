<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.SQLException"%>
<%@page import="myTicket.MyTicketDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
JSONObject json = new JSONObject();
int tNum= Integer.parseInt(request.getParameter("tNum"));
try{
MyTicketDAO.getInstance().updateCancelTicket(tNum);
json.put("isCancel",true);
}catch(SQLException se){
json.put("isCancel",false);
}finally{
	out.print(json.toJSONString());
}//finally
%>
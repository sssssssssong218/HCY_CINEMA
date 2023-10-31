<%@page import="java.util.Enumeration"%>
<%@page import="org.apache.taglibs.standard.lang.jstl.EnumeratedMap"%>
<%@page import="java.util.List"%>
<%@page import="ticketing.TicketingDAO"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%
	String sdCode = (String)request.getParameter("scheduleCode");
	
	List<String> list = TicketingDAO.getInstance().selectSeat(sdCode);
	JSONObject json = null;
	JSONArray jsonArr = new JSONArray();
	for(int i =0;i<list.size();i++){
		json = new JSONObject();
		json.put("data",list.get(i));
		jsonArr.add(json);
	}//for
	%>
	<%=jsonArr.toJSONString() %>
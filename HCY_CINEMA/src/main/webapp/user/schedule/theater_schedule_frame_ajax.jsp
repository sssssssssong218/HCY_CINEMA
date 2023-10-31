<%@page import="org.json.simple.JSONObject"%>
<%@page import="theater.MovieVO"%>
<%@page import="java.util.List"%>
<%@page import="theater.TheaterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
List<MovieVO> movieList = TheaterDAO.getInstance().selectTheaterSchedule(request.getParameter("date"));

JSONObject json = new JSONObject();

json.put("list", movieList);
%><%=json.toJSONString()%>
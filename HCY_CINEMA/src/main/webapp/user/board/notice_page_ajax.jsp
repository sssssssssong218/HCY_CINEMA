<%@page import="org.json.simple.JSONObject"%>
<%@page import="board.BoardUtil"%>
<%@page import="board.BoardUtilVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
System.out.println("c : "+ request.getParameter("current") + "t : "+request.getParameter("total"));
int currentPage = Integer.parseInt(request.getParameter("current"));
int totalPage = Integer.parseInt(request.getParameter("total"));
BoardUtilVO buVO=new BoardUtilVO("http://localhost/HCY_CINEMA/user/board/notice.jsp", "", "", "", currentPage, totalPage );

out.println(BoardUtil.getInstance().pageNation(buVO));
%>
<%@page import="board.NoticeVO"%>
<%@page import="board.NoticeDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8");
String key = request.getParameter("search");

List<NoticeVO> list = NoticeDAO.getInstance().selectSpecificNotice(key);

JSONArray jsonArray = new JSONArray(); // JSONArray 생성

    JSONObject jsonObject = null; // JSONObject 생성
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
for (NoticeVO nVO : list) {
	jsonObject = new JSONObject();
    jsonObject.put("section", nVO.getSection());
    jsonObject.put("title", nVO.getTitle());
    jsonObject.put("noticeNum", nVO.getNoticeNum());
    jsonObject.put("inputDate", sdf.format(nVO.getInputDate()));
    jsonObject.put("viewCnt", nVO.getViewCnt());

    jsonArray.add(jsonObject);
}//for
    //System.out.println("ajax : "+jsonArray.toJSONString());
%><%=jsonArray.toJSONString()%>
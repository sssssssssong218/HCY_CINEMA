<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="board.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%request.setCharacterEncoding("UTF-8");
String key = request.getParameter("search");

List<BoardVO> list = BoardDAO.getInstance().selectSpecificBoard(key);

JSONArray jsonArray = new JSONArray(); // JSONArray 생성

    JSONObject jsonObject = null; // JSONObject 생성
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
for (BoardVO board : list) {
	jsonObject = new JSONObject();
    jsonObject.put("id", board.getId());
    jsonObject.put("title", board.getTitle());
    jsonObject.put("postNum", board.getPostNum());
    jsonObject.put("inputDate", sdf.format(board.getInputDate()));
    jsonObject.put("viewCount", board.getViewCount());

    jsonArray.add(jsonObject);
}//for
    System.out.println("ajax : "+jsonArray.toJSONString());
%><%=jsonArray.toJSONString()%>
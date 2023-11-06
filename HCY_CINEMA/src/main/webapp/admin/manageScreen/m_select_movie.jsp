<%@page import="screen.MovieVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="screen.ChooseScheduleVO"%>
<%@page import="screen.ScheduleVO"%>
<%@page import="java.util.List"%>
<%@page import="screen.ManageScreenDAO"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <% 
    response.setCharacterEncoding("UTF-8");
JSONObject jsonObj=new JSONObject();
JSONArray jsonArray = new JSONArray();
JSONObject movieJson = null;
try {
    int screenNum = Integer.parseInt(request.getParameter("screenNum"));
    int year = Integer.parseInt(request.getParameter("year"));
    int month = Integer.parseInt(request.getParameter("month"));
    int day = Integer.parseInt(request.getParameter("day"));

    Calendar showtime = Calendar.getInstance();
    showtime.set(Calendar.YEAR, year);
    showtime.set(Calendar.MONTH, month - 1); 
    showtime.set(Calendar.DAY_OF_MONTH, day);
    
    Date selectedDate = new Date(showtime.getTimeInMillis());
    
    
    ManageScreenDAO msDAO = ManageScreenDAO.getInstance();
    List<MovieVO> list=msDAO.selectMovie(selectedDate);
    
    for(MovieVO mVO : list){
    	movieJson=new JSONObject();
    	movieJson.put("moviecode",mVO.getMovieCode());
    	movieJson.put("mname",mVO.getmName());
    	movieJson.put("plot",mVO.getPlot());
    	
    	jsonArray.add(movieJson);
    }
    jsonObj.put("data",jsonArray);
    /* System.out.println(jsonObj); */
    // JSON 배열
  
} catch (Exception e) {
    e.printStackTrace();
}//end catch

%>
  <%= jsonObj.toJSONString() %> 
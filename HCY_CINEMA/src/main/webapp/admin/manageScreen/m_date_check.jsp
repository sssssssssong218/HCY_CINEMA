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
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
    response.setCharacterEncoding("UTF-8");
JSONObject jsonObj=new JSONObject();
JSONArray jsonArray = new JSONArray();
JSONObject scheduleJson = null;
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
    ChooseScheduleVO csVO = new ChooseScheduleVO();
    csVO.setScreenNum(screenNum);
    csVO.setShowtime(new java.sql.Date(showtime.getTime().getTime()));//date로 변환

    System.out.println("선택한 날짜"+selectedDate+" ");
    System.out.println(screenNum+"관");
    
    List<ScheduleVO> list = msDAO.selectMovieSchedule(csVO);
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
      System.out.println(list); 
    // JSON 배열
  
    for (ScheduleVO sVO : list) {
    	scheduleJson=new JSONObject();
        scheduleJson.put("movieCode", sVO.getMovieCode());
        scheduleJson.put("showtime", sVO.getShowtime());
        scheduleJson.put("mname", sVO.getMname());
   	 	jsonArray.add(scheduleJson);
    }//end for
     jsonObj.put("data",jsonArray);
    /*  response.getWriter().write(jsonArray.toJSONString());  */
} catch (Exception e) {
    e.printStackTrace();
}//end catch

%>
 <%= jsonObj.toJSONString() %> 


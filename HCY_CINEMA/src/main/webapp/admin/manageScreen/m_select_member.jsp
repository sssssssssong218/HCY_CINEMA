<%@page import="screen.ScheduleNumVO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="screen.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="screen.ManageScreenDAO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
response.setCharacterEncoding("UTF-8");
JSONObject jsonObj=new JSONObject();
JSONArray jsonArray = new JSONArray();
JSONObject scheduleJson = null;
try {
   ManageScreenDAO msDAO = ManageScreenDAO.getInstance();
   int year = Integer.parseInt(request.getParameter("year"));
   int month = Integer.parseInt(request.getParameter("month"));
   int day = Integer.parseInt(request.getParameter("day"));

	int time=0;
    if("1".equals(request.getParameter("btnid"))){
    	time=10;
    }
    if("2".equals(request.getParameter("btnid"))){
    	time=13;
    }
    if("3".equals(request.getParameter("btnid"))){
    	time=16;
    }
    if("4".equals(request.getParameter("btnid"))){
    	time=19;
    }
    if("5".equals(request.getParameter("btnid"))){
    	time=22;
    }
    int min=0;
    
   
   String movieCode=request.getParameter("movieCode");
   
   Calendar showtime = Calendar.getInstance();
   showtime.set(Calendar.YEAR, year);
   showtime.set(Calendar.MONTH, month - 1); 
   showtime.set(Calendar.DAY_OF_MONTH, day);
   showtime.set(Calendar.HOUR_OF_DAY, time);
   showtime.set(Calendar.MINUTE, min);
   
   Date selectedDate = new Date(showtime.getTimeInMillis());
   
   ScheduleNumVO snVO=new ScheduleNumVO();

   snVO.setDate(selectedDate);
   snVO.setMoviecode(movieCode);
   snVO.setScreennum(request.getParameter("screenNum"));
   
   String schedulenum=msDAO.selectSchedule(snVO);
   List<MemberVO> list = msDAO.selectMember(schedulenum);
   // JSON 배열
 
   for (MemberVO sVO : list) {
   	scheduleJson=new JSONObject();
       scheduleJson.put("id", sVO.getId());
       scheduleJson.put("tel", sVO.getTel());
       scheduleJson.put("seatnum", sVO.getScreenNum());
       scheduleJson.put("status", sVO.getStatus());
  	 	jsonArray.add(scheduleJson);
   }//end for
    jsonObj.put("data",jsonArray);
   /*  response.getWriter().write(jsonArray.toJSONString());  */
} catch (Exception e) {
   e.printStackTrace();
}//end catch
%>
<%= jsonObj.toJSONString() %>
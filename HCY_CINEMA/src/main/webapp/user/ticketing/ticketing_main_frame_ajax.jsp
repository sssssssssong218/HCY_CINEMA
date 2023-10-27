<%@page import="java.text.SimpleDateFormat"%>
<%@page import="ticketing.ScheduleVO"%>
<%@page import="ticketing.ScreenVO"%>
<%@page import="java.util.List"%>
<%@page import="ticketing.DailyScheduleVO"%>
<%@page import="ticketing.TicketingDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbConnection.DBConnection"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//{"movie":$("#movie").val(),"screen":$("#screen").val(),"date":$("#date").val()};

JSONArray resultArr = new JSONArray();
JSONObject screenObj = null;
JSONArray scheduleArr = null;
JSONObject scheduleObj = null;

TicketingDAO tDAO = TicketingDAO.getInstance();

DailyScheduleVO dsVO  = new DailyScheduleVO();
dsVO.setMovieCode(request.getParameter("movie"));
dsVO.setScheduleDate(request.getParameter("date"));
dsVO.setScreenType(request.getParameter("screenType"));

List<ScreenVO> list = tDAO.selectSchedule(dsVO);

String tempH = "";
String tempM = "";

for(ScreenVO sVO : list){
	screenObj = new JSONObject();
	screenObj.put("screenCode", sVO.getScreenNum());
	screenObj.put("movieCode", sVO.getMoviecode());
	screenObj.put("mname", sVO.getMname());
	screenObj.put("screenCat", sVO.getTypeName());
	screenObj.put("screenName", sVO.getScreenName());

	scheduleArr = new JSONArray();
	boolean zozo = false;
	for(ScheduleVO sdVO : sVO.getScdVO()){
		tempH =  sdVO.getShowtime().trim().split(":")[0];
		tempM =  sdVO.getShowtime().trim().split(":")[1];
		tempH = Integer.toString(Integer.parseInt(tempM)+(Integer.parseInt(sdVO.getRunningrime().trim()))/60);
		tempM = Integer.toString(Integer.parseInt(tempM)+(Integer.parseInt(sdVO.getRunningrime().trim()))%60);
		if(Integer.parseInt(tempM)>59){
			tempM = Integer.toString(Integer.parseInt(tempM)-60);
			tempH = Integer.toString(Integer.parseInt(tempM)+1);
		}//if
		tempH += ":"+tempM;
		
		scheduleObj = new JSONObject();
		int remain = 169-sdVO.getTicketedSeat();
		scheduleObj.put("scheduleCode", sdVO.getScheduleNum());
		scheduleObj.put("time", sdVO.getShowtime());
		scheduleObj.put("endtime", tempH);
		scheduleObj.put("remain", remain);
		scheduleObj.put("flag", remain>0?true:false);
		scheduleArr.add(scheduleObj);
	}//for
	screenObj.put("screenArr", scheduleArr);
	resultArr.add(screenObj);
}//for
%><%=resultArr.toJSONString()%>
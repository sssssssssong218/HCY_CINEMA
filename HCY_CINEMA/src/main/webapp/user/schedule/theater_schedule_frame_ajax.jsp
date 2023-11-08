<%@page import="theater.ScheduleVO"%>
<%@page import="theater.ScreenVO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="theater.MovieVO"%>
<%@page import="java.util.List"%>
<%@page import="theater.TheaterDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<MovieVO> movieList = TheaterDAO.getInstance().selectTheaterSchedule(request.getParameter("date"));

JSONArray jsonArray = new JSONArray(); // JSON 배열을 생성합니다.

for (MovieVO movie : movieList) {
    JSONObject movieObject = new JSONObject();
    movieObject.put("moviecode", movie.getMoviecode());
    movieObject.put("mname", movie.getMname());
    movieObject.put("runningTime", movie.getRunningTime().trim());
    movieObject.put("releseDate", movie.getReleseDate().toString());
    movieObject.put("movieRating", movie.getMovieRating());

    JSONArray sVOList = new JSONArray();
    for (ScreenVO screen : movie.getsVO()) {
        JSONObject sVOObject = new JSONObject();
        sVOObject.put("screenName", screen.getScreenName());
        sVOObject.put("typeName", screen.getTypeName());
        sVOObject.put("screenNum", screen.getScreenNum());

        JSONArray scdVOList = new JSONArray();
        for (ScheduleVO schedule : screen.getScdVO()) {
            JSONObject scdVOObject = new JSONObject();
            scdVOObject.put("scheduleNum", schedule.getScheduleNum());
            scdVOObject.put("ticketedSeat", schedule.getTicketedSeat());
            scdVOObject.put("showtime", schedule.getShowtime());
            scdVOList.add(scdVOObject);
        }//for
        sVOObject.put("scdVO", scdVOList);
        sVOList.add(sVOObject);
    }//for

    movieObject.put("sVO", sVOList);
    jsonArray.add(movieObject);
}//for

JSONObject result = new JSONObject();
result.put("list", jsonArray);

//System.out.println(result.toJSONString());
%>
<%= result.toJSONString() %>
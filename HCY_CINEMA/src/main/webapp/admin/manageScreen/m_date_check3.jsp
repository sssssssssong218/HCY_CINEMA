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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.140/jsp_prj/common/main/favicon.png">
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
   
});//ready
</script>

</head>
<body>
<%
    response.setCharacterEncoding("UTF-8");
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

     /* System.out.println(list); */
    // JSON 배열
    JSONObject jsonObj=new JSONObject();
    JSONArray jsonArray = new JSONArray();
    JSONObject scheduleJson = new JSONObject();
    for (ScheduleVO sVO : list) {
        scheduleJson.put("movieCode", sVO.getMovieCode());
        scheduleJson.put("showtime", sVO.getShowtime());
        scheduleJson.put("mname", sVO.getMname());
        jsonArray.add(scheduleJson);
    }//end for
    System.out.println(jsonArray);
    jsonObj.put("data",jsonArray);
     response.getWriter().write(jsonArray.toJSONString()); 
} catch (Exception e) {
    e.printStackTrace();
}//end catch

%>
</body>
</html>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="movie.MainTrailerVO"%>
<%@page import="movie.MovieInfoVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="movie.ManageMovieVO"%>
<%@page import="movie.DetailMovieDAO"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<!doctype html>
<html lang="en"><!--<![endif]--><head>
<meta charset="utf-8">
<title>Source Admin | Dashboard v2</title>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta content="" name="description">
<meta content="" name="author">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet"> 
<link href="../CSS/css" rel="stylesheet" id="fontFamilySrc">
<link href="../CSS/jquery-ui.min.css" rel="stylesheet">
<link href="../CSS/bootstrap.min.css" rel="stylesheet">
<link href="../CSS/all.css" rel="stylesheet">
<link href="../CSS/animate.min.css" rel="stylesheet">
<link href="../CSS/style.min.css" rel="stylesheet">

<link href="../CSS/bootstrap_calendar.css" rel="stylesheet">
<link href="../CSS/jquery.gritter.css" rel="stylesheet">
<link href="../CSS/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="../CSS/responsive.bootstrap.min.css" rel="stylesheet">
    


<!-- <script src="pace.min.js" type="text/javascript"></script> -->

<!--[if lt IE 9]>
	    <script src="../assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	
	<script type="text/javascript">
 function logout(){
	location.replace("http://localhost/HCY_CINEMA/admin/manageLogin/manage_login.jsp");
}
 if (performance.navigation.type == 2) {
     // 페이지가 뒤로가기로 로드된 경우
     location.reload();
 }
<%
if(session.getAttribute("userName")==null||"".equals(session.getAttribute("userName"))){%>
location.replace("http://localhost/HCY_CINEMA/admin/manageLogin/manage_login.jsp");
<%}
%>

</script>
<style type="text/css">/* Chart.js */
@
-webkit-keyframes chartjs-render-animation {
	from {opacity: 0.99
}

to {
	opacity: 1
}

}
@
keyframes chartjs-render-animation {
	from {opacity: 0.99
}

to {
	opacity: 1
}

}
.chartjs-render-monitor {
	-webkit-animation: chartjs-render-animation 0.001s;
	animation: chartjs-render-animation 0.001s;
}
</style>
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
.carousel-item {
    margin-right: 0;
  }
</style>

</head>
<body class="  pace-done" cz-shortcut-listen="true">
	<div class="pace  pace-inactive">
		<div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
			<div class="pace-progress-inner"></div>
		</div>
		<div class="pace-activity"></div>
	</div>

	<div id="page-loader" class="page-loader fade in hide">
		<span class="spinner">Loading...</span>
	</div>


	<div id="page-container" class="fade page-container page-header-fixed page-sidebar-fixed page-with-two-sidebar page-with-footer show">

		<div id="header" class="header navbar navbar-default navbar-fixed-top">

			<div class="container-fluid">

				<div class="navbar-header">
					<a href="../ManageDashBoard/manage_dashboard.jsp"
						class="navbar-brand" style="line-height: 0px"><img
						src="../../common/images/admin_logo.png" style="position:absolute;bottom:0px"></a>
					<button type="button" class="navbar-toggle"
						data-click="sidebar-toggled">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
			</div>

		</div>


		<div id="sidebar" class="sidebar">

			<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
				<div data-scrollbar="true" data-height="100%" data-init="true" style="overflow: hidden; width: auto; height: 100%;">

					<ul class="nav">
						<li class="nav-user">
							<div class="image">
								<img src="../../common/images/admin.png" alt="">
							</div>
							<div class="info">
<div class="name dropdown">
<a href="javascript:;" data-toggle="dropdown"><%= session.getAttribute("userName") %> </a>
	<a href="#"onclick="logout();">Log Out</a>
</div>
</div>
						</li>
						<li class="has-sub"><a
							href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp"> <img
								class="fa fa-home" src="../../common/images/dashboard2.png">
								<span>Dashboard <!-- <span class="label label-theme m-l-3">NEW</span> --></span>
						</a> <!-- <ul class="sub-menu">
<li><a href="index.html">Dashboard v1</a></li>
<li><a href="index_v2.html">Dashboard v2</a></li>
<li class="active"><a href="index_v3.html">Dashboard v3</a></li>
<li><a href="index_v4.html">Dashboard v4 <i class="fa fa-paper-plane text-theme m-l-3"></i></a></li>
</ul> --></li>
						<!-- <li>
<a href="bootstrap_4.html">
<div class="icon-img"><img src="../assets/img/bootstrap-4.png" alt=""></div>
<span>Bootstrap 4</span>
</a>
</li> -->
						<li class="active has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp">
								<img class="fa fa-inbox"
								src="../../common/images/movie_icon.png"> <span>영화</span>
						</a>
							
						<li><a href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen.jsp"> <img class="fa fa-gem"
								src="../../common/images/cinema_icon.png"> <span>상영관</span>
						</a></li>
						<li class="has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp"> <img
								class="fa fa-suitcase" src="../../common/images/member_icon.png">
								<span>회원관리</span>
						</a></li>
						<li class="has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageBoard/freeboard_list.jsp"> <img
								class="fa fa-file" src="../../common/images/board_icon.png">
								<span>게시판 관리</span>
						</a></li>
						<li class=" has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageBoard/notice_list.jsp"> <img class="fa fa-file" src="../../common/images/notice_icon.png">
                                <span>공지사항 관리</span>
                            </a></li>
				</ul></div>
				<div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 197.948px;"></div>
				<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>

		</div>
		
		
		<div id="content" class="content">

<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp">Home</a></li>
				<li class="breadcrumb-item"><a href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp">영화</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">영화 상세</a></li>
			</ol>
<%
String movieCode=request.getParameter("movieCode");
DetailMovieDAO dmDAO=DetailMovieDAO.getInstance();
ManageMovieVO mmVO=dmDAO.selectSpecificMovieInfo(movieCode);
Calendar calDB=Calendar.getInstance();
calDB.setTime(mmVO.getReleaseDate());
int releaseyear=calDB.get(Calendar.YEAR);
int releasemonth=calDB.get(Calendar.MONTH)+1;
int releasedate=calDB.get(Calendar.DAY_OF_MONTH);
calDB.setTime(mmVO.getEndDate());
int endyear=calDB.get(Calendar.YEAR);
int endmonth=calDB.get(Calendar.MONTH)+1;
int enddate=calDB.get(Calendar.DAY_OF_MONTH);
List<String> list=new ArrayList<String>();
List<String> stillImgList=dmDAO.selectStill(movieCode);
%>

<h1 class="page-header">영화 추가</h1>

<form class="form-horizontal" accept-charset="UTF-8" action="modify_movie.jsp?movieCode=<%= movieCode %>&stillSize=<%= stillImgList.size() %>" method="post" enctype="multipart/form-data" id="movie_info_all_frm">
<div class="section-container section-with-top-border p-b-10">

<div class="row">

<div class="col-lg-6">
<h5 class="m-t-0">영화 정보</h5>
<p>
영화에 대한 정보를 입력해주세요.
</p>
<div class="form-group m-b-10">
<label class="col-lg-3 col-form-label">제목</label>
<div class="col-lg-7">
<input type="text" class="form-control" id="movie_name" name="movie_name" value="<%=mmVO.getMname()%>">
</div>
</div>
<div class="form-group m-b-10" id="actor_title">
<label class="col-lg-3 col-form-label actor_label">주연</label>
<div class="col-lg-7 actor_div">
<%
List<String> actorList=new ArrayList<String>();
actorList=dmDAO.selectActor(movieCode);
if(actorList.size()>0){
for(int i=0;i<actorList.size();i++){
%>
<input type="text" class="form-control actor_input" value="<%= actorList.get(i) %>" id="actor_<%=i %>" name="actor_<%=i %>">
<%}
}else{%>
<input type="text" class="form-control actor_input" placeholder="주연" id="actor_0" name="actor_0">

<%}%>
</div>
<input type="hidden" name="actor_hide" id="actor_hide">
<input type="button" value="추가" id="actor_btn" class="insertBtn"  style="height:35px">
</div>
<div class="form-group m-b-10" id="extra_title">
<label class="col-lg-3 col-form-label extra_label">조연</label>
<div class="col-lg-7 extra_div">
<%
List<String> extraList=new ArrayList<String>();
extraList=dmDAO.selectExtra(movieCode);
//System.out.println(extraList);
if(extraList.size()>0){
for(int i=0;i<extraList.size();i++){
%>
<input type="text" class="form-control extra_input" value="<%= extraList.get(i) %>" id="extra_<%= i %>" name="extra_<%=i%>">
<%} 
}else{%>
<input type="text" class="form-control actor_input" placeholder="조연" id="extra_0" name="extra_0">
<%} %>
</div>
<input type="hidden" name="extra_hide" id="extra_hide">
<input type="button" value="추가" id="extra_btn" class="insertBtn" style="height:35px">
</div>
<div class="form-group m-b-10" id="director_title">

<label class="col-lg-3 col-form-label director_label">감독</label>

<div class="col-lg-7 director_div">
<%
List<String> directorList=new ArrayList<String>();
directorList=dmDAO.selectDirector(movieCode);
if(directorList.size()>0){
for(int i=0;i<directorList.size();i++){
%>
<input class="form-control director_input" type="text" value="<%= directorList.get(i) %>" id="director_<%=i %>" name="director_<%=i%>">
<%}
}else{%>
<input type="text" class="form-control actor_input" placeholder="감독" id="director_0" name="director_0">
<%} %>
</div>
<input type="hidden" name="director_hide" id="director_hide">
<input type="button" value="추가" id="director_btn" class="insertBtn" style="height:35px">
</div>

<div class="form-group m-b-10" id="genre_title">
<label class="col-lg-3 col-form-label genre_label">장르</label>
<div class="col-lg-7 genre_div">
<%
List<String> genreList=new ArrayList<String>();
genreList=dmDAO.selectGenre(movieCode);
if(genreList.size()>0){
for(int i=0;i<genreList.size();i++){
%>
<select class="form-control genre_select" id="genre_select_<%= i %>" name="genre_select_<%=i%>">
<option value="코미디" <%= "코미디".equals(genreList.get(i)) ? "selected='selected'":"" %>>코미디</option>
<option value="스릴러" <%= "스릴러".equals(genreList.get(i)) ? "selected='selected'":"" %>>스릴러</option>
<option value="공포" <%= "공포".equals(genreList.get(i)) ? "selected='selected'":"" %>>공포</option>
<option value="로맨스" <%= "로맨스".equals(genreList.get(i)) ? "selected='selected'":"" %>>로맨스</option>
<option value="드라마" <%= "드라마".equals(genreList.get(i)) ? "selected='selected'":"" %>>드라마</option>
<option value="액션" <%= "액션".equals(genreList.get(i)) ? "selected='selected'":"" %>>액션</option>
<option value="SF" <%= "SF".equals(genreList.get(i)) ? "selected='selected'":"" %>>SF</option>
<option value="애니메이션" <%= "애니메이션".equals(genreList.get(i)) ? "selected='selected'":"" %>>애니메이션</option>
</select>
<%} 
}else{%>
<select class="form-control genre_select" id="genre_select_0" name="genre_select_0">
<option value="코미디">코미디</option>
<option value="스릴러">스릴러</option>
<option value="공포">공포</option>
<option value="로맨스">로맨스</option>
<option value="드라마">드라마</option>
<option value="액션">액션</option>
<option value="SF">SF</option>
<option value="애니메이션">애니매이션</option>
</select>
<%} %>
</div>
<input type="hidden" name="genre_hide" id="genre_hide">
<input type="button" value="추가" id="genre_btn" class="insertBtn" style="height:35px">
</div>
<div class="form-group m-b-10" id="director_title">
<label class="col-lg-3 col-form-label">상영시간(분)</label>
<div class="col-lg-7">
<input class="form-control" type="text" value="<%= mmVO.getRunningtime() %>" id="runningtime" name="runningtime">
</div>
</div>
<div class="form-group m-b-10">
<label class="col-lg-3 col-form-label">국가</label>
<div class="col-lg-7">
<input type="radio" name="country" id="domestic" value="d" checked="checked">국내
<input type="radio" name="country" id="foreign" value="O">외국
</div>
</div>
<div class="form-group m-b-10">
<label class="col-lg-3 col-form-label">상영상테</label>
<div class="col-lg-7">
<input type="radio" name="status" id="ing" value="Y" <%= "Y".equals(mmVO.getStatus()) ? "checked='checked'":""%>>상영중
<input type="radio" name="status" id="ending" value="N" <%= "N".equals(mmVO.getStatus()) ? "checked='checked'":""%>>종영
<input type="radio" name="status" id="willing" value="W" <%= "W".equals(mmVO.getStatus()) ? "checked='checked'":""%>>상영예정
</div>
</div>
<div class="form-group" style="height:200px">
<label class="col-lg-3 col-form-label">상세정보</label>
<div class="col-lg-7">
<textarea  class="form-control" rows="3" placeholder="상세내용" style="height:150px" id="movie_info" name="movie_info"><%= mmVO.getPlot() %></textarea>
</div>
<div class="checkbox disabled m-b-25">
<h4>개봉기간 설정</h4>
<select style="width:100px; height:30px; text-align:center; font-size: 20px;" id="year" name="year">

<%
Calendar cal=Calendar.getInstance();
int nowYear=cal.get(Calendar.YEAR)-1;
for(int i=nowYear;i<nowYear+3;i++){
%>
<option value="<%= i %>"<%=  i==releasedate ? "selected='selected'":""%> ><%=i%></option>
<%} %>

</select>
<label style="padding:0px; font-size:20px;">/</label>
<select style="width: 60px; height: 30px; text-align: center; font-size: 20px;" id="month" name="month" onchange="updateDays()">
<%
int nowMonth = cal.get(Calendar.MONTH) + 1;
for(int i = 1; i < 13; i++) {
%>
<option value="<%= i %>"<%= i == releasemonth ? "selected='selected'" : "" %>><%= i %></option>
<%
} %>
</select>
<label style="padding: 0px; font-size: 20px;">/</label>
<select style="width: 60px; height: 30px; text-align: center; font-size: 20px;" id="date" name="date">
</select>
<script type="text/javascript">
function updateDays() {
    var monthSelect = document.getElementById("month");
    var dateSelect = document.getElementById("date");
    var selectedMonth = monthSelect.value;
    
    var year = new Date().getFullYear(); // 현재 연도를 가져옴
    var daysInMonth = new Date(year, selectedMonth, 0).getDate();
    
    dateSelect.innerHTML = ""; // 일자 콤보박스 초기화
    
    for (var i = 1; i <= daysInMonth; i++) {
        var option = document.createElement("option");
        option.value = i;
        option.text = i;
        dateSelect.appendChild(option);
    }
}
// 페이지가 로드될 때 초기화
updateDays();
//기본 선택을 오늘 날짜로 설정
var today = new Date();
document.getElementById("month").value = <%=releasemonth%>; // 월은 0부터 시작하므로 +1
document.getElementById("date").value = <%=releasedate%>;
</script>
<label style="padding:0px; font-size:20px;">~</label>
<select style="width:100px; height:30px; text-align:center; font-size: 20px;" id="nextyear" name="nextyear">

<%
cal=Calendar.getInstance();
int nextYear=cal.get(Calendar.YEAR);
for(int i=nowYear;i<nowYear+3;i++){
%>
<option value="<%= i %>"<%=  i==endyear ? "selected='selected'":""%> ><%=i%></option>
<%} %>

</select>
<label style="padding:0px; font-size:20px;">/</label>
<select style="width: 60px; height: 30px; text-align: center; font-size: 20px;" id="nextmonth" name="nextmonth"onchange="updateDays()">
<%
int nextMonth = cal.get(Calendar.MONTH) + 1;
for(int i = 1; i < 13; i++) {
%>
<option value="<%= i %>"<%= i == endmonth ? "selected='selected'" : "" %>><%= i %></option>
<%
} %>
</select>
<label style="padding:0px; font-size:20px;">/</label>
<select style="width: 60px; height: 30px; text-align: center; font-size: 20px;" id="nextdate" name="nextdate">
</select>
<script type="text/javascript">
function updateDays() {
    var monthSelect = document.getElementById("nextmonth");
    var dateSelect = document.getElementById("nextdate");
    var selectedMonth = monthSelect.value;
    
    var year = new Date().getFullYear(); // 현재 연도를 가져옴
    var daysInMonth = new Date(year, selectedMonth, 0).getDate();
    
    dateSelect.innerHTML = ""; // 일자 콤보박스 초기화
    
    for (var i = 1; i <= daysInMonth; i++) {
        var option = document.createElement("option");
        option.value = i;
        option.text = i;
        dateSelect.appendChild(option);
    }
}
// 페이지가 로드될 때 초기화
updateDays();
//기본 선택을 오늘 날짜로 설정
var today = new Date();
document.getElementById("nextmonth").value = <%=endmonth%>; // 월은 0부터 시작하므로 +1
document.getElementById("nextdate").value = <%=enddate%>;
</script>
</div>


<div class="radio" style="position:absolute;bottom:-160px;right:640px">
<strong style="font-size:20px">연령대 설정</strong><br/>
<input type="radio" id="ageGroup" name="ageGroup" value="AL" <%= "AL".equals(mmVO.getMovieRatting()) ? "checked='checked'" : "" %>><label style="font-size:15px">전체 관람</label><img src="../../common/images/all.png" style="padding-left:10px"><br>
<input type="radio" id="ageGroup" name="ageGroup" value="12" <%= "12".equals(mmVO.getMovieRatting()) ? "checked='checked'" : "" %>><label style="font-size:15px">12세</label><img src="../../common/images/12age.png" style="padding-left:10px"><br>
<input type="radio" id="ageGroup" name="ageGroup" value="15" <%= "15".equals(mmVO.getMovieRatting()) ? "checked='checked'" : "" %>><label style="font-size:15px">15세</label><img src="../../common/images/15age.png" style="padding-left:10px"><br>
<input type="radio" id="ageGroup" name="ageGroup" value="18" <%= "18".equals(mmVO.getMovieRatting()) ? "checked='checked'" : "" %>><label style="font-size:15px">청소년 관람 불가</label><img src="../../common/images/18age.png" style="padding-left:10px"><br>
<input type="radio" id="ageGroup" name="ageGroup" value="RS" <%= "RS".equals(mmVO.getMovieRatting()) ? "checked='checked'" : "" %>><label style="font-size:15px">제한상영가</label><img src="../../common/images/rs.png" style="padding-left:10px"><br>
</div>
<% 
MainTrailerVO mtVO=dmDAO.selectMaintrailer(movieCode);
if(mtVO.getMovieCode()!=null){
%>
<div style="position:absolute;left:15px;bottom:-380px">
<strong style="font-size:20px">메인트레일러 설정</strong><br/>
<input type="checkbox" name="main_trailer" id="main_trailer" checked="checked" disabled="disabled"><label>메인트레일러</label>
<textarea  class="form-control" rows="3" style="height:150px;width:800px" id="maintrailer" name="maintrailer"> <%= mtVO.getAdMsg() %></textarea>
</div>
<%}else{ %>
<div style="position:absolute;left:15px;bottom:-380px">
<strong style="font-size:20px">메인트레일러 설정</strong><br/>
<input type="checkbox" name="main_trailer" id="main_trailer"><label>메인트레일러</label>
<textarea  class="form-control" rows="3" placeholder="메인트레일러 소개" style="height:150px;width:800px" id="maintrailer" name="maintrailer"></textarea>
</div>
<%} %>
</div>	
</div>


<div class="col-lg-6" >
<h5 class="m-t-0">영화 포스터 및 스틸컷 업로드</h5>
<input type="button" value="저장" style="position: absolute;left:600px" id="movie_save_btn">
<input type="button" value="취소" style="position: absolute;left:650px">
<div style="display:inline-block">
	 	<fieldset>
			<legend>파일 업로드</legend>
			<p>포스터 : <input type="file" name="poster_file"></p>
			<p><input type="hidden" value="" id="poster_hide" name="poster_hide"></p>	 	
	 	</fieldset>
	 </div>
	<div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
    <input type="checkbox" name="posterfile" id="<%= dmDAO.selectPoster(movieCode) %>" value="<%= dmDAO.selectPoster(movieCode) %>">선택
      <img src="http://localhost/HCY_CINEMA/common/movie_files/<%= dmDAO.selectPoster(movieCode) %>" class="d-block w-100" style="height:440px;">
    </div>
  </div>
</div>
<div style="display:inline-block">
	 	<fieldset>
			<p>스틸컷 : <input type="file" id="still_file" name="still_file" multiple="multiple"></p>
			<p><input type="hidden" value="" id="still_hide" name="still_hide"></p>	 	
	 	</fieldset>
	 </div>
<div id="carouselExampleControlsNoTouching" class="carousel slide gap-0" data-interval = "0">
  <div class="carousel-inner"  >
    <div class="carousel-item active"  >
      <input type="checkbox" name="stillfile" id="<%= stillImgList.get(0) %>" value="<%= stillImgList.get(0) %>">선택<br/>
      <img src="http://localhost/HCY_CINEMA/common/movie_files/<%= stillImgList.get(0) %>" class="d-block w-100" alt="...">
    </div>
   <%for(int i=1;i<stillImgList.size();i++){ 
    %>
      <div class="carousel-item"  >
      <input type="checkbox" name="stillfile" id="<%= stillImgList.get(i) %>" value="<%= stillImgList.get(i) %>">선택<br/>
      <img src="http://localhost/HCY_CINEMA/common/movie_files/<%= stillImgList.get(i) %>" class="d-block w-100" alt="...">
    </div>
    <%} %>
   
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev" style="position:absolute;height:440px;top:20px;">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div style="display:inline-block">
	 	<fieldset>
			<p>트레일러 : <input type="file" name="trailer_file"></p>
			<p><input type="hidden" value="" id="trailer_hide" name="trailer_hide"></p>	 	
	 	</fieldset>
	 </div>
	<div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
    <input type="checkbox" name="trailerfile" id="<%= dmDAO.selectTrailer(movieCode) %>" value="<%= dmDAO.selectTrailer(movieCode) %>">선택
      <video class="d-block w-100" style="height:440px;width:790px;" controls>
      <source src="http://localhost/HCY_CINEMA/common/movie_files/<%= dmDAO.selectTrailer(movieCode) %>" type="video/mp4">
      </video>
    </div>
  </div>
</div>
	</div> 



</div>

</div>
</form>


















</div>
		
		<div class="sidebar-bg sidebar-right"></div>

	</div>


	

	


	
		
 	<script src="jquery-ui.min.js" type="text/javascript"></script>
	<script src="bootstrap.bundle.min.js" type="text/javascript"></script>
	<!-- [if lt IE 9]>
		<script src="../assets/crossbrowserjs/html5shiv.js"></script>
		<script src="../assets/crossbrowserjs/respond.min.js"></script>
	<![endif] -->
	<script src="jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="jquery.cookie.js" type="text/javascript"></script>


	<script src="bootstrap_calendar.min.js" type="text/javascript"></script>
	<script src="Chart.min.js" type="text/javascript"></script>
	<script src="jquery.gritter.js" type="text/javascript"></script>
	<script src="bootstrap_calendar.min.js" type="text/javascript"></script>
	<script src="jquery.dataTables.js" type="text/javascript"></script>
	<script src="dataTables.bootstrap.min.js" type="text/javascript"></script>
	<script src="dataTables.responsive.min.js" type="text/javascript"></script>
	<script src="jquery.sparkline.min.js" type="text/javascript"></script>
	<script src="demo.min.js" type="text/javascript"></script>
	<script src="page-index-v3.demo.min.js" type="text/javascript"></script>
	<script src="apps.min.js" type="text/javascript"></script> 
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> 
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>   -->
	<!-- <script src="jquery-3.3.1.min.js" type="text/javascript"></script> 


	<!-- <script type="text/javascript">
		$(document).ready(function() {
		    App.init();
		    Demo.init();
		    PageDemo.init();
		});
	</script> -->

	<script async="" src="https://www.googletagmanager.com/gtag/js?id=G-Y3Q0VGQKY3" type="text/javascript"></script>
	<script type="text/javascript">
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'G-Y3Q0VGQKY3');
	</script>
	<script type="text/javascript">
		//<canvas> 요소 선택
		/* var canvas = document.getElementById("monthly-report-chart");
		var ctx = canvas.getContext("2d");

		// 데이터 정의 (예: 막대 그래프의 높이)
		var data = [ 50, 80, 120, 160, 200 ];

		// 막대 그래프 그리기
		var barWidth = 40; // 막대 폭
		var spacing = 20; // 막대 간격
		var startY = canvas.height; // 그래프 시작 위치

		for (var i = 0; i < data.length; i++) {
			var barHeight = data[i];
			var startX = (i * (barWidth + spacing)) + 20; // 20은 여백

			ctx.fillStyle = "blue"; // 막대 색상
			ctx.fillRect(startX, startY - barHeight, barWidth, barHeight);
		}
	 */
  
	 var actor_Button = document.getElementById("actor_btn");
     var actor_titleContainer = document.getElementById("actor_title");

     var actor_counter =<%= actorList.size()%>; // 초기 카운터 값
     

     actor_Button.addEventListener("click", function() {
         var actor_label = actor_titleContainer.querySelector(".actor_label");
         var actor = actor_titleContainer.querySelector(".actor_input");


         // 라벨 복사
         var actor_newLabel = actor_label.cloneNode(true);
         actor_newLabel.textContent = "주연 " + actor_counter;
         
         // 입력 요소 복사
       
         var actor_newInput = actor.cloneNode(true);
         actor_newInput.name = "actor_" + actor_counter;
         actor_newInput.id = "actor_" + actor_counter;
         actor_newInput.style.position = "relative";
         actor_newInput.style.left="15px";
         actor_newInput.style.width = "450px";
         var deleteButton = document.createElement("button");
         deleteButton.textContent = "삭제";
         deleteButton.style.marginLeft = "30px";
         deleteButton.addEventListener("click", function () {
             // 클릭된 삭제 버튼과 연결된 라벨과 입력 요소를 제거
             actor_titleContainer.removeChild(extra_newLabel);
             actor_titleContainer.removeChild(extra_newInput);
             actor_titleContainer.removeChild(deleteButton);
         });
         
         // 복제한 라벨과 입력 요소를 추가
         actor_titleContainer.appendChild(actor_newLabel);
         actor_titleContainer.appendChild(actor_newInput);
         actor_titleContainer.appendChild(deleteButton);
         actor_counter++; // 카운터 증가
     });
	 var extra_Button = document.getElementById("extra_btn");
     var extra_titleContainer = document.getElementById("extra_title");

     var extra_counter = <%=extraList.size()%>; // 초기 카운터 값
     

     extra_Button.addEventListener("click", function() {
         var extra_label = extra_titleContainer.querySelector(".extra_label");
         var extra = extra_titleContainer.querySelector(".extra_input");


         // 라벨 복사
         var extra_newLabel = extra_label.cloneNode(true);
         extra_newLabel.textContent = "조연 " + extra_counter;
         
         // 입력 요소 복사
       
         var extra_newInput = extra.cloneNode(true);
         extra_newInput.name = "extra_" + extra_counter;
         extra_newInput.id = "extra_" + extra_counter;
         extra_newInput.style.position = "relative";
         extra_newInput.style.left="15px";
         extra_newInput.style.width = "450px";
         var deleteButton = document.createElement("button");
         deleteButton.textContent = "삭제";
         deleteButton.style.marginLeft = "30px";
         deleteButton.addEventListener("click", function () {
             // 클릭된 삭제 버튼과 연결된 라벨과 입력 요소를 제거
             extra_titleContainer.removeChild(extra_newLabel);
             extra_titleContainer.removeChild(extra_newInput);
             extra_titleContainer.removeChild(deleteButton);
         });

         // 복제한 라벨, 입력 요소 및 삭제 버튼을 추가
         extra_titleContainer.appendChild(extra_newLabel);
         extra_titleContainer.appendChild(extra_newInput);
         extra_titleContainer.appendChild(deleteButton);
         extra_counter++; // 카운터 증가
     });
     
     
     
     var director_addButton = document.getElementById("director_btn");
     var director_titleContainer = document.getElementById("director_title");

     var director_counter = <%=directorList.size()%>; // 초기 카운터 값

     director_addButton.addEventListener("click", function() {
         var director_label = director_titleContainer.querySelector(".director_label");
         var director_Input = director_titleContainer.querySelector(".director_input");

         // 라벨 복사
         var director_newLabel = director_label.cloneNode(true);
         director_newLabel.textContent = "감독 " + director_counter;
         
         // 입력 요소 복사
         var director_newInput = director_Input.cloneNode(true);
         director_newInput.name = "director_" + director_counter;
         director_newInput.id = "director_" + director_counter;
         director_newInput.style.position = "relative";
         director_newInput.style.left="15px";
         director_newInput.style.width = "450px";
		
         var deleteButton = document.createElement("button");
         deleteButton.textContent = "삭제";
         deleteButton.style.marginLeft = "30px";
         deleteButton.addEventListener("click", function () {
             // 클릭된 삭제 버튼과 연결된 라벨과 입력 요소를 제거
             director_titleContainer.removeChild(director_newLabel);
             director_titleContainer.removeChild(director_newInput);
             director_titleContainer.removeChild(deleteButton);
         });

         // 복제한 라벨, 입력 요소 및 삭제 버튼을 추가
         director_titleContainer.appendChild(director_newLabel);
         director_titleContainer.appendChild(director_newInput);
         director_titleContainer.appendChild(deleteButton);

         director_counter++; // 카운터 증가
     });
     var genre_addButton = document.getElementById("genre_btn");
     var genre_titleContainer = document.getElementById("genre_title");
     var genre_counter = <%= genreList.size() %>;

     genre_addButton.addEventListener("click", function () {
         var genre_label = genre_titleContainer.querySelector(".genre_label");
         var genre_Input = genre_titleContainer.querySelector(".genre_select");

         // 라벨 복사
         var genre_newLabel = genre_label.cloneNode(true);

         // 입력 요소 복사
         var genre_newInput = genre_Input.cloneNode(true);
         genre_newInput.name = "genre_select_" + genre_counter;
         genre_newInput.id = "genre_select_" + genre_counter;
         genre_newInput.style.position = "relative";
         genre_newInput.style.left = "15px";
         genre_newInput.style.width = "450px";

         // 복제한 라벨과 입력 요소를 추가
         genre_titleContainer.appendChild(genre_newLabel);
         genre_titleContainer.appendChild(genre_newInput);

         // 삭제 버튼 생성
         var deleteButton = document.createElement("button");
         deleteButton.textContent = "삭제";
         deleteButton.style.marginLeft = "30px";
         deleteButton.addEventListener("click", function () {
             // 클릭된 삭제 버튼과 연결된 라벨, 입력 요소 및 삭제 버튼을 제거
             genre_titleContainer.removeChild(genre_newLabel);
             genre_titleContainer.removeChild(genre_newInput);
             genre_titleContainer.removeChild(deleteButton);

             // 삭제된 값을 다시 원본 select에 추가
             var option = document.createElement("option");
             option.value = genre_newInput.value;
             option.textContent = genre_newInput.value;
             genre_Input.appendChild(option);
         });

         // 원본 "genre_select" 엘리먼트에서 선택된 값을 가져옵니다.
         var selectedValue = genre_Input.value;

         // 새로 생성된 입력 엘리먼트의 값을 선택된 값으로 설정합니다.
         genre_newInput.value = selectedValue;

         // 원본 "select" 엘리먼트에서 선택된 옵션을 제거합니다.
         var selectedOption = genre_Input.querySelector('option[value="' + selectedValue + '"]');
         if (selectedOption) {
             selectedOption.remove();
         }

         // 복제한 라벨, 입력 요소, 삭제 버튼을 추가
         genre_titleContainer.appendChild(genre_newLabel);
         genre_titleContainer.appendChild(genre_newInput);
         genre_titleContainer.appendChild(deleteButton);

         // 새로 생성된 select를 비활성화
         genre_newInput.disabled = true;

         genre_counter++;
     });
     var genre_selectElement = document.getElementById("genre_select");
    /*  genre_disableButton.addEventListener("click", function() {
    	 genre_selectElement.disabled = true; // select 요소를 비활성화
     }); */
     $(function(){
    		 $("#movie_save_btn").click(function(){
    			 var files=$('#still_file')[0].files;
    	          var fileName="";
    	          for(var i= 0; i<files.length; i++){
    	              fileName+=files[i].name+"/";
    	    			 
    	          } 
    	          $("#actor_hide").val(actor_counter);
    	          $("#extra_hide").val(extra_counter);
    	          $("#director_hide").val(director_counter);
    	          $("#genre_hide").val(genre_counter);
    	              $("#still_hide").val(fileName);
    	     		 $("#movie_info_all_frm").submit();
    	        
    	 })
     });
     
     
     
	</script>
	<script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/v8b253dfea2ab4077af8c6f58422dfbfd1689876627854" integrity="sha512-bjgnUKX4azu3dLTVtie9u6TKqgx29RBwfj3QXYt5EKfWM/9hPSAI/4qcV5NACjwAo8UtTeWefx6Zq5PHcMm7Tg==" data-cf-beacon="{&quot;rayId&quot;:&quot;817469ae18dc8084&quot;,&quot;version&quot;:&quot;2023.8.0&quot;,&quot;r&quot;:1,&quot;token&quot;:&quot;4db8c6ef997743fda032d4f73cfeff63&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>

	

</body></html>
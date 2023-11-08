<%@page import="screen.ScheduleVO"%>
<%@page import="java.util.List"%>
<%@page import="screen.ManageScreenDAO"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<!doctype html>
<html lang="en"><!--<![endif]--><head>
<meta charset="utf-8">
<title>상영관 관리</title>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta content="" name="description">
<meta content="" name="author">

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



<!-- 	<script src="pace.min.js" type="text/javascript"></script> -->
	<!-- <script src="jquery-3.3.1.min.js" type="text/javascript"></script>
	<script src="jquery-ui.min.js" type="text/javascript"></script>
	<script src="bootstrap.bundle.min.js" type="text/javascript"></script> -->
	<!--[if lt IE 9]>
		<script src="../assets/crossbrowserjs/html5shiv.js"></script>
		<script src="../assets/crossbrowserjs/respond.min.js"></script>
	<![endif]-->
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	


<!--[if lt IE 9]>
	    <script src="../assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
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
					<a href="../ManageDashBoard/manage_dashboard.jsp" class="navbar-brand" style="line-height: 0px"><img src="../../common/images/admin_logo.png"></a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
				</div>
			</div>

		</div>
<script>
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
									<div class="name dropdown">
<a href="javascript:;" data-toggle="dropdown"><%= session.getAttribute("userName") %> </a>
	<a href="#"onclick="logout();">Log Out</a>
</div>	</div>
							</div>
						</li>
						<li class="nav-header">today work</li>
						<li class="has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp"> <img class="fa fa-home" src="../../common/images/dashboard2.png">
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
						<li class="has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp">
								<img class="fa fa-inbox" src="../../common/images/movie_icon.png"> <span>영화</span>
						</a>
							<ul class="sub-menu">
								<li><a href="email_inbox.html">Inbox</a></li>
								<li><a href="email_compose.html">Compose</a></li>
								<li><a href="email_detail.html">Detail</a></li>
							</ul></li>
						<li class="active has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen.jsp"> <img class="fa fa-gem" src="../../common/images/cinema_icon.png"> <span>상영관</span>
						</a></li>
						<li class="has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp"> <img class="fa fa-suitcase" src="../../common/images/member_icon.png">
								<span>회원관리</span>
						</a></li>
						<li class="has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageBoard/freeboard_list.jsp"> <img class="fa fa-file" src="../../common/images/board_icon.png">
								<span>게시판 관리</span>
						</a></li>
						<li class="has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageBoard/notice_list.jsp"> <img class="fa fa-file" src="../../common/images/notice_icon.png">
								<span>공지사항 관리</span>
						</a></li>
				</ul></div>
				<div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 197.948px;"></div>
				<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>

		</div>
		<div class="sidebar-bg"></div>


		<div id="content" class="content">

			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">상영관 관리</a></li>
			</ol>


			<h1 class="page-header">
			Manage Screen <small>Manage Screen</small>
			</h1>


			<div class="row" >

				<div class="col-lg-10" style="width: 1600px; height: 1000px; ">

					<div class="radius-container m-b-30" style="width: 1600px; height: 1000px; overflow: auto">


						<div class="panel pagination-inverse bg-white clearfix no-rounded-corner m-b-0" style="width: 1600px; height: 1000px; overflow: auto">

							<div id="data-table_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer" style="width: 1600px; height: 1000px;">
								<div class="row">
									<div class="col-sm-6">
										<div class="dataTables_length" id="data-table_length">
											
											
										</div>
									</div>
									<div class="col-sm-6">
										<div id="data-table_filter" class="dataTables_filter">
											
										</div>
									</div>
								</div>
								<div class="row">
								
									<div class="col-sm-12">
									
									<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class=" nav-link " aria-current="page" href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen.jsp">1관</a>
  </li>
  <li class="nav-item">
    <a class="nav-link " href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen2.jsp">2관</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen3.jsp">3관</a>
  </li>
  <li class="nav-item">
    <a class="nav-link " href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen4.jsp">4관</a>
  </li>
  <li class="nav-item">
    <a class="nav-link " href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen5.jsp">5관</a>
  </li>
</ul>
<style>
.modal {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 650px; /* 원하는 넓이 */
    height: 500px; /* 원하는 높이 */
    background-color: white;
    border: 1px solid #ccc;
    z-index: 1;
    padding: 20px;
    text-align: center;
}

.modal-content {
    display: inline-block;
    text-align: left;
}

.btn.btn-dark {
    width: 200px;
    height: 100px;
    margin: 10px;
}

.input-container {
    display: flex;
    justify-content: flex-start;
    margin-bottom: 10px;
}

.input-container label {
    width: 100px; /* 레이블의 넓이를 조정하여 오른쪽 정렬 */
    text-align: right;
    margin-right: 10px;
}

.button-container {
    margin-top: 30px;
    margin-left: 300px;
}
</style>
<div style="overflow: auto">
    <h2>&nbsp;&nbsp;상영스케줄 - 2D</h2>
    <br>
    <img src="http://localhost/HCY_CINEMA/common/images/movie_seat_icon.png" style="margin-left:100px">
    <br><br><br>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;날짜 선택</h3>
    &nbsp;&nbsp;&nbsp;
    <select onchange="updateMovieSchedule()" class="form-select pt-1 mt-4" style="height: 33px; width: 10%; font-size: 20px; font-family: 'Open Sans'; text-align: center;" id="year">
        <% Calendar cal = Calendar.getInstance();
        int nowYear = cal.get(Calendar.YEAR);
        cal.set(Calendar.YEAR, nowYear);

        for (int i = nowYear; i < nowYear + 3; i++) {
        %>
        <option value="<%= i %>"<%= i == nowYear ? "selected='selected'" : "" %>><%= i %></option>
        <%
        }
        %>
    </select>
    <strong>년</strong>
    <select onchange="updateMaxDay()" class="form-select pt-1 mt-4" style="height: 33px; width: 10%; font-size: 20px; font-family: 'Open Sans'; text-align: center;" id="month">
        <%
        int nowMonth = cal.get(Calendar.MONTH) + 1;
        cal.set(Calendar.MONTH, nowMonth - 1);
        for (int i = 1; i < 13; i++) {
        %>
        <option value="<%= i %>"<%= i == nowMonth ? "selected='selected'" : "" %>><%= i %></option>
        <%
        }
        %>
    </select>
    <strong>월</strong>
    <select onchange="updateMaxDay()" class="form-select pt-1 mt-4" style="height: 33px; width: 10%; font-size: 20px; font-family: 'Open Sans'; text-align: center;" id="day">
        <%
        int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
        int nowDay = cal.get(Calendar.DATE);
        cal.set(Calendar.DAY_OF_MONTH, nowDay);
        %>
        <%
        for (int i = 1; i <= maxDay; i++) {
        %>
        <option value="<%= i %>"<%= i == nowDay ? "selected='selected'" : "" %>><%= i %></option>
        <%
        }
        %>
    </select>
    <strong>일</strong>
    <input id="checkBtn" style="position: absolute; top:684px; left:600px;" type="button" class="btn btn-primary" value="조회">
    <br>
</div>



								

<br>
<%
int screenNum=3;
ManageScreenDAO msDAO=ManageScreenDAO.getInstance();
List<ScheduleVO> list=msDAO.selectScheduleDate(screenNum);
ScheduleVO sVO=null;

int[]fixedHours={10,13,16,19,22};

%>
<div id="no_schedule_modal" style="margin-left:20px;">

<h3>스케줄 선택</h3>
<%
for(int i=0;i<fixedHours.length;i++){
	int hour=fixedHours[i];
	boolean hasSchedule=false;
	for(int j=0;j<list.size();j++){
		sVO=list.get(j);
		 int scheduleHour=Integer.parseInt(sVO.getShowtime().substring(11,13));
		
		if(scheduleHour==hour){
			hasSchedule=true;
			break;
		}//end if
	}//end for
		/* System.out.print(sVO); */
%>

<div style="display: inline-block;">
	 <label style="width:200px;font-size:20px">
		<span id="hour<%=i%>" name="hour<%=i%>" value="hour<%=i%>:00"><%= hour %>:00</span>
        </label>
	<input id="<%=i+1 %>" style="font-size:20px" type="button" class="btn btn-dark schedule_btn" value="<%= hasSchedule ? sVO.getMname() : "스케줄 없음" %>"
            name="<%= hasSchedule ? sVO.getMname() : "스케줄 없음" %>">
            <input type="hidden" id="hid_<%=i+1 %>" name="hid_+<%=i+1 %>" value="<%=sVO==null? "":sVO.getMovieCode() %>">
    </div>
<%		
}//end for
%>
</div>
</div><br><br>
<input type="hidden" name="screenNum" value="1" id="screenNum">


<div id="no_has_schedule" class="modal" style="overflow: auto;">
    <div class="modal-content" style="overflow: auto;">
        <h2>스케줄 추가</h2><br>
        <div class="input-container" style="overflow: auto;">
            <label for="movieName">상영중인 영화</label>
            <select id="movieName">
              
                <!-- 영화 목록을 적절히 추가 -->
            </select>
        </div>
        <div class="input-container" style="overflow: auto;">
            <label for="movieDescription">영화 설명:</label>
            <textarea id="movieDescription" rows="8" cols="50"></textarea>
        </div>
        <div class="button-container" style="overflow: auto;">
        <form id="frm" name="frm" action="http://localhost/HCY_CINEMA/admin/manageScreen/insertSchedule.jsp">
            <button type="button" class="btn btn-primary save_btn">저장</button>
            <button type="button" class="btn btn-danger cancel_btn" >취소</button>
            <input type="hidden" id="year_hid" name="year_hid" value="">
            <input type="hidden" id="month_hid" name="month_hid" value="">
            <input type="hidden" id="day_hid" name="day_hid" value="">
            <input type="hidden" id="moviecode_hid" name="moviecode_hid" value="">
            <input type="hidden" id="screen_hid" name="screen_hid" value="">
            <input type="hidden" id="btn_hid" name="btn_hid" value="">
        </form>
        </div>
    </div>
</div>
<div id="has_schedule" class="modal" >
    <div class="modal-content" style="overflow: auto;">
        <h2>&nbsp;&nbsp;&nbsp;스케줄 내역 관리</h2><br>
         <div id="no_shcedule" style="margin-left:20px; max-height: 300px; overflow: auto;">
            <table class="table" style="text-align:center">
                <thead>
                    <tr style="width:1500px">
                        <th scope="col">좌석</th>
                        <th scope="col">고객 아이디</th>
                        <th scope="col">예매 상태</th>
                        <th scope="col">예매취소</th>
                    </tr>
                </thead>
                <tbody style="text-align:center; ">
              
                </tbody>
            </table>
        </div>                    
    </div>
        <div class="button-container">
            <button type="button" class="btn btn-danger" onclick="closeModal('has_schedule')" style="margin-left:250px">닫기</button>
        </div>
</div>
        

<script>

$(function () {
	    var selectedYear = $("#year").val();
	    var selectedMonth = $("#month").val();
	    var selectedDay = $("#day").val();
	    var selectedScreenNum = 3;
	    var hid1 = $("#hid_1");
        var hid2 = $("#hid_2");
        var hid3 = $("#hid_3");
        var hid4 = $("#hid_4");
        var hid5 = $("#hid_5");
	    $("#checkBtn").click(function () {
	        var btn1 = $("#1");
	        var btn2 = $("#2");
	        var btn3 = $("#3");
	        var btn4 = $("#4");
	        var btn5 = $("#5");
	        selectedYear = $("#year").val();
	        selectedMonth = $("#month").val();
	        selectedDay = $("#day").val();

	        var scheduleData = {};

	        $.ajax({
	            type: "POST",
	            url: "http://localhost/HCY_CINEMA/admin/manageScreen/m_date_check.jsp",
	            data: {
	                year: selectedYear,
	                month: selectedMonth,
	                day: selectedDay,
	                screenNum: selectedScreenNum
	            },
	            dataType: "json",
	            error: function (error) {
	                console.log(error.status);
	            },
	            success: function (jsonObj) {
	                $.each(jsonObj.data, function (i, json) {
	                    var showtime = json.showtime.substring(11, 13);
	                    var mname = json.mname;
	                    var movieCode = json.movieCode;
	                    scheduleData[showtime] = {
	                        mname: mname,
	                        movieCode: movieCode
	                    };
	                });

	                btn1.val(scheduleData[10] ? scheduleData[10].mname : "스케줄 없음");
	                btn2.val(scheduleData[13] ? scheduleData[13].mname : "스케줄 없음");
	                btn3.val(scheduleData[16] ? scheduleData[16].mname : "스케줄 없음");
	                btn4.val(scheduleData[19] ? scheduleData[19].mname : "스케줄 없음");
	                btn5.val(scheduleData[22] ? scheduleData[22].mname : "스케줄 없음");

	                hid1.val(scheduleData[10] ? scheduleData[10].movieCode : "");
	                hid2.val(scheduleData[13] ? scheduleData[13].movieCode : "");
	                hid3.val(scheduleData[16] ? scheduleData[16].movieCode : "");
	                hid4.val(scheduleData[19] ? scheduleData[19].movieCode : "");
	                hid5.val(scheduleData[22] ? scheduleData[22].movieCode : "");
	            }
	        });
	    });

	$(".schedule_btn").click(function () {
	    // 클릭된 버튼의 아이디를 가져와서 name에 설정
	    
	   var name=$(this).val()
	    var buttonId = $(this).attr("id"); // 클릭된 버튼의 아이디 가져오기
	    var selected = $("#movieName");
	    selected.empty();
	    // 버튼의 아이디를 btn_hid에 저장
	    $("#btn_hid").val(buttonId);
	    if (name === "스케줄 없음") {
	        // 모달을 열 때 ajax 요청을 보내기
	        $.ajax({
	            type: "POST",
	            url: "http://localhost/HCY_CINEMA/admin/manageScreen/m_select_movie.jsp",
	            data: {
	                year: selectedYear,
	                month: selectedMonth,
	                day: selectedDay,
	                screenNum: selectedScreenNum // 2관
	            },
	            dataType: "json",
	            error: function (error) {
	                console.log(error.status);
	            },
	            success: function (jsonObj) {
	                // ajax 요청이 성공하면 스케줄 데이터 처리
	                $.each(jsonObj.data, function (i, json) {
	                    var option = $("<option>").text(json.mname).val(json.mname);
	                    selected.append(option);
	                });

	                // 스케줄 없음 모달 열기
	                document.getElementById("no_has_schedule").style.display = "block";
	                // 모달을 띄울 때 해당 버튼의 이름을 저장
	                document.getElementById("no_has_schedule").dataset.buttonName = name;

	                // 첫 번째 옵션을 선택
	                selected.prop("selectedIndex", 0);

	                // 페이지 로딩 시, 첫 번째 옵션에 대한 plot을 textarea에 출력
	                var firstOptionValue = selected.val();
	                var movieDescription = $("#movieDescription");

	                if (firstOptionValue === "default") {
	                    // 선택된 옵션이 "선택하세요"인 경우 textarea를 비웁니다.
	                    movieDescription.val("");
	                } else {
	                    var selectedMovie = jsonObj.data.find(function (movie) {
	                        return movie.mname === firstOptionValue;
	                    });

	                    if (selectedMovie) {
	                        // 선택된 옵션에 대한 plot을 textarea에 출력
	                        $("#moviecode_hid").val(selectedMovie.moviecode);
	                        movieDescription.val(selectedMovie.plot);
	                    } else {
	                        // 선택된 영화를 찾지 못한 경우에 대한 처리
	                        movieDescription.val("선택한 영화에 대한 설명을 찾을 수 없습니다.");
	                    }
	                }

	                // <select> 요소가 변경되었을 때 이벤트 처리
	                selected.on("change", function () {
	                    // 선택된 옵션에 해당하는 json 데이터를 찾아서 json.plot을 textarea에 출력합니다.
	                    var selectedOptionValue = selected.val();
	                    var movieDescription = $("#movieDescription");

	                    if (selectedOptionValue === "default") {
	                        // 선택된 옵션이 "선택하세요"인 경우 textarea를 비웁니다.
	                        movieDescription.val("");
	                    } else {
	                        var selectedMovie = jsonObj.data.find(function (movie) {
	                            return movie.mname === selectedOptionValue;
	                        });

	                        if (selectedMovie) {
	                            // 선택된 옵션에 대한 plot을 textarea에 출력
	                             $("#moviecode_hid").val(selectedMovie.moviecode);
	                            movieDescription.val(selectedMovie.plot);
	                        } else {
	                            // 선택된 영화를 찾지 못한 경우에 대한 처리
	                            movieDescription.val("선택한 영화에 대한 설명을 찾을 수 없습니다.");
	                        }
	                    }
	                });
	            }
	        });
	    } else {
	    	  var buttonId = $(this).attr("id");
	    	  var matchingHidden = $("#hid_" + buttonId);
	    	  var hiddenValue = matchingHidden.val();
	    	  var table = $("tbody");
	    	    table.empty();
	    	  $.ajax({
	    		    type: "POST",
	    		    url: "http://localhost/HCY_CINEMA/admin/manageScreen/m_select_member.jsp",
	    		    data: {
	    		        year: selectedYear,
	    		        month: selectedMonth,
	    		        day: selectedDay,
	    		        screenNum: selectedScreenNum, // 2관
	    		        movieCode: hiddenValue,
	    		        btnid: buttonId
	    		    },
	    		    dataType: "json",
	    		    error: function (error) {
	    		        console.log(error.status);
	    		    },
	    		    success: function (jsonObj) {
	    		        $.each(jsonObj.data, function (i, json) {
	    		            var msg = "";
	    		            if ("Y" === json.status) {
	    		                msg = "예매";
	    		            }
	    		            var row = $("<tr>");
	    		            var seatNumCell = $("<td>").text(json.seatnum);
	    		            var idCell = $("<td>").text(json.id || json.tel);
	    		            var statusCell = $("<td>").text(msg);

	    		            // 예매 취소 버튼을 추가
	    		            var cancelButtonCell = $("<td>").append(
	    		                $("<input>").attr({
	    		                    type: "button",
	    		                    class: "btn btn-info",
	    		                    value: "예매취소"
	    		                }).click(function () {
	    		                    // 예매 취소 버튼 클릭 시 수행할 동작 추가
	    		                    // 여기에서 예매 취소 로직을 추가하십시오
	    		                	var ticketnum = json.ticketnum;
	    		                    window.location.href="http://localhost/HCY_CINEMA/admin/manageScreen/deleteSeat.jsp?ticketnum="+ticketnum;
	    		                })
	    		            );

	    		            row.append(seatNumCell, idCell, statusCell, cancelButtonCell);
	    		            table.append(row);
	    		        });
	    		    }
	    		});

	        // 다른 버튼을 누를 때 기타 모달 열기
	        document.getElementById("has_schedule").style.display = "block";
	        // 모달을 띄울 때 해당 버튼의 이름을 저장
	        document.getElementById("has_schedule").dataset.buttonName = name;
	    }
	});
	$(".save_btn").click(function(){
		$("#year_hid").val(selectedYear);
		$("#month_hid").val(selectedMonth);
		$("#day_hid").val(selectedDay);
		$("#screen_hid").val(selectedScreenNum);
	
		$("#frm").submit();
	});
	$(".cancel_btn").click(function(){
		document.getElementById("no_has_schedule").style.display = "none";
	})
		
	});





/*  function updateMovieInfo(movieData) {
    var movieInfoDiv = $("#movieInfo");
    
    //영화 초기화
    movieInfoDiv.empty();

    // 영화 정보 movieData
    for (var i = 0; i < movieData.length; i++) {
        var movie = movieData[i];

        // div로 나타냄
        var movieInfoElement = $("<div class='movie-info'>");
        var movieTitleElement = $("<h3>").text(movie.mname);
        var showtimeElement = $("<p>").text("상영 시간: " + movie.showtime);
        // 필요한 다른 정보도 추가

        movieInfoElement.append(movieTitleElement, showtimeElement);
        movieInfoDiv.append(movieInfoElement);
    }
}  */





function updateMaxDay() {
    var yearSelect = document.getElementById("year");
    var monthSelect = document.getElementById("month");
    var daySelect = document.getElementById("day");

    var selectedYear = yearSelect.value;
    var selectedMonth = monthSelect.value;
    var selectedDay = daySelect.value;

    // 1월부터
    var adjustedMonth = selectedMonth - 1;

    // 선택된 날짜
    var currentDate = new Date(selectedYear, adjustedMonth, selectedDay);

    var lastDay = new Date(selectedYear, adjustedMonth + 1, 0).getDate();

    //초기화
    daySelect.innerHTML = "";

    // 선택한 날짜 옵션 추가해줌
    for (var i = 1; i <= lastDay; i++) {
        var option = document.createElement("option");
        option.value = i;
        option.text = i;
        daySelect.appendChild(option);
    }

    // 만약 선택한 날짜가 마지막 날보다 큰 경우
    if (currentDate.getDate() > lastDay) {
        // 일자를 마지막 날로 설정
        daySelect.value = lastDay;
    } else {
        // 그렇지 않은 경우, 이전에 선택한 일자를 설정
        daySelect.value = selectedDay;
    }
}

// 페이지 로딩할 때 초기화
window.onload = function() {
    updateMaxDay();
};





function saveMovie(modalName) {
    if (modalName === "no_has_schedule") {
        const movieName = document.getElementById("movieName").value;
        const movieDescription = document.getElementById("movieDescription").value;
        // 해당 버튼의 값을 업데이트
        const buttonName = document.getElementById("no_has_schedule").dataset.buttonName;
        document.querySelector(`input[name="${buttonName}"]`).value = movieName;
        // 모달을 닫음
        closeModal("no_has_schedule");
    } else if (modalName === "has_schedule") {
        const otherInfo = document.getElementById("otherInfo").value;
        // 해당 버튼의 값을 업데이트
        const buttonName = document.getElementById("has_schedule").dataset.buttonName;
        // 예: 버튼 텍스트를 업데이트
        document.querySelector(`input[name="${buttonName}"]`).value = otherInfo;
        // 모달을 닫음
        closeModal("has_schedule");
    }
}

function closeModal(modalName) {
    if (modalName === "no_has_schedule") {
        // 스케줄 없음 모달 닫기
        document.getElementById("no_has_schedule").style.display = "none";
    } else if (modalName === "has_schedule") {
        // 기타 모달 닫기
        document.getElementById("has_schedule").style.display = "none";
    }
}
</script>

	<!-- <div id="no_shcedule" style="margin-left:20px">
		<table class="table" style="width:400px; text-align:center">
			  <thead>
			    <tr>
			      <th scope="col">좌석</th>
			      <th scope="col">고객 아이디</th>
			      <th scope="col">예매 상태</th>
			    </tr>
			  </thead>
			  <tbody style="text-align:center; ">
			    <tr>
			      <td>A1</td>
			      <td>Otto</td>
			      <td>예매
			      <button type="button" class="btn btn-info" style="float:right">예매취소</button>
			      </td>
			    </tr>
			    <tr>
			      <td>B2</td>
			      <td>Thornton</td>
			      <td>미예매
			      <button type="button" class="btn btn-outline-primary" style="float:right" disabled="disabled">예매취소</button>
			      </td>
			    </tr>
			  
			  </tbody>
		</table>
		
	</div>				 -->			
									</div>
								</div>
							</div>

						</div>

					</div>

				</div>

			</div>

		</div>

		<%-- <div id="sidebar-right" class="sidebar sidebar-right">

			<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
				<div data-scrollbar="true" data-height="100%" data-init="true" style="overflow: hidden; width: auto; height: 100%;">

					<ul class="nav nav-tabs" role="tablist">
						<li class="width-half"><a class="active" href="#today" data-toggle="tab">Today</a></li>
						<li class="width-half"><a href="#notifications" data-toggle="tab">Notifications</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="today">
							<ul class="nav">
								<li class="nav-date">Sunday, May 31 st</li>
								<li class="divider"></li>
								<li class="nav-header">Stocks</li>
								<li>
									<ul class="stock-list">
										<li>
											<div class="name">AAPL</div>
											<div class="value">130.28</div>
											<div class="percentage">
												<span class="label label-inverse">- 1.14%</span>
											</div>
										</li>
										<li>
											<div class="name">DOWJ</div>
											<div class="value">18010.68</div>
											<div class="percentage">
												<span class="label label-inverse">- 0.64%</span>
											</div>
										</li>
										<li>
											<div class="name">SBUX</div>
											<div class="value">51.96</div>
											<div class="percentage">
												<span class="label label-success">+ 0.29%</span>
											</div>
										</li>
										<li>
											<div class="name">NKE</div>
											<div class="value">18010.68</div>
											<div class="percentage">
												<span class="label label-inverse">- 0.62%</span>
											</div>
										</li>
										<li>
											<div class="name">YHOO</div>
											<div class="value">42.94</div>
											<div class="percentage">
												<span class="label label-inverse">- 0.31%</span>
											</div>
										</li>
									</ul>
								</li>
								<li class="divider"></li>
								<li class="nav-header">Calendar</li>
								<li>
									<div id="schedule-calendar">
										<div class="calendar" id="cal_18nl">
											<table class="table header">
												<tbody>
													<tr></tr>
												</tbody>
												<tbody><tr><td><i class="icon-arrow-left"></i></td>
												<td colspan="5" class="year span6"><div class="visualmonthyear">October 2023</div></td>
												<td><i class="icon-arrow-right"></i></td>
											</tr></tbody></table>
											<table class="daysmonth table table">
												<tbody><tr class="week_days">
													<td class="first">S</td>
													<td>M</td>
													<td>T</td>
													<td>W</td>
													<td>T</td>
													<td>F</td>
													<td class="last">S</td>
												</tr>
												<tr>
													<td id="cal_18nl_1_10_2023" class="first"><a>1</a></td>
													<td id="cal_18nl_2_10_2023"><a>2</a></td>
													<td id="cal_18nl_3_10_2023"><a>3</a></td>
													<td id="cal_18nl_4_10_2023" class="event event_popover" style="background: rgb(23, 182, 164);"><a data-original-title="Client Meeting" data-trigger="manual" class="manual_popover" rel="popover" data-content="<address class=&quot;m-b-0 text-inverse f-s-12&quot;>
															<strong>Twitter, Inc.</strong><br /> 795 Folsom Ave,
															Suite 600<br /> San Francisco, CA 94107 <br /> P: (123)
															456-7890
															</address>">4
													</a></td>
													<td id="cal_18nl_5_10_2023"><a>5</a></td>
													<td id="cal_18nl_6_10_2023"><a>6</a></td>
													<td id="cal_18nl_7_10_2023" class="last event event_tooltip" style="background: rgb(48, 55, 62);"><a data-original-title="Bootstrap.com" href="http://www.getbootstrap.com" rel="tooltip">7</a></td>
												</tr>
												<tr>
													<td id="cal_18nl_8_10_2023" class="first"><a>8</a></td>
													<td id="cal_18nl_9_10_2023"><a>9</a></td>
													<td id="cal_18nl_10_10_2023"><a>10</a></td>
													<td id="cal_18nl_11_10_2023"><a>11</a></td>
													<td id="cal_18nl_12_10_2023"><a>12</a></td>
													<td id="cal_18nl_13_10_2023"><a>13</a></td>
													<td id="cal_18nl_14_10_2023" class="last"><a>14</a></td>
												</tr>
												<tr>
													<td id="cal_18nl_15_10_2023" class="first"><a>15</a></td>
													<td id="cal_18nl_16_10_2023"><a>16</a></td>
													<td id="cal_18nl_17_10_2023"><a>17</a></td>
													<td id="cal_18nl_18_10_2023" class="event event_popover" style="background: rgb(48, 55, 62);"><a data-original-title="Popover with HTML Content" data-trigger="manual" class="manual_popover" rel="popover" data-content="Some contents here <div class=&quot;text-right&quot;><a href=&quot;http://www.google.com&quot;>view more >>></a></div>">18</a></td>
													<td id="cal_18nl_19_10_2023"><a>19</a></td>
													<td id="cal_18nl_20_10_2023"><a>20</a></td>
													<td id="cal_18nl_21_10_2023" class="last"><a>21</a></td>
												</tr>
												<tr>
													<td id="cal_18nl_22_10_2023" class="first"><a>22</a></td>
													<td id="cal_18nl_23_10_2023"><a>23</a></td>
													<td id="cal_18nl_24_10_2023"><a>24</a></td>
													<td id="cal_18nl_25_10_2023"><a>25</a></td>
													<td id="cal_18nl_26_10_2023"><a>26</a></td>
													<td id="cal_18nl_27_10_2023"><a>27</a></td>
													<td id="cal_18nl_28_10_2023" class="last event event_tooltip" style="background: rgb(48, 55, 62);"><a data-original-title="Source Admin Launched" href="http://www.seantheme.com/source-admin-v1.5/" rel="tooltip">28</a></td>
												</tr>
												<tr>
													<td id="cal_18nl_29_10_2023" class="first"><a>29</a></td>
													<td id="cal_18nl_30_10_2023"><a>30</a></td>
													<td id="cal_18nl_31_10_2023"><a>31</a></td>
													<td class="invalid"></td>
													<td class="invalid"></td>
													<td class="invalid"></td>
													<td class="invalid last"></td>
												</tr>
											</tbody></table>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li class="nav-header">Latest Post</li>
								<li>
									<ul class="nav-post">
										<li>
											<div class="image">
												<img src="../assets/img/latest_post_1.jpg" alt="">
											</div>
											<div class="info">
												<div class="title">Mauris ac condimentum erat.
													Curabitur porta pretium ultricies.</div>
												<div class="time">Today, 8.12am</div>
											</div>
										</li>
										<li>
											<div class="image">
												<img src="../assets/img/latest_post_2.jpg" alt="">
											</div>
											<div class="info">
												<div class="title">Cras pretium ipsum vel nulla
													laoreet malesuada sed at turpis.</div>
												<div class="time">Yesterday, 11.42pm</div>
											</div>
										</li>
										<li>
											<div class="image">
												<img src="../assets/img/latest_post_3.jpg" alt="">
											</div>
											<div class="info">
												<div class="title">Ut sit amet vulputate ante. Nunc
													quis convallis arcu.</div>
												<div class="time">Posted on 3 days ago</div>
											</div>
										</li>
									</ul>
								</li>
								<li class="divider"></li>
							</ul>
						</div>
						<div class="tab-pane" id="notifications">
							<ul class="nav">
								<li class="nav-header">Mailbox</li>
								<li>
									<ul class="notification-list">
										<li>
											<div class="media">
												<i class="fa fa-check"></i>
											</div>
											<div class="info">
												<div class="title">
													<a href="javascript:;">PHP version updated</a>
												</div>
												<div class="time">Yesterday, 6.06pm</div>
												<div class="desc">Donec tristique malesuada nibh quis
													lobortis. Quisque viverra faucibus hendrerit.</div>
											</div>
										</li>
										<li>
											<div class="media">
												<i class="fa fa-bug text-danger"></i>
											</div>
											<div class="info">
												<div class="title">
													<a href="javascript:;">10 Unknown mysql query detected</a>
												</div>
												<div class="time">Yesterday, 12.05am</div>
												<div class="desc">Integer fermentum arcu et dolor
													sodales, quis laoreet justo aliquam.</div>
											</div>
										</li>
										<li>
											<div class="media">
												<img src="../assets/img/user_2.jpg" alt="">
											</div>
											<div class="info">
												<div class="title">
													<a href="javascript:;">New email from David</a>
												</div>
												<div class="time">Just now</div>
												<div class="desc">Nunc metus orci, lobortis eu luctus
													quis, dictum mollis ante.</div>
											</div>
										</li>
										<li>
											<div class="media">
												<img src="../assets/img/user_4.jpg" alt="">
											</div>
											<div class="info">
												<div class="title">
													<a href="javascript:;">New email from Terry</a>
												</div>
												<div class="time">Today, 12.05am</div>
												<div class="desc">Integer fermentum arcu et dolor
													sodales, quis laoreet justo aliquam.</div>
											</div>
										</li>
										<li>
											<div class="media">
												<img src="../assets/img/user_3.jpg" alt="">
											</div>
											<div class="info">
												<div class="title">
													<a href="javascript:;">New email from Tom (2)</a>
												</div>
												<div class="time">Yesterday, 5.23pm</div>
												<div class="desc">Integer fermentum arcu et dolor
													sodales, quis laoreet justo aliquam.</div>
											</div>
										</li>
									</ul>
								</li>
								<li class="divider"></li>
								<li class="nav-header">Activities Log</li>
								<li>
									<ul class="notification-list">
										<li>
											<div class="media">
												<i class="fa fa-cog"></i>
											</div>
											<div class="info">
												<div class="title">
													<a href="javascript:;">Your scheduled post has been
														published</a>
												</div>
												<div class="time">Just now</div>
												<div class="desc">Aenean lobortis libero libero, vitae
													imperdiet dolor dictum id.</div>
											</div>
										</li>
										<li>
											<div class="media">
												<i class="fa fa-shield-alt"></i>
											</div>
											<div class="info">
												<div class="title">
													<a href="javascript:;">Turn on the firewall</a>
												</div>
												<div class="time">Today, 7.08am</div>
												<div class="desc">Donec at augue in mi egestas luctus
													fermentum et ex.</div>
											</div>
										</li>
										<li>
											<div class="media">
												<i class="fa fa-user-plus"></i>
											</div>
											<div class="info">
												<div class="title">
													<a href="javascript:;">Added 2 admin user</a>
												</div>
												<div class="time">Today, 6.40am</div>
												<div class="desc">Quisque elementum urna placerat mi
													vestibulum lacinia.</div>
											</div>
										</li>
									</ul>
								</li>
								<li class="divider"></li>
							</ul>
						</div>
					</div>

				</div> --%>
				<div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 907px;"></div>
				<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>

		</div>
		<div class="sidebar-bg sidebar-right"></div>

	</div>


	<!-- <div class="theme-panel">
		<a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-tint"></i></a>
		<div class="theme-panel-content">
			<h5 class="m-t-0">Font Family</h5>
			<div class="row row-space-10">
				<div class="col-lg-12">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10 active" data-value="" data-src="" data-click="body-font-family">
						Default </a>
				</div>
				<div class="col-lg-6">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10" data-value="font-nunito" data-src="https://fonts.googleapis.com/css?family=Nunito:400,300,700" data-click="body-font-family"> Nunito </a>
				</div>
				<div class="col-lg-6">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10" data-value="font-open-sans" data-src="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" data-click="body-font-family"> Open Sans </a>
				</div>
				<div class="col-lg-6">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10" data-value="font-roboto" data-src="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900" data-click="body-font-family"> Roboto </a>
				</div>
				<div class="col-lg-6">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10" data-value="font-lato" data-src="https://fonts.googleapis.com/css?family=Lato:400,100,300,700,900" data-click="body-font-family"> Lato </a>
				</div>
				<div class="col-lg-12">
					<a href="#" class="btn btn-default btn-block btn-sm text-ellipsis" data-value="font-helvetica-arial" data-src="" data-click="body-font-family"> Helvetica Neue, Helvetica ,
						Arial </a>
				</div>
			</div>
			<div class="horizontal-divider"></div>
			<h5 class="m-t-0">Header Theme</h5>
			<ul class="theme-list clearfix">
				<li><a href="javascript:;" class="bg-inverse" data-value="navbar-inverse" data-click="header-theme-selector" data-toggle="tooltip" data-title="Default" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-grey" data-value="navbar-grey" data-click="header-theme-selector" data-toggle="tooltip" data-title="Grey" data-original-title="" title="">&nbsp;</a></li>
				<li class="active"><a href="javascript:;" class="bg-white" data-value="navbar-default" data-click="header-theme-selector" data-toggle="tooltip" data-title="Light" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-purple" data-value="navbar-purple" data-click="header-theme-selector" data-toggle="tooltip" data-title="Purple" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-primary" data-value="navbar-primary" data-click="header-theme-selector" data-toggle="tooltip" data-title="Primary" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-success" data-value="navbar-success" data-click="header-theme-selector" data-toggle="tooltip" data-title="Success" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-lime" data-value="navbar-lime" data-click="header-theme-selector" data-toggle="tooltip" data-title="Lime" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-warning" data-value="navbar-warning" data-click="header-theme-selector" data-toggle="tooltip" data-title="Warning" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-danger" data-value="navbar-danger" data-click="header-theme-selector" data-toggle="tooltip" data-title="Danger" data-original-title="" title="">&nbsp;</a></li>
			</ul>
			<div class="horizontal-divider"></div>
			<h5 class="m-t-0">Sidebar Highlight Color</h5>
			<ul class="theme-list clearfix">
				<li><a href="javascript:;" class="bg-inverse" data-value="sidebar-highlight-inverse" data-click="sidebar-highlight-selector" data-toggle="tooltip" data-title="Inverse" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-grey" data-value="sidebar-highlight-grey" data-click="sidebar-highlight-selector" data-toggle="tooltip" data-title="Grey" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-white" data-value="sidebar-highlight-light" data-click="sidebar-highlight-selector" data-toggle="tooltip" data-title="Light" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-purple" data-value="sidebar-highlight-purple" data-click="sidebar-highlight-selector" data-toggle="tooltip" data-title="Purple" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-primary" data-value="sidebar-highlight-primary" data-click="sidebar-highlight-selector" data-toggle="tooltip" data-title="Primary" data-original-title="" title="">&nbsp;</a></li>
				<li class="active"><a href="javascript:;" class="bg-success" data-value="" data-click="sidebar-highlight-selector" data-toggle="tooltip" data-title="Default" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-lime" data-value="sidebar-highlight-lime" data-click="sidebar-highlight-selector" data-toggle="tooltip" data-title="Lime" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-warning" data-value="sidebar-highlight-warning" data-click="sidebar-highlight-selector" data-toggle="tooltip" data-title="Warning" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-danger" data-value="sidebar-highlight-danger" data-click="sidebar-highlight-selector" data-toggle="tooltip" data-title="Danger" data-original-title="" title="">&nbsp;</a></li>
			</ul>
			<div class="horizontal-divider"></div>
			<h5 class="m-t-0">Sidebar Theme</h5>
			<ul class="theme-list clearfix">
				<li class="active"><a href="javascript:;" class="bg-inverse" data-value="" data-click="sidebar-theme-selector" data-toggle="tooltip" data-title="Default" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-grey" data-value="sidebar-grey" data-click="sidebar-theme-selector" data-toggle="tooltip" data-title="Grey" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-white" data-value="sidebar-light" data-click="sidebar-theme-selector" data-toggle="tooltip" data-title="Light" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-purple" data-value="sidebar-purple" data-click="sidebar-theme-selector" data-toggle="tooltip" data-title="Purple" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-primary" data-value="sidebar-primary" data-click="sidebar-theme-selector" data-toggle="tooltip" data-title="Primary" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-success" data-value="sidebar-success" data-click="sidebar-theme-selector" data-toggle="tooltip" data-title="Success" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-lime" data-value="sidebar-lime" data-click="sidebar-theme-selector" data-toggle="tooltip" data-title="Lime" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-warning" data-value="sidebar-warning" data-click="sidebar-theme-selector" data-toggle="tooltip" data-title="Warning" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-danger" data-value="sidebar-danger" data-click="sidebar-theme-selector" data-toggle="tooltip" data-title="Danger" data-original-title="" title="">&nbsp;</a></li>
			</ul>
		</div>
	</div> -->



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
	<!-- <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/v8b253dfea2ab4077af8c6f58422dfbfd1689876627854" integrity="sha512-bjgnUKX4azu3dLTVtie9u6TKqgx29RBwfj3QXYt5EKfWM/9hPSAI/4qcV5NACjwAo8UtTeWefx6Zq5PHcMm7Tg==" data-cf-beacon="{&quot;rayId&quot;:&quot;817469ae18dc8084&quot;,&quot;version&quot;:&quot;2023.8.0&quot;,&quot;r&quot;:1,&quot;token&quot;:&quot;4db8c6ef997743fda032d4f73cfeff63&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>

	<script type="text/javascript">
		//<canvas> 요소 선택
		var canvas = document.getElementById("monthly-report-chart");
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
	</script> -->

</body></html>
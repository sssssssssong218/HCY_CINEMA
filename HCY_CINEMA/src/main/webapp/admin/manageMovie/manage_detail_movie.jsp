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
									<a href="javascript:;" data-toggle="dropdown">admin <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="javascript:;">Log Out</a></li>
									</ul>
								</div>
								<div class="position">Front End Designer</div>
							</div>
						</li>
						<li class="nav-header">today work</li>
						<li class="active has-sub"><a href="../ManageDashBoard/manage_dashboard.jsp"> <img class="fa fa-home" src="../../common/images/dashboard2.png">
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
						<li class="has-sub"><a href="../ManageMovie/manage_movie.jsp">
								<img class="fa fa-inbox" src="../../common/images/movie_icon.png"> <span>영화</span>
						</a>
							<ul class="sub-menu">
								<li><a href="email_inbox.html">Inbox</a></li>
								<li><a href="email_compose.html">Compose</a></li>
								<li><a href="email_detail.html">Detail</a></li>
							</ul></li>
						<li><a href="widgets.html"> <img class="fa fa-gem" src="../../common/images/cinema_icon.png"> <span>상영관</span>
						</a></li>
						<li class="has-sub"><a href="javascript:;"> <img class="fa fa-suitcase" src="../../common/images/member_icon.png">
								<span>회원관리</span>
						</a></li>
						<li class="has-sub"><a href="javascript:;"> <img class="fa fa-file" src="../../common/images/board_icon.png">
								<span>게시판 관리</span>
						</a></li>
				</ul></div>
				<div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 197.948px;"></div>
				<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>

		</div>
		<div class="sidebar-bg"></div>


		

		<div id="sidebar-right" class="sidebar sidebar-right">

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

				</div>
				<div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 907px;"></div>
				<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>

		</div>
		
		<div id="content" class="content">

<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
<li class="breadcrumb-item"><a href="javascript:;">Form Stuff</a></li>
<li class="breadcrumb-item active">Form Elements</li>
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

%>

<h1 class="page-header">영화 추가</h1>

<form class="form-horizontal" accept-charset="UTF-8" action="modify_movie.jsp?movieCode=<%= movieCode %>" method="post" enctype="multipart/form-data" id="movie_info_all_frm">
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
for(int i=0;i<actorList.size();i++){
%>
<input type="text" class="form-control actor_input" value="<%= actorList.get(i) %>" id="actor_<%=i %>" name="actor_<%=i %>">
<%} %>
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
for(int i=0;i<extraList.size();i++){
%>
<input type="text" class="form-control extra_input" value="<%= extraList.get(i) %>" id="extra_<%= i %>" name="extra_<%=i%>">
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
for(int i=0;i<directorList.size();i++){
%>
<input class="form-control director_input" type="text" value="<%= directorList.get(i) %>" id="director_<%=i %>" name="director_<%=i%>">
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
<input type="radio" id="ageGroup" name="ageGroup" value="RS" <%= "RS".equals(mmVO.getMovieRatting()) ? "checked='checked'" : "" %>><label style="font-size:15px">제한사영가</label><img src="../../common/images/rs.png" style="padding-left:10px"><br>
</div>
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
      <img src="http://localhost/HCY_CINEMA/common/movie_files/<%= dmDAO.selectPoster(movieCode) %>" class="d-block w-100" style="height:440px;width:790px;">
    </div>
  </div>
</div>
<div style="display:inline-block">
	 	<fieldset>
			<p>스틸컷 : <input type="file" id="still_file" name="still_file" multiple="multiple"></p>
			<p><input type="hidden" value="" id="still_hide" name="still_hide"></p>	 	
	 	</fieldset>
	 </div>
	 <%
	 List<String> stillImgList=dmDAO.selectStill(movieCode);
	 %>
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


	<div class="theme-panel">
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
         // 복제한 라벨과 입력 요소를 추가
         actor_titleContainer.appendChild(actor_newLabel);
         actor_titleContainer.appendChild(actor_newInput);

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
         // 복제한 라벨과 입력 요소를 추가
         extra_titleContainer.appendChild(extra_newLabel);
         extra_titleContainer.appendChild(extra_newInput);

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
		
         // 복제한 라벨과 입력 요소를 추가
         director_titleContainer.appendChild(director_newLabel);
         director_titleContainer.appendChild(director_newInput);

         director_counter++; // 카운터 증가
     });
     var genre_addButton = document.getElementById("genre_btn");
     var genre_titleContainer = document.getElementById("genre_title");

     var genre_counter=<%=genreList.size()%>;

     genre_addButton.addEventListener("click", function() {
         var genre_label = genre_titleContainer.querySelector(".genre_label");
         var genre_Input = genre_titleContainer.querySelector(".genre_select");

         // 라벨 복사
         var genre_newLabel = genre_label.cloneNode(true);
         
         // 입력 요소 복사
         var genre_newInput = genre_Input.cloneNode(true);
         genre_newInput.name = "genre_select_" + genre_counter;
         genre_newInput.id = "genre_select_" + genre_counter;
         genre_newInput.style.position = "relative";
         genre_newInput.style.left="15px";
         genre_newInput.style.width = "450px";

         // 복제한 라벨과 입력 요소를 추가
         genre_titleContainer.appendChild(genre_newLabel);
         genre_titleContainer.appendChild(genre_newInput);
         
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
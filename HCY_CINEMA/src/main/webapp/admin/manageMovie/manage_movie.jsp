<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="movie.ManageMovieVO"%>
<%@page import="movie.ManageMovieMainDAO"%>
<%@page import="board.ManageBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>

<!doctype html>
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Source Admin | Dashboard v2</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport">
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

<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->




<script src="pace.min.js" type="text/javascript"></script>

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
</style>
</head>
<body class="  pace-done" cz-shortcut-listen="true">
	<div class="pace  pace-inactive">
		<div class="pace-progress" data-progress-text="100%"
			data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
			<div class="pace-progress-inner"></div>
		</div>
		<div class="pace-activity"></div>
	</div>

	<div id="page-loader" class="page-loader fade in hide">
		<span class="spinner">Loading...</span>
	</div>


	<div id="page-container"
		class="fade page-container page-header-fixed page-sidebar-fixed page-with-two-sidebar page-with-footer show">

		<div id="header" class="header navbar navbar-default navbar-fixed-top">

			<div class="container-fluid">

				<div class="navbar-header">
					<a href="../ManageDashBoard/manage_dashboard.jsp"
						class="navbar-brand" style="line-height: 0px"><img
						src="../../common/images/admin_logo.png"></a>
					<button type="button" class="navbar-toggle"
						data-click="sidebar-toggled">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
			</div>

		</div>


		<div id="sidebar" class="sidebar">

			<div class="slimScrollDiv"
				style="position: relative; overflow: hidden; width: auto; height: 100%;">
				<div data-scrollbar="true" data-height="100%" data-init="true"
					style="overflow: hidden; width: auto; height: 100%;">

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
						<li class="nav-header">today work</li>
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
						<li class="active has-sub"><a href="http://localhost/HCY_CINEMA/admin/ManageMovie/manage_movie.jsp">
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
					</ul>
				</div>
				<div class="slimScrollBar"
					style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 197.948px;"></div>
				<div class="slimScrollRail"
					style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>

		</div>
		<div class="sidebar-bg"></div>


		<div id="content" class="content">

			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">영화</a></li>
			</ol>


			<h1 class="page-header">
				Movie <small>Movie Manger</small>
			</h1>


			<div class="row">

				<div class="col-lg-10" >

					<div class="radius-container m-b-30"
						>


						<div
							class="panel pagination-inverse bg-white clearfix no-rounded-corner m-b-0"
							>

							<div id="data-table_wrapper"
								class="dataTables_wrapper form-inline dt-bootstrap no-footer"
								>
								<div class="row">
									<div class="col-sm-6">
										<div class="dataTables_length" id="data-table_length"></div>
									</div>
									<div class="col-sm-6">
										<div id="data-table_filter" class="dataTables_filter"></div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<table id="data-table" data-order="[[1,&quot;asc&quot;]]"
											class="table table-bordered table-hover dataTable no-footer dtr-inline collapsed"
											role="grid" aria-describedby="data-table_info"
											style="width: 1335px; height: 600px">
											<thead>
												<tr role="row">
													<th class="sorting_asc" tabindex="0"
														aria-controls="data-table" rowspan="1" colspan="1"
														style="width: 256px;" aria-sort="ascending"
														aria-label="Orders: activate to sort column descending"><input
														type="checkbox">영화</th>
													<th class="sorting_asc" tabindex="0"
														aria-controls="data-table" rowspan="1" colspan="1"
														style="width: 256px;" aria-sort="ascending"
														aria-label="Orders: activate to sort column descending">영화제목</th>
													<!-- 													<th class="width-100 sorting" tabindex="0"
														aria-controls="data-table" rowspan="1" colspan="1"
														style="width: 100px;"
														aria-label="Month: activate to sort column ascending">영화</th> -->
													<th class="sorting_asc" tabindex="0"
														aria-controls="data-table" rowspan="1" colspan="1"
														style="width: 150px;" aria-sort="ascending"
														aria-label="Orders: activate to sort column descending">상영상태</th>
													<th class="sorting" tabindex="0" aria-controls="data-table"
														rowspan="1" colspan="1" style="width: 150px;"
														aria-label="Earning: activate to sort column ascending">개봉일</th>
													<th class="sorting" tabindex="0" aria-controls="data-table"
														rowspan="1" colspan="1" style="width: 150px;"
														aria-label="Earning: activate to sort column ascending">종영일</th>
													<th class="sorting" tabindex="0" aria-controls="data-table"
														rowspan="1" colspan="1" style="width: 150px;"
														aria-label="Earning: activate to sort column ascending">예매</th>
													<th class="sorting" tabindex="0" aria-controls="data-table"
														rowspan="1" colspan="1" style="width: 150px;"
														aria-label="Earning: activate to sort column ascending">리뷰</th>
													<th class="sorting" tabindex="0" aria-controls="data-table"
														rowspan="1" colspan="1" style="width: 150px;"
														aria-label="Earning: activate to sort column ascending">평점</th>
													<!-- 	<th data-sorting="disabled" class="sorting_disabled"
														tabindex="0" aria-controls="data-table" rowspan="1"
														colspan="1" style="width: 451px;"
														aria-label=": activate to sort column descending"></th> -->
													<!-- <th class="width-50 sorting_disabled"
														data-sorting="disabled" tabindex="0"
														aria-controls="data-table" rowspan="1" colspan="1"
														style="width: 68px; display: none;"
														aria-label=": activate to sort column descending"></th> -->
												</tr>
											</thead>
											<tbody style="">

												<%
												ManageMovieMainDAO mmmDAO = ManageMovieMainDAO.getInstance();
												List<ManageMovieVO> list = new ArrayList<ManageMovieVO>();
												list = mmmDAO.selectMovie();
												for (ManageMovieVO mmVO : list) {
												%>

												<tr class="odd">
													<td id=<%=mmVO.getMname()%> tabindex="0"
														style="padding-left: 20px; vertical-align: middle;">
														<div style="display: inline-block;">
															<input type="checkbox" name="check" id="check" value="<%=mmVO.getMovieCode() %>">
														</div>
														<div style="display: inline-block;">
															<img
																src="http://localhost/HCY_CINEMA/common/movie_files/<%= mmVO.getFileName() %>" style="width:200px;height:200px;">
														</div>
													</td>

													<td class="p-5" style="vertical-align: middle;"><%=mmVO.getMname()%><br/>
													<a href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_detail_movie.jsp?movieCode=<%= mmVO.getMovieCode()%>">상세보기</a></td>
													<td class="p-5" style="vertical-align: middle;"><%=mmVO.getStatus()%></td>
													<td class="p-5" style="vertical-align: middle;"><%=mmVO.getReleaseDate()%></td>
													<td class="p-5" style="vertical-align: middle;"><%=mmVO.getEndDate()%></td>
													<td class="p-5" style="vertical-align: middle;"><%=mmVO.getTicketRate()%></td>
													<td class="p-5" style="vertical-align: middle;"><%=mmVO.getReviewCnt()%></td>
													<td class="p-5" style="vertical-align: middle;"><%=mmVO.getStarRating()%> / 5.0
														</td>
												</tr>

												<%
												}
												%>
												<!-- <tr class="odd">
													<td id="movie_title" tabindex="0"
														style="padding-left: 20px"><input type="checkbox">May</td>
													<td class="sorting_1">1,023 items sold</td>
													<td>$10,230</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr>
												<tr class="even">
													<td tabindex="0"><input type="checkbox">November</td>
													<td class="sorting_1">1,239 items sold</td>
													<td>$12,390</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr>
												<tr class="odd">
													<td tabindex="0"><input type="checkbox">February</td>
													<td class="sorting_1">1,392 items sold</td>
													<td>$13,920</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr>
												<tr class="even">
													<td tabindex="0"><input type="checkbox">July</td>
													<td class="sorting_1">1,499 items sold</td>
													<td>$14,990</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr>
												<tr class="odd">
													<td tabindex="0"><input type="checkbox">January</td>
													<td class="sorting_1">1,929 items sold</td>
													<td>$19,290</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr>
												<tr class="even">
													<td tabindex="0"><input type="checkbox">September</td>
													<td class="sorting_1">433 items sold</td>
													<td>$4,330</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr>
												<tr class="odd">
													<td tabindex="0"><input type="checkbox">June</td>
													<td class="sorting_1">502 items sold</td>
													<td>$5,020</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr>
												<tr class="even">
													<td tabindex="0"><input type="checkbox">October</td>
													<td class="sorting_1">581 items sold</td>
													<td>$5,810</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr>
												<tr class="odd">
													<td tabindex="0"><input type="checkbox">August</td>
													<td class="sorting_1">684 items sold</td>
													<td>$6,840</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr>
												<tr class="even">
													<td tabindex="0"><input type="checkbox">April</td>
													<td class="sorting_1">780 items sold</td>
													<td>$7,800</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5">
														<div data-render="sparkline">
															<canvas width="187" height="28"
																style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas>
														</div>
													</td>
													<td class="p-5" style="display: none;"><a href="#"
														class="btn btn-default btn-sm"><i class="fa fa-cog"></i>
															View Details</a></td>
												</tr> -->
											</tbody>
										</table>
									</div>
								</div>
							</div>

						</div>

					</div>

				</div>
				<form action="http://localhost/HCY_CINEMA/admin/manageMovie/manage_insert_movie.jsp" id="plusmovie" name="plusmovie">
	<input type="button" id="plus_btn" name="plus_btn" style="height:50px" value="영화 추가">
	<input type="button" id="minus_btn" name="minus_btn" style="height:50px" value="영화 종영">
			</form>
			</div>

		</div>

		<div id="sidebar-right" class="sidebar sidebar-right">

			<div class="slimScrollDiv"
				style="position: relative; overflow: hidden; width: auto; height: 100%;">
				<div data-scrollbar="true" data-height="100%" data-init="true"
					style="overflow: hidden; width: auto; height: 100%;">

					<ul class="nav nav-tabs" role="tablist">
						<li class="width-half"><a class="active" href="#today"
							data-toggle="tab">Today</a></li>
						<li class="width-half"><a href="#notifications"
							data-toggle="tab">Notifications</a></li>
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
												<tbody>
													<tr>
														<td><i class="icon-arrow-left"></i></td>
														<td colspan="5" class="year span6"><div
																class="visualmonthyear">October 2023</div></td>
														<td><i class="icon-arrow-right"></i></td>
													</tr>
												</tbody>
											</table>
											<table class="daysmonth table table">
												<tbody>
													<tr class="week_days">
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
														<td id="cal_18nl_4_10_2023" class="event event_popover"
															style="background: rgb(23, 182, 164);"><a
															data-original-title="Client Meeting"
															data-trigger="manual" class="manual_popover"
															rel="popover"
															data-content="<address class=&quot;m-b-0 text-inverse f-s-12&quot;>
																<strong>Twitter, Inc.</strong><br /> 795 Folsom Ave,
																Suite 600<br /> San Francisco, CA 94107 <br /> P:
																(123) 456-7890
																</address>">4
														</a></td>
														<td id="cal_18nl_5_10_2023"><a>5</a></td>
														<td id="cal_18nl_6_10_2023"><a>6</a></td>
														<td id="cal_18nl_7_10_2023"
															class="last event event_tooltip"
															style="background: rgb(48, 55, 62);"><a
															data-original-title="Bootstrap.com"
															href="http://www.getbootstrap.com" rel="tooltip">7</a></td>
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
														<td id="cal_18nl_18_10_2023" class="event event_popover"
															style="background: rgb(48, 55, 62);"><a
															data-original-title="Popover with HTML Content"
															data-trigger="manual" class="manual_popover"
															rel="popover"
															data-content="Some contents here <div class=&quot;text-right&quot;><a href=&quot;http://www.google.com&quot;>view more >>></a></div>">18</a></td>
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
														<td id="cal_18nl_28_10_2023"
															class="last event event_tooltip"
															style="background: rgb(48, 55, 62);"><a
															data-original-title="Source Admin Launched"
															href="http://www.seantheme.com/source-admin-v1.5/"
															rel="tooltip">28</a></td>
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
												</tbody>
											</table>
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
				<div class="slimScrollBar"
					style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 907px;"></div>
				<div class="slimScrollRail"
					style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>

		</div>
		<div class="sidebar-bg sidebar-right"></div>

	</div>
	
	<script src="jquery-3.3.1.min.js" type="text/javascript"></script>
	<script src="jquery-ui.min.js" type="text/javascript"></script>
	<script src="bootstrap.bundle.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
		<script src="../assets/crossbrowserjs/html5shiv.js"></script>
		<script src="../assets/crossbrowserjs/respond.min.js"></script>
	<![endif]-->
	<script src="jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="jquery.cookie.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

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
	<script src="../CSS/dropdown.js" type="text/javascript"></script>
	<!-- <script type="text/javascript">
		$(document).ready(function() {
		    App.init();
		    Demo.init();
		    PageDemo.init();
		});
	</script> -->

	<script async=""
		src="https://www.googletagmanager.com/gtag/js?id=G-Y3Q0VGQKY3"
		type="text/javascript"></script>
	<script type="text/javascript">
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'G-Y3Q0VGQKY3');
		
	
	</script>
	<script defer=""
		src="https://static.cloudflareinsights.com/beacon.min.js/v8b253dfea2ab4077af8c6f58422dfbfd1689876627854"
		integrity="sha512-bjgnUKX4azu3dLTVtie9u6TKqgx29RBwfj3QXYt5EKfWM/9hPSAI/4qcV5NACjwAo8UtTeWefx6Zq5PHcMm7Tg=="
		data-cf-beacon="{&quot;rayId&quot;:&quot;817469ae18dc8084&quot;,&quot;version&quot;:&quot;2023.8.0&quot;,&quot;r&quot;:1,&quot;token&quot;:&quot;4db8c6ef997743fda032d4f73cfeff63&quot;,&quot;si&quot;:100}"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		//<canvas> 요소 선택
		/* ar canvas = document.getElementById("monthly-report-chart");
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
		} */
		$(function(){
			$("#plus_btn").click(function(){
				$("#plusmovie").submit();
			});
			$("#minus_btn").click(function() {
			    var checkedCheckboxes = $(":checkbox[name='check']:checked");
			    
			    if (checkedCheckboxes.length > 0) {
			        var selectedValues = [];

			        checkedCheckboxes.each(function() {
			            selectedValues.push($(this).val());
			        });

			        var url = "http://localhost/HCY_CINEMA/admin/manageMovie/delete_movie.jsp";

			        if (selectedValues.length > 0) {
			            // 선택된 체크박스의 값들을 URL에 추가
			            url += "?check=" + selectedValues.join("&check=");
			        }

			        location.href = url;
			    } else {
			        alert("체크박스를 선택한 후 버튼을 눌러주세요!");
			    }
			});
		})
	</script>

</body>
</html>
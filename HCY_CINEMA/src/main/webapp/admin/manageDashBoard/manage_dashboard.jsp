<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.Format"%>
<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dashboard.DashBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en"><!--<![endif]--><head>
<meta charset="utf-8">
<title>Source Admin | Dashboard v2</title>
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



<script src="pace.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>
	    <script src="../assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
<style type="text/css">/* Chart.js */
@-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
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
<body class="  pace-done" cz-shortcut-listen="true"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

<div id="page-loader" class="page-loader fade in hide"><span class="spinner">Loading...</span></div>


<div id="page-container" class="fade page-container page-header-fixed page-sidebar-fixed page-with-two-sidebar page-with-footer show">

<div id="header" class="header navbar navbar-default navbar-fixed-top">

<div class="container-fluid">

<div class="navbar-header">
<a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp" class="navbar-brand" style="padding:-2px"><img src="http://localhost/HCY_CINEMA/common/images/admin_logo.png"></a>
<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>
</div>

</div>


<div id="sidebar" class="sidebar">

<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div data-scrollbar="true" data-height="100%" data-init="true" style="overflow: hidden; width: auto; height: 100%;">

<ul class="nav">
<li class="nav-user">
<div class="image">
<img src="http://localhost/HCY_CINEMA/common/images/admin.png" alt="">
</div>
<div class="info">
<div class="name dropdown">
<a href="javascript:;" data-toggle="dropdown"><%= session.getAttribute("userName") %> </a>
	<a href="#"onclick="logout();">Log Out</a>
</div>
</div>
</li>
<li class="nav-header">Navigation</li>
<li class="active has-sub">
<a href="javascript:;">
<img class="fa fa-home" src="http://localhost/HCY_CINEMA/common/images/dashboard2.png">
<span>Dashboard <!-- <span class="label label-theme m-l-3">NEW</span> --></span>
</a>
<!-- <ul class="sub-menu">
<li><a href="index.html">Dashboard v1</a></li>
<li><a href="index_v2.html">Dashboard v2</a></li>
<li class="active"><a href="index_v3.html">Dashboard v3</a></li>
<li><a href="index_v4.html">Dashboard v4 <i class="fa fa-paper-plane text-theme m-l-3"></i></a></li>
</ul> -->
</li>
<!-- <li>
<a href="bootstrap_4.html">
<div class="icon-img"><img src="../assets/img/bootstrap-4.png" alt=""></div>
<span>Bootstrap 4</span>
</a>
</li> -->



<li class="has-sub">
<a href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp">
<img class="fa fa-inbox" src="http://localhost/HCY_CINEMA/common/images/movie_icon.png">
<span>영화</span>
</a>
<ul class="sub-menu">
<li><a href="email_inbox.html">Inbox</a></li>
<li><a href="email_compose.html">Compose</a></li>
<li><a href="email_detail.html">Detail</a></li>
</ul>
</li>
<li>
<a href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen.jsp">
<img class="fa fa-gem" src="http://localhost/HCY_CINEMA/common/images/cinema_icon.png">
<span>상영관</span>
</a>
</li>
<li class="has-sub">
<a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp">
<img class="fa fa-suitcase" src="http://localhost/HCY_CINEMA/common/images/member_icon.png">
<span>회원관리</span>
</a>
</li>
<li class="has-sub">
<a href="http://localhost/HCY_CINEMA/admin/manageBoard/freeboard_list.jsp">
<img class="fa fa-file" src="http://localhost/HCY_CINEMA/common/images/board_icon.png">
<span>게시판 관리</span>
</a>

</li>
<li class=" has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageBoard/notice_list.jsp"> <img class="fa fa-file" src="../../common/images/notice_icon.png">
                                <span>공지사항 관리</span>
                            </a></li>


</div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 197.948px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>

</div>
<div class="sidebar-bg"></div>


<div id="content" class="content">

<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
</ol>


<h1 class="page-header">Dashboard v3 <small>header small text goes here...</small></h1>


<div class="row">

<div class="col-lg-10">

<div class="radius-container m-b-30">

<div class="panel no-rounded-corner bg-inverse text-white wrapper m-b-0"><div class="chartjs-size-monitor" style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>

<!-- <div class="btn-group btn-group-xs pull-right">
<a href="#" class="btn btn-white dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
<i class="fa fa-cog"></i> Settings <b class="caret text-muted"></b>
</a>
<ul class="dropdown-menu" role="menu">
<li><a href="javascript:;">Last Week</a></li>
<li><a href="javascript:;">Last Month</a></li>
<li><a href="javascript:;">Last Year</a></li>
</ul>
</div> -->


<h4 class="text-white m-t-0 m-b-10">
<i class="fa fa-snowflake-o text-success-light"></i> Sales Report
<small class="text-muted m-l-5">past 12 months</small>
</h4>


<canvas id="monthly-report-chart" height="431" style="display: block; width: 1293px; height: 431px;" width="1293" class="chartjs-render-monitor"></canvas>

</div>


<div class="panel pagination-inverse bg-white clearfix no-rounded-corner m-b-0">


<div id="data-table_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">

<div class="row">
<div class="col-sm-6"><div class="dataTables_length" id="data-table_length"><label>Show <select name="data-table_length" aria-controls="data-table" class="form-control input-sm"><option value="10">10</option><option value="20">20</option><option value="-1">All</option></select> entries</label></div></div><div class="col-sm-6"><div id="data-table_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="data-table"></label></div></div></div><div class="row"><div class="col-sm-12"><table id="data-table" data-order="[[1,&quot;asc&quot;]]" class="table table-bordered table-hover dataTable no-footer dtr-inline collapsed" role="grid" aria-describedby="data-table_info" style="width: 1335px;">
<thead>
<tr role="row"><th class="width-100 sorting" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" style="width: 100px;" aria-label="Month: activate to sort column ascending">Month</th><th class="sorting_asc" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" style="width: 256px;" aria-sort="ascending" aria-label="Orders: activate to sort column descending">Orders</th><th class="sorting" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" style="width: 206px;" aria-label="Earning: activate to sort column ascending">Earning</th><th data-sorting="disabled" class="sorting_disabled" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" style="width: 451px;" aria-label=": activate to sort column descending"></th><th class="width-50 sorting_disabled" data-sorting="disabled" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" style="width: 68px; display: none;" aria-label=": activate to sort column descending"></th></tr>
</thead>
<tbody>












<tr role="row" class="odd">
<td id="movie_title" tabindex="0" style="padding-left:20px">May</td>
<td class="sorting_1">1,023 items sold</td>
<td>$10,230</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr><tr role="row" class="even">
<td tabindex="0">November</td>
<td class="sorting_1">1,239 items sold</td>
<td>$12,390</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr><tr role="row" class="odd">
<td tabindex="0">February</td>
<td class="sorting_1">1,392 items sold</td>
<td>$13,920</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr><tr role="row" class="even">
<td tabindex="0">July</td>
<td class="sorting_1">1,499 items sold</td>
<td>$14,990</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr><tr role="row" class="odd">
<td tabindex="0">January</td>
<td class="sorting_1">1,929 items sold</td>
<td>$19,290</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr><tr role="row" class="even">
<td tabindex="0">September</td>
<td class="sorting_1">433 items sold</td>
<td>$4,330</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr><tr role="row" class="odd">
<td tabindex="0">June</td>
<td class="sorting_1">502 items sold</td>
<td>$5,020</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr><tr role="row" class="even">
<td tabindex="0">October</td>
<td class="sorting_1">581 items sold</td>
<td>$5,810</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr><tr role="row" class="odd">
<td tabindex="0">August</td>
<td class="sorting_1">684 items sold</td>
<td>$6,840</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr><tr role="row" class="even">
<td tabindex="0">April</td>
<td class="sorting_1">780 items sold</td>
<td>$7,800</td>
<td class="p-5"><div data-render="sparkline"><canvas width="187" height="28" style="display: inline-block; width: 187.422px; height: 28px; vertical-align: top;"></canvas></div></td>
<td class="p-5" style="display: none;"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-cog"></i> View Details</a></td>
</tr></tbody>
</table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="data-table_info" role="status" aria-live="polite">Showing 1 to 10 of 12 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="data-table_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="data-table_previous"><a href="#" aria-controls="data-table" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="data-table" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="data-table" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button next" id="data-table_next"><a href="#" aria-controls="data-table" data-dt-idx="3" tabindex="0">Next</a></li></ul></div></div></div></div>

</div>

</div>

</div>
<%
DecimalFormat df=new DecimalFormat("#,##0");
DashBoardDAO dbDAO=DashBoardDAO.getInstance();
int weekTicket=dbDAO.selectWeekTicketCnt();
int[] ticketCnt = new int[3];
ticketCnt=dbDAO.selectTicketCnt();
int[] memberCnt=new int[2];
memberCnt=dbDAO.selectMember();

int reviewCnt=dbDAO.selectReviewCnt();
int postCnt=dbDAO.selectPostCnt();
%>
<div class="col-lg-2">
<div class="row">
<div class="col-lg-12 col-lg-4 col-xs-6">

<div class="widget widget-stat bg-inverse text-white">
<!-- <div class="widget-stat-btn"><a href="#" data-click="widget-reload"><i class="fa fa-redo"></i></a></div> -->
<div class="widget-stat-number"><%= df.format(weekTicket) %></div>
<div class="widget-stat-text">이번주 총 예매 수</div>
</div>
<div class="widget widget-stat bg-inverse text-white">
<!-- <div class="widget-stat-btn"><a href="#" data-click="widget-reload"><i class="fa fa-redo"></i></a></div> -->
<div class="widget-stat-number"><%= df.format(ticketCnt[1]) %></div>
<div class="widget-stat-text">지난 한달 예매 수</div>
</div>

</div>
<div class="col-lg-12 col-lg-4 col-xs-6">

<div class="widget widget-stat bg-inverse text-white">
<!-- <div class="widget-stat-btn"><a href="#" data-click="widget-reload"><i class="fa fa-redo"></i></a></div> -->
<div class="widget-stat-number"><%= df.format(ticketCnt[0]) %><!--  <i class="fa fa-caret-up text-lime-light"></i> --></div>
<div class="widget-stat-text">지난 한달 공석 수</div>
</div>

</div>
<div class="col-lg-12 col-lg-4 col-xs-6">

<div class="widget widget-stat bg-inverse text-white">
<!-- <div class="widget-stat-btn"><a href="#" data-click="widget-reload"><i class="fa fa-redo"></i></a></div> -->
<div class="widget-stat-number"><%= df.format(ticketCnt[2]) %></div>
<div class="widget-stat-text">지난 한달 예매 취소 수</div>
</div>

</div>
<div class="col-lg-12 col-lg-4 col-xs-6">

<div class="widget widget-stat bg-inverse text-white">
<!-- <div class="widget-stat-btn"><a href="#" data-click="widget-reload"><i class="fa fa-redo"></i></a></div> -->
<div class="widget-stat-number"><%= df.format(memberCnt[0]) %> <!-- <i class="fa fa-caret-down text-danger-light"></i> --></div>
<div class="widget-stat-text">가입한 회원 수</div>
</div>

</div>
<div class="col-lg-12 col-lg-4 col-xs-6">

<div class="widget widget-stat bg-inverse text-white">
<!-- <div class="widget-stat-btn"><a href="#" data-click="widget-reload"><i class="fa fa-redo"></i></a></div> -->
<div class="widget-stat-number"><%= df.format(memberCnt[1]) %></div>
<div class="widget-stat-text">탈퇴한 회원 수</div>
</div>

</div>
<div class="col-lg-12 col-lg-4 col-xs-6">

<div class="widget widget-stat bg-inverse text-white">
<!-- <div class="widget-stat-btn"><a href="#" data-click="widget-reload"><i class="fa fa-redo"></i></a></div> -->
<div class="widget-stat-number"><%= df.format(reviewCnt) %> <!-- <i class="fa fa-caret-down text-danger-light"></i> --></div>
<div class="widget-stat-text">새로운 리뷰 수</div>
</div>

</div>
<div class="col-lg-12 col-lg-4 col-xs-6">

<div class="widget widget-stat bg-inverse text-white">
<!-- <div class="widget-stat-btn"><a href="#" data-click="widget-reload"><i class="fa fa-redo"></i></a></div> -->
<div class="widget-stat-number"><%= df.format(postCnt) %></div>
<div class="widget-stat-text">새로운 개시글 수</div>
</div>

</div>
<div class="col-lg-12 col-lg-4 col-xs-6">

<div class="widget widget-stat bg-inverse text-white">
<!-- <div class="widget-stat-btn"><a href="#" data-click="widget-reload"><i class="fa fa-redo"></i></a></div> -->
<div class="widget-stat-number"> <i id="currentTime"></i></div>
<div class="widget-stat-text">현재 시간</div>
</div>

</div>
</div>
</div>



</div>




</div>


<div id="sidebar-right" class="sidebar sidebar-right">

<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div data-scrollbar="true" data-height="100%" data-init="true" style="overflow: hidden; width: auto; height: 100%;">

<ul class="nav nav-tabs" role="tablist">
<li class="width-half"><a class="active" href="#today" data-toggle="tab">Today</a></li>
<li class="width-half"><a href="#notifications" data-toggle="tab">Notifications</a></li>
</ul>
<div class="tab-content">
<div class="tab-pane active" id="today">
<ul class="nav">
<li class="nav-date">
Sunday, May 31 st
</li>
<li class="divider"></li>
<li class="nav-header">Stocks</li>
<li>
<ul class="stock-list">
<li>
<div class="name">AAPL</div>
<div class="value">130.28</div>
<div class="percentage"><span class="label label-inverse">- 1.14%</span></div>
</li>
<li>
<div class="name">DOWJ</div>
<div class="value">18010.68</div>
<div class="percentage"><span class="label label-inverse">- 0.64%</span></div>
</li>
<li>
<div class="name">SBUX</div>
<div class="value">51.96</div>
<div class="percentage"><span class="label label-success">+ 0.29%</span></div>
</li>
<li>
<div class="name">NKE</div>
<div class="value">18010.68</div>
<div class="percentage"><span class="label label-inverse">- 0.62%</span></div>
</li>
<li>
<div class="name">YHOO</div>
<div class="value">42.94</div>
<div class="percentage"><span class="label label-inverse">- 0.31%</span></div>
</li>
</ul>
</li>
<li class="divider"></li>
<li class="nav-header">Calendar</li>
<li>
<div id="schedule-calendar"><div class="calendar" id="cal_18nl"><table class="table header"><tbody><tr></tr></tbody><td><i class="icon-arrow-left"></i></td><td colspan="5" class="year span6"><div class="visualmonthyear">October 2023</div></td><td><i class="icon-arrow-right"></i></td></table><table class="daysmonth table table"><tr class="week_days"><td class="first">S</td><td>M</td><td>T</td><td>W</td><td>T</td><td>F</td><td class="last">S</td></tr><tr><td id="cal_18nl_1_10_2023" class="first"><a>1</a></td><td id="cal_18nl_2_10_2023"><a>2</a></td><td id="cal_18nl_3_10_2023"><a>3</a></td><td id="cal_18nl_4_10_2023" class="event event_popover" style="background: rgb(23, 182, 164);"><a data-original-title="Client Meeting" data-trigger="manual" class="manual_popover" rel="popover" data-content="<address class=&quot;m-b-0 text-inverse f-s-12&quot;>   <strong>Twitter, Inc.</strong><br />   795 Folsom Ave, Suite 600<br />   San Francisco, CA 94107 <br />   P: (123) 456-7890</address>">4</a></td><td id="cal_18nl_5_10_2023"><a>5</a></td><td id="cal_18nl_6_10_2023"><a>6</a></td><td id="cal_18nl_7_10_2023" class="last event event_tooltip" style="background: rgb(48, 55, 62);"><a data-original-title="Bootstrap.com" href="http://www.getbootstrap.com" rel="tooltip">7</a></td></tr><tr><td id="cal_18nl_8_10_2023" class="first"><a>8</a></td><td id="cal_18nl_9_10_2023"><a>9</a></td><td id="cal_18nl_10_10_2023"><a>10</a></td><td id="cal_18nl_11_10_2023"><a>11</a></td><td id="cal_18nl_12_10_2023"><a>12</a></td><td id="cal_18nl_13_10_2023"><a>13</a></td><td id="cal_18nl_14_10_2023" class="last"><a>14</a></td></tr><tr><td id="cal_18nl_15_10_2023" class="first"><a>15</a></td><td id="cal_18nl_16_10_2023"><a>16</a></td><td id="cal_18nl_17_10_2023"><a>17</a></td><td id="cal_18nl_18_10_2023" class="event event_popover" style="background: rgb(48, 55, 62);"><a data-original-title="Popover with HTML Content" data-trigger="manual" class="manual_popover" rel="popover" data-content="Some contents here <div class=&quot;text-right&quot;><a href=&quot;http://www.google.com&quot;>view more >>></a></div>">18</a></td><td id="cal_18nl_19_10_2023"><a>19</a></td><td id="cal_18nl_20_10_2023"><a>20</a></td><td id="cal_18nl_21_10_2023" class="last"><a>21</a></td></tr><tr><td id="cal_18nl_22_10_2023" class="first"><a>22</a></td><td id="cal_18nl_23_10_2023"><a>23</a></td><td id="cal_18nl_24_10_2023"><a>24</a></td><td id="cal_18nl_25_10_2023"><a>25</a></td><td id="cal_18nl_26_10_2023"><a>26</a></td><td id="cal_18nl_27_10_2023"><a>27</a></td><td id="cal_18nl_28_10_2023" class="last event event_tooltip" style="background: rgb(48, 55, 62);"><a data-original-title="Source Admin Launched" href="http://www.seantheme.com/source-admin-v1.5/" rel="tooltip">28</a></td></tr><tr><td id="cal_18nl_29_10_2023" class="first"><a>29</a></td><td id="cal_18nl_30_10_2023"><a>30</a></td><td id="cal_18nl_31_10_2023"><a>31</a></td><td class="invalid"></td><td class="invalid"></td><td class="invalid"></td><td class="invalid last"></td></tr></table></div></div>
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
<div class="title">Mauris ac condimentum erat. Curabitur porta pretium ultricies.</div>
<div class="time">Today, 8.12am</div>
</div>
</li>
<li>
<div class="image">
<img src="../assets/img/latest_post_2.jpg" alt="">
</div>
<div class="info">
<div class="title">Cras pretium ipsum vel nulla laoreet malesuada sed at turpis.</div>
<div class="time">Yesterday, 11.42pm</div>
</div>
</li>
<li>
<div class="image">
<img src="../assets/img/latest_post_3.jpg" alt="">
</div>
<div class="info">
<div class="title">Ut sit amet vulputate ante. Nunc quis convallis arcu.</div>
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
<div class="media"><i class="fa fa-check"></i></div>
<div class="info">
<div class="title"><a href="javascript:;">PHP version updated</a></div>
<div class="time">Yesterday, 6.06pm</div>
<div class="desc">Donec tristique malesuada nibh quis lobortis. Quisque viverra faucibus hendrerit.</div>
</div>
</li>
<li>
<div class="media"><i class="fa fa-bug text-danger"></i></div>
<div class="info">
<div class="title"><a href="javascript:;">10 Unknown mysql query detected</a></div>
<div class="time">Yesterday, 12.05am</div>
<div class="desc">Integer fermentum arcu et dolor sodales, quis laoreet justo aliquam.</div>
</div>
</li>
<li>
<div class="media"><img src="../assets/img/user_2.jpg" alt=""></div>
<div class="info">
<div class="title"><a href="javascript:;">New email from David</a></div>
<div class="time">Just now</div>
<div class="desc">Nunc metus orci, lobortis eu luctus quis, dictum mollis ante.</div>
</div>
</li>
<li>
<div class="media"><img src="../assets/img/user_4.jpg" alt=""></div>
<div class="info">
<div class="title"><a href="javascript:;">New email from Terry</a></div>
<div class="time">Today, 12.05am</div>
<div class="desc">Integer fermentum arcu et dolor sodales, quis laoreet justo aliquam.</div>
</div>
</li>
<li>
<div class="media"><img src="../assets/img/user_3.jpg" alt=""></div>
<div class="info">
<div class="title"><a href="javascript:;">New email from Tom (2)</a></div>
<div class="time">Yesterday, 5.23pm</div>
<div class="desc">Integer fermentum arcu et dolor sodales, quis laoreet justo aliquam.</div>
</div>
</li>
</ul>
</li>
<li class="divider"></li>
<li class="nav-header">Activities Log</li>
<li>
<ul class="notification-list">
<li>
<div class="media"><i class="fa fa-cog"></i></div>
<div class="info">
<div class="title"><a href="javascript:;">Your scheduled post has been published</a></div>
<div class="time">Just now</div>
<div class="desc">Aenean lobortis libero libero, vitae imperdiet dolor dictum id.</div>
</div>
</li>
<li>
<div class="media"><i class="fa fa-shield-alt"></i></div>
<div class="info">
<div class="title"><a href="javascript:;">Turn on the firewall</a></div>
<div class="time">Today, 7.08am</div>
<div class="desc">Donec at augue in mi egestas luctus fermentum et ex.</div>
</div>
</li>
<li>
<div class="media"><i class="fa fa-user-plus"></i></div>
<div class="info">
<div class="title"><a href="javascript:;">Added 2 admin user</a></div>
<div class="time">Today, 6.40am</div>
<div class="desc">Quisque elementum urna placerat mi vestibulum lacinia.</div>
</div>
</li>
</ul>
</li>
<li class="divider"></li>
</ul>
</div>
</div>

</div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 907px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>

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
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-Y3Q0VGQKY3');
</script>
<script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/v8b253dfea2ab4077af8c6f58422dfbfd1689876627854" integrity="sha512-bjgnUKX4azu3dLTVtie9u6TKqgx29RBwfj3QXYt5EKfWM/9hPSAI/4qcV5NACjwAo8UtTeWefx6Zq5PHcMm7Tg==" data-cf-beacon="{&quot;rayId&quot;:&quot;817469ae18dc8084&quot;,&quot;version&quot;:&quot;2023.8.0&quot;,&quot;r&quot;:1,&quot;token&quot;:&quot;4db8c6ef997743fda032d4f73cfeff63&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>

 <script type="text/javascript">
//<canvas> 요소 선택
var canvas = document.getElementById("monthly-report-chart");
var ctx = canvas.getContext("2d");
var barWidth = 40; // 막대 폭
var startX = 20; // 그래프 시작 위치

// 간격 설정
var spacing1 = 10; // 첫 번째 그래프와 두 번째 그래프 사이 간격
var spacing2 = 180; // 두 번째 그래프와 세 번째 그래프 사이 간격
var spacing3 = 10; // 세 번째 그래프와 나머지 간격

ctx.font = "15px Arial"; // 글꼴 및 크기 설정
ctx.fillStyle = "white"; // 텍스트 색상 설정

<%
dbDAO = DashBoardDAO.getInstance();
List<String> list = new ArrayList<String>();
list = dbDAO.selectMovieCntInfo();

dbDAO.selectTicketCnt();
%>

// 서버에서 데이터를 가져와서 JavaScript 변수로 변환 및 필터링 및 정렬
var filteredData = [];
<% if (list.size() > 0) { %>
    var rawData = [];
    <% for (int i = 0; i < list.size(); i += 3) { %>
        var value1 = <%= list.get(i) %>;
        var value2 = <%= (i + 1 < list.size()) ? list.get(i + 1) : 0 %>;
        var text = "<%= list.get(i + 2) %>";

        // 첫 번째 값 또는 두 번째 값 중 하나라도 있는 데이터만 추가
        if (value1 > 0 || value2 > 0) {
            rawData.push({ value1, value2, text });
        }
    <% } %>

    // 데이터를 첫 번째 값이 큰 순서대로 정렬
    rawData.sort(function(a, b) {
        return b.value1 - a.value1;
    });

    // 정렬된 데이터를 필터링된 데이터에 추가
    filteredData = rawData;
<% } %>

if (filteredData.length > 0) {
    var totalWidth = filteredData.length * (2 * barWidth + spacing1 + spacing2) - spacing1 - spacing2;
    var xOffset = (canvas.width - totalWidth) / 2;

    var maxValue = filteredData[0].value1; // 첫 번째 값이 가장 큰 값

    for (var i = 0; i < filteredData.length; i++) {
        var value1 = filteredData[i].value1;
        var value2 = filteredData[i].value2;
        var text = filteredData[i].text;

        // 그래프 높이를 최대값에 비례하여 계산
        var scaledValue1 = (value1 / maxValue) * (canvas.height - 60);
        var scaledValue2 = (value2 / maxValue) * (canvas.height - 60);

        // 파란색 그래프 그리기
        ctx.fillStyle = "blue";
        ctx.fillRect(xOffset, canvas.height - 60 - scaledValue1, barWidth, scaledValue1);

        // 빨간색 그래프 그리기
        ctx.fillStyle = "red";
        ctx.fillRect(xOffset + barWidth + spacing1, canvas.height - 60 - scaledValue2, barWidth, scaledValue2);

        // 텍스트의 폭을 측정
        var textWidth = ctx.measureText(text).width;

        // 텍스트를 중앙에 맞추기
        var textX = xOffset + barWidth + (barWidth - textWidth) / 2;
        var textY = canvas.height - 10;

        ctx.fillStyle = "white";
        ctx.fillText(text, textX-10, textY);

        xOffset += 2 * barWidth + spacing1 + spacing2;
        
    }
} else {
    // 데이터가 없을 때 처리
    // 예를 들어, 어떤 메시지를 화면에 표시할 수 있습니다.
    ctx.fillStyle = "white";
    ctx.fillText("No data available", canvas.width / 2 - 60, canvas.height / 2);
}
//마우스 이벤트 처리


canvas.addEventListener("mouseout", function(event) {
    hideTooltip(); // 마우스가 그래프에서 벗어나면 툴팁을 숨김
});

function showTooltip(event, data) {
    tooltip.style.display = "block";
    tooltip.style.left = event.clientX + 10 + "px";
    tooltip.style.top = event.clientY + 10 + "px";
    tooltip.textContent = "Value 1: " + data.value1 + " - Value 2: " + data.value2;
}

function hideTooltip() {
    tooltip.style.display = "none";
}
// 현재 시간을 가져오는 함수
function displayCurrentTime() {
    var currentTimeElement = document.getElementById("currentTime");
    var now = new Date();
    var hours = now.getHours();
    var minutes = now.getMinutes();
    var seconds = now.getSeconds();
    
    // 시간, 분, 초를 두 자리로 표시하기
    if (hours < 10) hours = "0" + hours;
    if (minutes < 10) minutes = "0" + minutes;
    if (seconds < 10) seconds = "0" + seconds;

    var currentTimeString = hours + ":" + minutes + ":" + seconds;
    currentTimeElement.textContent = currentTimeString;
}

// 1초마다 현재 시간 업데이트
setInterval(displayCurrentTime, 1000);

// 페이지 로드 시 현재 시간 표시
window.onload = displayCurrentTime;
</script>

</body>
</html>
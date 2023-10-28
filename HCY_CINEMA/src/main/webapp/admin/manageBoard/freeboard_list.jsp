<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="manageMember.BoardRangeVO"%>
<%@page import="board.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="board.ManageBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en"><!--<![endif]--><head>
<meta charset="utf-8">
<meta name="viewport" content="width=1200, user-scalable=no">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>자유게시판 1 페이지 </title>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.ncyok.or.kr:443/theme/basic/css/default.css?ver=1697535328">
<link rel="stylesheet" href="https://www.ncyok.or.kr:443/skin/board/basic/style.css">

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

<script src="https://www.ncyok.or.kr:443/js/jquery-1.8.3.min.js"></script>
<script src="https://www.ncyok.or.kr:443/js/jquery.menu.js"></script>
<script src="https://www.ncyok.or.kr:443/js/common.js"></script>
<script src="https://www.ncyok.or.kr:443/js/wrest2.js"></script>
<script src="https://www.ncyok.or.kr:443/js/printThis.js"></script>
<meta name="naver-site-verification" content="8e74a1f533fc95526c71b92c12475d0129bcdd32">
<meta name="robots" content="index,follow">
<meta name="author" content="www.ncyok.or.kr"> 
<meta name="description" content="연구 및 연수활동, 정보지원활동, 국제교류활동, 대회협력활동, 청협사이버평생교육원">
<meta name="title" content="한국청소년단체협의회">
<meta name="og:title" content="한국청소년단체협의회"> 
<meta name="og:description" content="연구 및 연수활동, 정보지원활동, 국제교류활동, 대회협력활동, 청협사이버평생교육원">
<meta property="og:image" content="/img/meta.jpg">
<link rel="canonical" href="https://ncyok.or.kr/index.php">


<script src="pace.min.js" type="text/javascript"></script>

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

<body class="pace-done" cz-shortcut-listen="true">
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
					<a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp" class="navbar-brand" style="line-height: 0px"><img src="../../common/images/admin_logo.png"></a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
				</div>
			</div>

		</div>


		<div id="sidebar" class="active sidebar">

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
						<li class="has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp">
								<img class="fa fa-inbox" src="../../common/images/movie_icon.png"> <span>영화</span>
						</a>
							<ul class="sub-menu">
								<li><a href="email_inbox.html">Inbox</a></li>
								<li><a href="email_compose.html">Compose</a></li>
								<li><a href="email_detail.html">Detail</a></li>
							</ul></li>
						<li><a href="widgets.html"> <img class="fa fa-gem" src="../../common/images/cinema_icon.png"> <span>상영관</span>
						</a></li>
						<li class=" has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp"> <img class="fa fa-suitcase" src="../../common/images/member_icon.png">
								<span>회원관리</span>
						</a></li>
						<li class="active has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageBoard/freeboard_list.jsp"> <img class="fa fa-file" src="../../common/images/board_icon.png">
								<span>게시판 관리</span>
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
				<li class="breadcrumb-item"><a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp">게시판</a></li>
				<li class="breadcrumb-item active">Dashboard v3</li>
			</ol>


			<h1 class="page-header">
				Manage Board <small>Manage Board </small>
			</h1>


			<div class="row">

		          <div id="container">
                        
             
            <!--div class="conTit_tt">
                                                        <span>
                        공지사항
                    </span>
                            </div-->

	
		<div class="scontA">
            <!--  서브상단 이미지 및 로케이션 단  시작 -->
                <div id="sVisualA" class="svbgc0 svbg_1050">

    <div class="svisTxt">
        <span></span>
        <p></p>
    </div>

    <div id="container_title">
 
        
        <div class="right_wrap">
                        				
        </div>
        <!-- <div align="right"><button type="button" class="btn btn-dark" style="width:150px;height:50px">글 쓰기</button></div> -->
    </div>
    <script>
        $('.btn_print').on('click',function(){
            $('#container').printThis();				
        })
    </script>
</div>            <!--  서브상단 이미지 및 로케이션 단 끝 -->
						<!-- me_code : 105010-->
<h2 id="container_title">자유게시판<span class="sound_only"> 목록</span></h2>
<!-- 게시판 목록 시작 { -->
<div id="bo_list" style="width:100%">



 <!-- 게시판 페이지 정보 및 버튼 시작 { -->
 <div class="bo_fx" style="width:50%; margin-left:500px "> 

    <!-- 게시판 카테고리 시작 { -->
        <!-- } 게시판 카테고리 끝 -->



<!-- 게시판 검색 시작 { -->
    <fieldset id="bo_sch">
        <legend>자유게시판 관리</legend>
        <form name="fsearch" method="get" style="display: flex; align-items: center;">
        <label for="sfl" class="sound_only">검색대상</label>
        
        <select name="field" id="field">
            <!--option value="wr_subject">제목</option>
            <option value="wr_content">내용</option-->
            <option value="1"${param.field eq '1'?" selected='selected'":"" }>아이디</option>
            <option value="2"${param.field eq '2'?" selected='selected'":"" }>제목</option>
            
            <!--option value="mb_id,0">회원아이디(코)</option>
            <option value="wr_name,1">글쓴이</option>
            <option value="wr_name,0">글쓴이(코)</option-->
        </select>
        <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
        <input type="text" name="keyword" value="" required="" id="keyword" class="frm_input required" size="15" maxlength="20" "="" placeholder="검색어를 입력해주세요" style="flex: 1; height:42px">
        <input type="submit" value="검색" class="btn_search" style="margin-left: 10px;">
        </form>
    </fieldset>
<!-- } 게시판 검색 끝 -->
    <!--div id="bo_list_total">
        <span>Total 2,584건</span>
        1 페이지
    </div-->
</div>
<div align="right"><button type="button" class="btn btn-dark" style="width:150px;height:50px">글 쓰기</button></div><br>
<!-- } 게시판 페이지 정보 및 버튼 끝 -->


    <form name="fboardlist" id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
    <input type="hidden" name="bo_table" value="5010">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="sca" value="">
    <input type="hidden" name="sst" value="wr_datetime desc">
    <input type="hidden" name="sod" value="">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value="">

    <div class="tbl_head01 tbl_wrap">
        <table style="text-align:center">
       <%
       ManageBoardDAO mbDAO=ManageBoardDAO.getInstance();
       BoardRangeVO brVO=new BoardRangeVO();
       
       String field=request.getParameter("field");
       String keyword=request.getParameter("keyword");
       
       brVO.setField(request.getParameter("field"));
       brVO.setKeyword(request.getParameter("keyword"));
       
       //총 레코드 수
       int totalCount= mbDAO.totalCount(brVO);
       
       //한 화면에 보여줄 게시물의 수
       int pageScale=10;
       
       //총 페이지 수
       int totalPage=0;
       totalPage=(int)Math.ceil(totalCount/(double)pageScale);
       
       //현재페이지의 시작번호
       String tempPage=request.getParameter("currentPage");
       int currentPage=1;
       
       if(tempPage!=null){
    	   currentPage=Integer.parseInt(tempPage);
       }//end if
       
       //시작번호
       int startNum=currentPage*pageScale-pageScale+1;
       pageContext.setAttribute("startNum", startNum);
       
       //끝번호
       int endNum=startNum+pageScale-1;
       
       brVO.setStartNum(startNum);
       brVO.setEndNum(endNum);
       %>

       총<%= totalCount %>개의 게시글이 조회되었습니다.<br/><br/>
       
       <%
       try{
       List<BoardVO> list=ManageBoardDAO.getInstance().selectBoard(brVO);
       out.println(list);
       pageContext.setAttribute("boardList", list);
       }catch(SQLException se){
    	   se.printStackTrace();
       }
       %>
        <thead>
        <tr bgcolor="#E4ECEF" style="text-align:center">
            <th scope="col" style="width: 200px">게시글 번호</th>
            <th scope="col" style="width: 200px">아이디</th>
            <th scope="col" style="width: 500px">제목</th>
            <th scope="col" style="width: 200px">등록일</th>
            <th scope="col" style="width: 200px">조회 수</th>
        </tr>
        </thead>
        <tbody style="text-align:center">
        <c:if test="${empty boardList }">
        <tr>
        	<td colspan="5" style="text-align:center">게시글이 존재하지 않습니다</td>
        </tr>
        </c:if>
        <c:forEach var="board" items="${boardList }" varStatus="i">
        <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor='#fafafa'" onmouseout="this.style.backgroundColor='#ffffff'" style="background-color: rgb(255, 255, 255);">
        	<td><c:out value="${board.postNum}"/></td>
        	<td><a href="http://localhost/HCY_CINEMA/admin/manageBoard/freeboard_info.jsp?boardId=<c:out value='${ board.id }'/>"><c:out value="${ board.id }"/></a></td>
       		<td><c:out value="${board.title }"/></td>
       		<td><c:out value="${board.inputDate }"/></td>
       		<td><c:out value="${board.viewCount }"/></td>
        </tr>
        </c:forEach>
        
            <!-- <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor='#fafafa'" onmouseout="this.style.backgroundColor='#ffffff'" style="background-color: rgb(255, 255, 255);">
            <td class="td_num">
            <strong>2584</strong></td>
            <td class="td_num">
            <strong>hihi</strong></td>
            <td class="td_subject">
           <a href="https://www.ncyok.or.kr:443/bbs/board.php?bo_table=5010&amp;wr_id=2745">
                    ♠「K-청소년 디지털 역량 강화 캠프」고등부 프로그램 공지 ♠</a>
			</td>
            <td class="td_datetime">2023-10-10</td>
            <td class="td_num">216</td>
            </tr> -->
            
            
        </tbody>
        </table>
   		 </div>

        </form>
</div>







<!-- 페이지 -->


<!-- } 게시판 목록 끝 -->
    </div>
		</div>
			</div>

		</div>

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
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'G-Y3Q0VGQKY3');
	</script>
	<script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/v8b253dfea2ab4077af8c6f58422dfbfd1689876627854" integrity="sha512-bjgnUKX4azu3dLTVtie9u6TKqgx29RBwfj3QXYt5EKfWM/9hPSAI/4qcV5NACjwAo8UtTeWefx6Zq5PHcMm7Tg==" data-cf-beacon="{&quot;rayId&quot;:&quot;817469ae18dc8084&quot;,&quot;version&quot;:&quot;2023.8.0&quot;,&quot;r&quot;:1,&quot;token&quot;:&quot;4db8c6ef997743fda032d4f73cfeff63&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>

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
	</script>

</body></html>
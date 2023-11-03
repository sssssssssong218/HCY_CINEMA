<%@page import="board.NoticeVO"%>
<%@page import="java.util.List"%>
<%@page import="board.ManageNoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<!doctype html>
<html lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=1200, user-scalable=no">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>공지사항 - 글쓰기</title>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://www.ncyok.or.kr:443/theme/basic/css/default.css?ver=1697535328">
<link rel="stylesheet"
	href="https://www.ncyok.or.kr:443/skin/board/basic/style.css">

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

<script src="https://www.ncyok.or.kr:443/js/jquery-1.8.3.min.js"></script>
<script src="https://www.ncyok.or.kr:443/js/jquery.menu.js"></script>
<script src="https://www.ncyok.or.kr:443/js/common.js"></script>
<!--     <script src="https://www.ncyok.or.kr:443/js/wrest2.js"></script> -->
<script src="https://www.ncyok.or.kr:443/js/printThis.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<meta name="naver-site-verification"
	content="8e74a1f533fc95526c71b92c12475d0129bcdd32">
<meta name="robots" content="index,follow">
<meta name="author" content="www.ncyok.or.kr">
<meta name="description"
	content="연구 및 연수활동, 정보지원활동, 국제교류활동, 대회협력활동, 청협사이버평생교육원">
<meta name="title" content="한국청소년단체협의회">
<meta name="og:title" content="한국청소년단체협의회">
<meta name="og:description"
	content="연구 및 연수활동, 정보지원활동, 국제교류활동, 대회협력활동, 청협사이버평생교육원">
<meta property="og:image" content="/img/meta.jpg">
<link rel="canonical" href="https://ncyok.or.kr/index.php">


<script src="pace.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>
	    <script src="../assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
<style type="text/css">
/* Chart.js */
@
-webkit-keyframes chartjs-render-animation {from { opacity:0.99
	
}

to {
	opacity: 1
}

}
@
keyframes chartjs-render-animation {from { opacity:0.99
	
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
<script type="text/javascript">
	$(function() {
		$('#note').summernote(
				{
					toolbar : [
					// [groupName, [list of button]]
					[ 'style', [ 'bold', 'italic', 'underline', 'clear' ] ],
					//['font', ['strikethrough', 'superscript', 'subscript']],
					[ 'fontsize', [ 'fontsize' ] ], [ 'color', [ 'color' ] ],
							[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
							//  ['height', ['height']]
							[ 'table', [ 'table' ] ],
							/* [ 'insert', [ 'picture' ] ]  */],
					placeholder : '공지사항을 입력해주세요',
					width : 1000,
					height : 300,
					lang : 'ko-KR'
				});//summernote
		
	}); //ready
</script>
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
					<a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp"
						 style="line-height: 0px"><img
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
									<a href="javascript:;" data-toggle="dropdown">admin <b
										class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="javascript:;">Log Out</a></li>
									</ul>
								</div>
								<div class="position">Front End Designer</div>
							</div>
						</li>
						<li class="nav-header">today work</li>
						<li class=" has-sub"><a
							href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp">
								<img class="fa fa-home" src="../../common/images/dashboard2.png">
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
						<li class="has-sub"><a
							href="http://localhost/HCY_CINEMA/admin/manageMovie/manage_movie.jsp">
								<img class="fa fa-inbox"
								src="../../common/images/movie_icon.png"> <span>영화</span>
						</a>
							<ul class="sub-menu">
								<li><a href="email_inbox.html">Inbox</a></li>
								<li><a href="email_compose.html">Compose</a></li>
								<li><a href="email_detail.html">Detail</a></li>
							</ul></li>
						<li><a
							href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen.jsp">
								<img class="fa fa-gem" src="../../common/images/cinema_icon.png">
								<span>상영관</span>
						</a></li>
						<li class="has-sub"><a
							href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp">
								<img class="fa fa-suitcase"
								src="../../common/images/member_icon.png"> <span>회원관리</span>
						</a></li>
						<li class="has-sub"><a
							href="http://localhost/HCY_CINEMA/admin/manageBoard/freeboard_list.jsp">
								<img class="fa fa-file" src="../../common/images/board_icon.png">
								<span>게시판 관리</span>
						</a></li>
						<li class="active has-sub"><a
							href="http://localhost/HCY_CINEMA/admin/manageBoard/notice_list.jsp">
								<img class="fa fa-file"
								src="../../common/images/notice_icon.png"> <span>공지사항
									관리</span>
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

			<ol style="text-align: right">
				<li class="breadcrumb-item"><a
					href="http://localhost/HCY_CINEMA/admin/manageBoard/notice_list.jsp">Home</a></li>
				<li class="breadcrumb-item"><a
					href="http://localhost/HCY_CINEMA/admin/manageBoard/notice_list.jsp">공지사항
						관리</a></li>
			</ol>


			<h1 class="page-header">
				Manage Notice <small>Manage Notice </small>
			</h1>


			<div class="row">
				<div id="container">


					<!--div class="conTit_tt">
                                                        <span>
                        청소년 마당
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

								<div class="conTit_tt">
									<span>공지사항 - 글쓰기</span>


								</div>
								<div class="right_wrap"></div>
							</div>
							<script>
								$('.btn_print').on('click', function() {
									$('#container').printThis();
								})
							</script>
						</div>
						<!--  서브상단 이미지 및 로케이션 단 끝 -->
						<!-- me_code : 105030-->
						<!-- skin : basic -->
						<section id="bo_w">


							<!-- 게시물 작성/수정 시작 { -->
							<input type="hidden" name="uid" value="23101916055704"> <input
								type="hidden" name="w" value=""> <input type="hidden"
								name="bo_table" value="5025"> <input type="hidden"
								name="wr_id" value="0"> <input type="hidden" name="sca"
								value=""> <input type="hidden" name="sfl" value="">
							<input type="hidden" name="stx" value=""> <input
								type="hidden" name="spt" value=""> <input type="hidden"
								name="sst" value=""> <input type="hidden" name="sod"
								value=""> <input type="hidden" name="page" value="">
							<input type="hidden" value="html1" name="html">
							<div class="tbl_frm01 tbl_wrap">
							<form action="http://localhost/HCY_CINEMA/admin/manageBoard/notice_save.jsp"
											method="post" id="frm" name="frm">
								<table>
									<tbody>
										<%
										request.setCharacterEncoding("UTF-8");
										
										String section=request.getParameter("section");
										String title=request.getParameter("title");
										String content=request.getParameter("content");
										String notice = request.getParameter("noticeNum");
										
										
										int noticeNum = 0;

										if (notice != null && !notice.isEmpty()) {
											noticeNum = Integer.parseInt(notice);
										}
										ManageNoticeDAO mnDAO = ManageNoticeDAO.getInstance();
										List<NoticeVO> list = mnDAO.selectSpecificNotice(noticeNum);
										
										NoticeVO nVO = null;
										for (int i = 0; i < list.size(); i++) {
											nVO = list.get(i);
										} //end for
										
										
										%>
										
											<tr>
												<th scope="row"><label for="wr_subject">구분<strong
														class="sound_only">필수</strong></label></th>
												<td>
												<input type="hidden" name="noticeNum" value="<%=nVO.getNoticeNum() %>">
													<div id="autosave_wrapper">
														<select id="section" name="section"
															style="width: 200px; height: 30px; text-align: center">
															<option value="========구분========"<%= "========구분========".equals(section)? "selected='selected'":"" %>>========구분========</option>
															<option value="자주찾는질문"<%= "자주찾는질문".equals(section)? "selected='selected'":"" %>>자주찾는질문</option>
															<option value="자유게시판"<%= "자유게시판".equals(section)? "selected='selected'":"" %>>자유게시판</option>
															<option value="시스템점검"<%= "시스템점검".equals(section)? "selected='selected'":"" %>>시스템점검</option>
															<option value="극장"<%= "극장".equals(section)? "selected='selected'":"" %>>극장</option>
															<option value="기타"<%= "기타".equals(section)? "selected='selected'":"" %>>기타</option>
														</select>
														<!-- <script src="https://www.ncyok.or.kr:443/js/autosave.js"></script> -->

													</div>
												</td>
											</tr>

											<tr>
												<th scope="row"><label for="wr_subject">제목<strong
														class="sound_only">필수</strong></label></th>
												<td>
													<div id="autosave_wrapper">
														<input style="width: 1000px" type="text" name="title"
															value="<%=title %>" id="title" required=""
															class="frm_input required" size="80" maxlength="255">
														<!--  <script src="https://www.ncyok.or.kr:443/js/autosave.js"></script> -->


													</div>
												</td>
											</tr>

										<tr>
											<th scope="row"><label for="note">내용<strong
													class="sound_only">필수</strong></label></th>
											<td>
												<textarea class="inputBox" name="note" id="note" cols="60" rows="40" oninput="autoNewLine(this,50)"><%= content%></textarea>
											</td>
										</tr>

									</tbody>
								</table>
								</form>
							</div>
							<br>
							<br>
							<div class="btn_confirm">
								<input type="button" value="작성완료" id="btn_submit" accesskey="s"
									class="btn_submit">
								<button type="button" class="btn btn-light"
									style="width: 108.229px; height: 44.184px;">
									<a href="http://localhost/HCY_CINEMA/admin/manageBoard/notice_list.jsp">취소</a>
								</button>
							</div>
							

							<script>
								$(function() {
									$("#btn_submit").click(function() {
									var section = $("#section").val();
									var title = $("#title").val().trim();
									var note = $("#note").val().trim();
										if (section == "========구분========") {
											alert("구분을 확인하세요");
											return;
										}//end if
										else{
											if (title == ""|| note == "") {
												alert("제목과 내용올 바르게 입력해주세요");
												return;
											} else {
												var confirmInsert = confirm("공지사항을 등록하시겠습니까?");
												if (confirmInsert) {
													$("#frm").submit();
														alert("공지사항이 등록되었습니다.");
												} else {
													alert("공지사항 수정을 취소하셨습니다.");
													window.location.href = "http://localhost/HCY_CINEMA/admin/manageBoard/notice_info.jsp?noticeNum=<%=nVO.getNoticeNum()%>";
														}//end else
											}//end else
										}//end else
									});//click
								});//ready
							</script>
							<script>
						    /* 최대 글자 수 넘어가면 엔터키로 조정해주기 */
							 function autoNewLine(textarea, 50) {
						            if (textarea.value.length > 50) {
						                textarea.value = textarea.value.substring(0, 50);
						                textarea.value += "\n"; // 텍스트가 길 경우 자동으로 다음 줄로 넘어감
						            }//end if
						        }//autoNewLine
							</script>

							<script>
							 	function html_auto_br(obj) {
									if (obj.checked) {
										result = confirm("자동 줄바꿈을 하시겠습니까?\n\n자동 줄바꿈은 게시물 내용중 줄바뀐 곳을<br>태그로 변환하는 기능입니다.");
										if (result)
											obj.value = "html2";
										else
											obj.value = "html1";
									} else
										obj.value = "";
								}

								function fwrite_submit(f) {
									var wr_content_editor_data = oEditors.getById['wr_content']
											.getIR();
									oEditors.getById['wr_content'].exec(
											'UPDATE_CONTENTS_FIELD', []);
									if (jQuery.inArray(document
											.getElementById('wr_content').value
											.toLowerCase().replace(
													/^\s*|\s*$/g, ''), [
											'&nbsp;', '<p>&nbsp;</p>',
											'<p><br></p>', '<div><br></div>',
											'<p></p>', '<br>', '' ]) != -1) {
										document.getElementById('wr_content').value = '';
									} 
									if (!wr_content_editor_data
											|| jQuery
													.inArray(
															wr_content_editor_data
																	.toLowerCase(),
															[
																	'&nbsp;',
																	'<p>&nbsp;</p>',
																	'<p><br></p>',
																	'<p></p>',
																	'<br>' ]) != -1) {
										alert("내용을 입력해 주십시오.");
										oEditors.getById['wr_content']
												.exec('FOCUS');
										return false;
									}

									var subject = "";
									var content = "";
									$.ajax({
										url : g5_bbs_url + "/ajax.filter.php",
										type : "POST",
										data : {
											"subject" : f.wr_subject.value,
											"content" : f.wr_content.value
										},
										dataType : "json",
										async : false,
										cache : false,
										success : function(data, textStatus) {
											subject = data.subject;
											content = data.content;
										}
									});

									if (subject) {
										alert("제목에 금지단어('" + subject
												+ "')가 포함되어있습니다");
										f.wr_subject.focus();
										return false;
									}

									if (content) {
										alert("내용에 금지단어('" + content
												+ "')가 포함되어있습니다");
										if (typeof (ed_wr_content) != "undefined")
											ed_wr_content.returnFalse();
										else
											f.wr_content.focus();
										return false;
									}

									if (document.getElementById("char_count")) {
										if (char_min > 0 || char_max > 0) {
											var cnt = parseInt(check_byte(
													"wr_content", "char_count"));
											if (char_min > 0 && char_min > cnt) {
												alert("내용은 " + char_min
														+ "글자 이상 쓰셔야 합니다.");
												return false;
											} else if (char_max > 0
													&& char_max < cnt) {
												alert("내용은 " + char_max
														+ "글자 이하로 쓰셔야 합니다.");
												return false;
											}
										}
									}

									document.getElementById("btn_submit").disabled = "disabled";

									return true;
								}
							</script>
						</section>
						<!-- } 게시물 작성/수정 끝 -->
					</div>
				</div>

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
														<td colspan="5" class="year span6">
															<div class="visualmonthyear">October 2023</div>
														</td>
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


	<div class="theme-panel">
		<a href="javascript:;" data-click="theme-panel-expand"
			class="theme-collapse-btn"><i class="fa fa-tint"></i></a>
		<div class="theme-panel-content">
			<h5 class="m-t-0">Font Family</h5>
			<div class="row row-space-10">
				<div class="col-lg-12">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10 active"
						data-value="" data-src="" data-click="body-font-family">
						Default </a>
				</div>
				<div class="col-lg-6">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10"
						data-value="font-nunito"
						data-src="https://fonts.googleapis.com/css?family=Nunito:400,300,700"
						data-click="body-font-family"> Nunito </a>
				</div>
				<div class="col-lg-6">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10"
						data-value="font-open-sans"
						data-src="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
						data-click="body-font-family"> Open Sans </a>
				</div>
				<div class="col-lg-6">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10"
						data-value="font-roboto"
						data-src="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900"
						data-click="body-font-family"> Roboto </a>
				</div>
				<div class="col-lg-6">
					<a href="#" class="btn btn-default btn-block btn-sm m-b-10"
						data-value="font-lato"
						data-src="https://fonts.googleapis.com/css?family=Lato:400,100,300,700,900"
						data-click="body-font-family"> Lato </a>
				</div>
				<div class="col-lg-12">
					<a href="#" class="btn btn-default btn-block btn-sm text-ellipsis"
						data-value="font-helvetica-arial" data-src=""
						data-click="body-font-family"> Helvetica Neue, Helvetica ,
						Arial </a>
				</div>
			</div>
			<div class="horizontal-divider"></div>
			<h5 class="m-t-0">Header Theme</h5>
			<ul class="theme-list clearfix">
				<li><a href="javascript:;" class="bg-inverse"
					data-value="navbar-inverse" data-click="header-theme-selector"
					data-toggle="tooltip" data-title="Default" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-grey"
					data-value="navbar-grey" data-click="header-theme-selector"
					data-toggle="tooltip" data-title="Grey" data-original-title=""
					title="">&nbsp;</a></li>
				<li class="active"><a href="javascript:;" class="bg-white"
					data-value="navbar-default" data-click="header-theme-selector"
					data-toggle="tooltip" data-title="Light" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-purple"
					data-value="navbar-purple" data-click="header-theme-selector"
					data-toggle="tooltip" data-title="Purple" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-primary"
					data-value="navbar-primary" data-click="header-theme-selector"
					data-toggle="tooltip" data-title="Primary" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-success"
					data-value="navbar-success" data-click="header-theme-selector"
					data-toggle="tooltip" data-title="Success" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-lime"
					data-value="navbar-lime" data-click="header-theme-selector"
					data-toggle="tooltip" data-title="Lime" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-warning"
					data-value="navbar-warning" data-click="header-theme-selector"
					data-toggle="tooltip" data-title="Warning" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-danger"
					data-value="navbar-danger" data-click="header-theme-selector"
					data-toggle="tooltip" data-title="Danger" data-original-title=""
					title="">&nbsp;</a></li>
			</ul>
			<div class="horizontal-divider"></div>
			<h5 class="m-t-0">Sidebar Highlight Color</h5>
			<ul class="theme-list clearfix">
				<li><a href="javascript:;" class="bg-inverse"
					data-value="sidebar-highlight-inverse"
					data-click="sidebar-highlight-selector" data-toggle="tooltip"
					data-title="Inverse" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-grey"
					data-value="sidebar-highlight-grey"
					data-click="sidebar-highlight-selector" data-toggle="tooltip"
					data-title="Grey" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-white"
					data-value="sidebar-highlight-light"
					data-click="sidebar-highlight-selector" data-toggle="tooltip"
					data-title="Light" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-purple"
					data-value="sidebar-highlight-purple"
					data-click="sidebar-highlight-selector" data-toggle="tooltip"
					data-title="Purple" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-primary"
					data-value="sidebar-highlight-primary"
					data-click="sidebar-highlight-selector" data-toggle="tooltip"
					data-title="Primary" data-original-title="" title="">&nbsp;</a></li>
				<li class="active"><a href="javascript:;" class="bg-success"
					data-value="" data-click="sidebar-highlight-selector"
					data-toggle="tooltip" data-title="Default" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-lime"
					data-value="sidebar-highlight-lime"
					data-click="sidebar-highlight-selector" data-toggle="tooltip"
					data-title="Lime" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-warning"
					data-value="sidebar-highlight-warning"
					data-click="sidebar-highlight-selector" data-toggle="tooltip"
					data-title="Warning" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-danger"
					data-value="sidebar-highlight-danger"
					data-click="sidebar-highlight-selector" data-toggle="tooltip"
					data-title="Danger" data-original-title="" title="">&nbsp;</a></li>
			</ul>
			<div class="horizontal-divider"></div>
			<h5 class="m-t-0">Sidebar Theme</h5>
			<ul class="theme-list clearfix">
				<li class="active"><a href="javascript:;" class="bg-inverse"
					data-value="" data-click="sidebar-theme-selector"
					data-toggle="tooltip" data-title="Default" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-grey"
					data-value="sidebar-grey" data-click="sidebar-theme-selector"
					data-toggle="tooltip" data-title="Grey" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-white"
					data-value="sidebar-light" data-click="sidebar-theme-selector"
					data-toggle="tooltip" data-title="Light" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-purple"
					data-value="sidebar-purple" data-click="sidebar-theme-selector"
					data-toggle="tooltip" data-title="Purple" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-primary"
					data-value="sidebar-primary" data-click="sidebar-theme-selector"
					data-toggle="tooltip" data-title="Primary" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-success"
					data-value="sidebar-success" data-click="sidebar-theme-selector"
					data-toggle="tooltip" data-title="Success" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-lime"
					data-value="sidebar-lime" data-click="sidebar-theme-selector"
					data-toggle="tooltip" data-title="Lime" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-warning"
					data-value="sidebar-warning" data-click="sidebar-theme-selector"
					data-toggle="tooltip" data-title="Warning" data-original-title=""
					title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-danger"
					data-value="sidebar-danger" data-click="sidebar-theme-selector"
					data-toggle="tooltip" data-title="Danger" data-original-title=""
					title="">&nbsp;</a></li>
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

</body>

</html>
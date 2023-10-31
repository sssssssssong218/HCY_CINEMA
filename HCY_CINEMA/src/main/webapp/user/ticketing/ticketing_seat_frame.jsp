<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko" xml:lang="ko" xmlns="http://www.w3.org/1999/xhtml"><head id="ctl00_Head1"><script async="" src="http://ad.cgv.co.kr/NetInsight/text/CGV/CGV_201608/RIA@RIA_Skin_Seat?_=1698392566904"></script><script async="" src="http://ad.cgv.co.kr/NetInsight/text/CGV/CGV_201608/RIA@RIA_Skin_Ticketing?_=1698392566903"></script>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="imagetoolbar" content="no">
<meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작">
<meta name="description" content="영화 그 이상의 감동. CGV">
<title>CGV 빠른예매</title>
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/common.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_tnb.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_popup.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_step3.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_step3_special.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_step3_step1.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_step3_step2.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/R2014/css/webfont.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/resource_pc/css/cgv.min.css">
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/cgvpackage.min.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.api.ticket.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.api.payment.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.api.coupon.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.crypto.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.data.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.net.js"></script>

<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.alert.js"></script>

<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.popup.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.step1.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.step2.js"></script>
<script type="text/javascript">
// for loadStep3Resources_STEP2 include source path;
var CDN_PATH_JS = "http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/";
// 초기 선택값 설정
preselectSetting( 
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	''
);
</script>
</head>

<body style="">
<a name="t"></a>
<div id="wrap" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<!-- 컨텐츠 -->
	<div id="container">
		<!-- 빠른예매 -->
		<div id="ticket" class="ticket ko">
			
			<!-- 타이틀 -->
			<div class="navi">
				<div class="newsletter">
					<p style="display: none;"><a href="#">Click here</a> if you want to receive newsletter about English subtitle movies</p>
				</div>
				<span class="right">
				
					<a class="button button-english" href="#" onmousedown="javascript:logClick('옵션/ENGLISH');" onclick="switchLanguage(); return false;"><span>ENGLISH</span></a>
					<a class="button button-schedule" href="#" onmousedown="javascript:logClick('옵션/상영시간표');" onclick="openSchedulePopup();return false;" title="새창열기"><span>상영시간표</span></a>
					<a class="button button-reservation-restart" href="#" onmousedown="javascript:logClick('옵션/예매다시하기');" onclick="ticketRestart(); return false;"><span>예매 다시하기</span></a>
				
				</span>
				
			</div>
			<!-- //타이틀 -->
			<!-- 메인컨텐츠 -->
			<div class="steps">
				<!-- step1 -->
				<div class="step step1" style="height: 600px; display: none;">
				</div>
				<!-- //step1 -->
				<!-- step2 -->
				<div class="step step2" style="display: flex ;">
					<!-- SEAT 섹션 -->
					<div class="section section-seat dimmed">
						<div class="col-head" id="skip_seat_list">
							<h3 class="sreader">
								인원 / 좌석
								<span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
							</h3>
							<a href="#" class="skip_to_something" onclick="skipToSomething('tnb_step_btn_right');return false;">인원/좌석선택 건너뛰기</a>
						</div>
						<div class="col-body">
							<div class="person_screen">
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-numberofpeople">
									<div class="col-body">

										<!-- 인접좌석 -->
										<!-- <div class="adjacent_seat_wrap">
											<div class="adjacent_seat" id="adjacent_seat">
												<span class="title">좌석 붙임 설정</span>
												<div class="block_wrap">
													<span class="seat_block block1"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(1, this);" disabled><span class="box"></span><span class="sreader">1석 좌석붙임</span></label></span>
													<span class="seat_block block2"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(2, this);" disabled><span class="box"></span><span class="box"></span><span class="sreader">2석 좌석붙임</span></label></span>
													<span class="seat_block block3"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(3, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">3석 좌석붙임</span></label></span>
													<span class="seat_block block4"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(4, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">4석 좌석붙임</span></label></span>
												</div>
											</div>
										</div> -->

										<div id="nopContainer" class="numberofpeople-select" style="min-width: 426px;">
											<!-- 2021.05.25 - 좌석 거리두기 -->
											<!-- 최대 선택 가능 인원 표기 -->
											<div id="maximum_people" style="padding-bottom: 5px; text-align: right; font-size: 11px !important; color: red;">* 최대 8명 선택 가능</div>
											<div class="group adult" id="nop_group_adult" style="display: block;">
												<span class="title">일반</span>
												<ul>
													<li data-count="0" class="selected" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>0<span class="sreader">명</span></a></li>
													<li data-count="1" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>1<span class="sreader">명</span></a></li>
													<li data-count="2" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>2<span class="sreader">명</span></a></li>
													<li data-count="3" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>3<span class="sreader">명</span></a></li>
													<li data-count="4" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>4<span class="sreader">명</span></a></li>
													<li data-count="5" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>5<span class="sreader">명</span></a></li>
													<li data-count="6" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>6<span class="sreader">명</span></a></li>
													<li data-count="7" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>7<span class="sreader">명</span></a></li>
													<li data-count="8" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>8<span class="sreader">명</span></a></li>
												</ul>
											</div>
											
										</div>
									</div>
								</div>
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-screen-select">
									<!-- UI 변경으로 삭제 
									<div class="title">선택하신 상영관<span>/</span>시간</div>
									-->
									<!-- UI 변경
									<div class="screen-time">
										<span class="screen"><b></b></span>
										<span class="seats seat_all"></span>
										<span class="time"></span>
										<span class="seats seat_remain"></span>
									</div>
									-->
									<div id="user-select-info">
										<p class="theater-info">
											<span class="site">HCY 강남</span>
											<span class="screen"> </span>
											<span class="seatNum">남은좌석  <b class="restNum">269</b>/<b class="totalNum">283</b></span>
										</p>
										<p class="playYMD-info"><b>2023.11.01</b><b class="exe">(수)</b><b>10:00 ~ 12:14</b></p>
									</div>
								</div>
							</div>
							<!-- THEATER -->
							<div class="theater_minimap">
								<div class="theater nano has-scrollbar" id="seat_minimap_nano">
									<div class="content" tabindex="-1" style="right: -17px; bottom: -17px;">
										<div class="screen" title="SCREEN" style="width: 652px;"><span class="text"></span></div>
										<div class="seats" id="seats_list" style="width: 416px; height: 224px;">
										<div>
										
										<div class="row" style="top:0px;">
											<div class="label">A</div>
											<a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">A열 건너뛰기</a>
											<div class="seat_group left">
												<div class="group">
													<div class="seat" style="left:32px" data-left="32" data-left_zoom="48">
														<a href="#" onclick="return false;">
															<span class="no">2</span>
															<span class="sreader"> </span>
															<span class="sreader mod"></span>
														</a>
													</div>
													<div class="seat reserved" style="left:48px" data-left="48" data-left_zoom="72">
														<a href="#" "="" onclick="return false;">
															<span class="no">3</span>
															<span class="sreader"> Light</span>
															<span class="sreader mod"></span>
														</a>
													</div>
													<div class="seat rating_economy" style="left:64px" data-left="64" data-left_zoom="96">
														<a href="#" "="" onclick="return false;">
															<span class="no">4</span>
															<span class="sreader"> Light</span>
															<span class="sreader mod"></span>
														</a>
													</div>
													<div class="seat rating_economy" style="left:80px" data-left="80" data-left_zoom="120"><a href="#" "="" onclick="return false;"><span class="no">5</span><span class="sreader"> Light</span><span class="sreader mod"></span></a></div><div class="seat rating_economy" style="left:96px" data-left="96" data-left_zoom="144"><a href="#" "="" onclick="return false;"><span class="no">6</span><span class="sreader"> Light</span><span class="sreader mod"></span></a></div></div>
											</div>
											<div class="seat_group">
												<div class="group">
													<div class="seat rating_economy" style="left:128px" data-left="128" data-left_zoom="192">
														<a href="#" "="" onclick="return false;">
															<span class="no">7</span>
															<span class="sreader"> Light</span>
															<span class="sreader mod"></span>
														</a>
													</div>
													<div class="seat rating_economy" style="left:144px" data-left="144" data-left_zoom="216">
														<a href="#" "="" onclick="return false;">
															<span class="no">8</span>
															<span class="sreader"> Light</span>
															<span class="sreader mod"></span>
														</a>
													</div>
												</div>
											</div>
										</div>
										
										</div><div class="exit top" style="top: -30px; left: 386px;">
										</div></div>
									</div>
								<div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
								<div class="minimap opened" id="minimap" style="display: none;">
									<div class="mini_header" onclick="ftSeatMinimapToggle();event.preventDefault();">Minimap<span></span></div>
									<div class="mini_container" style="width: 130px; height: 96px;">
										<div class="mini_screen">SCREEN</div>
										<div class="mini_exits"><div class="mini_exit tr"></div></div>
									</div>
									<div class="mini_region" style="height: 96px; width: 130px; top: 25px; left: 5px;"><span></span></div>
								</div>
								<div class="legend" style="width: 125px;">
									<div class="buttons">
										<a class="btn-zoom" id="seat_zoom_btn" href="#" onclick="ts2SeatZoomClickListener();return false;">크게보기</a>
									</div>
									<div class="seat-icon-desc">
										<span class="icon selected"><span class="icon"></span>선택</span>
										<span class="icon reserved"><span class="icon"></span>예매완료</span>
										<span class="icon notavail"><span class="icon"></span>선택불가</span>
										<!-- 2021.05.25 - 좌석 거리두기 -->
										<!-- 거리두기 좌석 범례 표기 -->
										<span class="icon distanced" style="display: none;"><span class="icon"></span>거리두기 좌석</span>
									</div>
									<div class="seat-type"><span class="radiobutton type-rating_economy" style="display: none;">Light석<span class="icon"></span></span><span class="radiobutton type-rating_comfort" style="display: none;">Standard석<span class="icon"></span></span><span class="radiobutton type-rating_prime" style="display: none;">Prime석<span class="icon"></span></span><span class="radiobutton type-handicap" style="">장애인석<span class="icon"></span></span><span class="radiobutton type-sweet" style="">SWEETBOX<span class="icon"></span></span><span class="radiobutton type-4d" style="display: none;">4DX<span class="icon"></span></span><span class="radiobutton type-gold" style="display: none;">골드<span class="icon"></span></span><span class="radiobutton type-vibration" style="display: none;">진동석<span class="icon"></span></span><span class="radiobutton type-cdc" style="display: none;">모션베드<span class="icon"></span></span><span class="radiobutton type-cinekids" style="display: none;">키즈석<span class="icon"></span></span><span class="radiobutton type-premium" style="display: none;">프리미엄<span class="icon"></span></span><span class="radiobutton type-widebox" style="display: none;">WIDEBOX<span class="icon"></span></span><span class="radiobutton type-couple" style="display: none;">커플석<span class="icon"></span></span><span class="radiobutton type-eggbox" style="display: none;">EGGBOX<span class="icon"></span></span><span class="radiobutton type-recliner" style="display: none;">리클라이너<span class="icon"></span></span><span class="radiobutton type-cabana" style="display: none;">카바나<span class="icon"></span></span><span class="radiobutton type-beanbag" style="display: none;">빈백석<span class="icon"></span></span><span class="radiobutton type-mat" style="display: none;">매트석<span class="icon"></span></span><span class="radiobutton type-relax" style="display: none;">릴렉스시트<span class="icon"></span></span><span class="radiobutton type-comport" style="display: none;">컴포트석<span class="icon"></span></span><span class="radiobutton type-mybox" style="display: none;">MYBOX<span class="icon"></span></span><span class="radiobutton type-cdcCoupleSofa" style="display: none;">커플 리클라이너<span class="icon"></span></span><span class="radiobutton type-cdcRecliner" style="display: none;">리클라이너<span class="icon"></span></span><span class="radiobutton type-cdcSofa" style="display: none;">소파<span class="icon"></span></span><span class="radiobutton type-coupleSofa" style="display: none;">커플소파<span class="icon"></span></span><span class="radiobutton type-suite_A" style="display: none;">Suite 4인<span class="icon"></span></span><span class="radiobutton type-suite_B" style="display: none;">Suite 2인<span class="icon"></span></span><span class="radiobutton type-familyRecliner" style="display: none;">패밀리 리클라이너<span class="icon"></span></span><span class="radiobutton type-private1" style="display: none;">PRIVATE 2인<span class="icon"></span></span><span class="radiobutton type-private2" style="display: none;">PRIVATE_A<span class="icon"></span></span><span class="radiobutton type-private3" style="display: none;">PRIVATE 4인<span class="icon"></span></span></div>
								</div>
								<div class="mouse_block"></div>
							</div>
						</div>
					</div>
					<a class="btn-refresh" href="#">
						<span>다시하기</span>
					</a>
					<!-- 시간표 변경 -->
					<div class="section_time_popup" id="section_time_popup">
						<div class="canvas">
							<div class="sprite">
								<div class="time-option">
									<span class="morning">모닝</span><span class="night">심야</span>
								</div>
								<div class="time-list nano has-scrollbar" id="time_popup_list">
									<div class="content scroll-y" tabindex="-1" style="right: -17px;"></div>
								<div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
							</div>
							<div class="buttons">
								<a href="#" onclick="return false;" class="btn_ok"><span>확인</span></a>
								<a href="#" onclick="return false;" class="btn_cancel"><span>취소</span></a>
								<a href="#" onclick="return false;" class="sreader" onfocus="ticketStep2TimeSelectPopupHide();">시간표 변경 팝업 닫기</a>
							</div>
						</div>
						<div class="corner"></div>
					</div>
					<!-- 시간표 변경 -->
				</div>
				<!-- //step2 -->
				<!-- step3 -->
				<div class="step step3" style="display: none;">
				</div>
				<!-- //step3 -->
				<!-- step4 -->
				<div class="step step4" style="display: none;">
				</div>
				<!-- //step4 -->
				<noscript>
					<div class="noscript"><span>현재 사용중인 환경에서는 스크립트 동작이 활성화되지 않아 예매 서비스를 이용하실 수 없습니다.<br/>예매 서비스를 이용하기 위해서는 <a href='http://www.enable-javascript.com/ko/' rel='nofollow'>스크립트 동작을 활성화</a> 해주세요.</span></div>
				</noscript>
			</div>
			<!-- 팝업 -->
			<div class="popups">                
				<!-- Popup - 로그인 --> 
<div class="ft_layer_popup popup_login ko" style="display:none;">
    <!--<div class="hd">
        <div class="title_area">
            
            <h4>CGV회원 로그인</h4>
			
			<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false;" class="layer_close">닫기</a>
    </div>
    <div class="bd">
        <div class="login_form">
            <div class="input_wrap id">
                <label for="txtUserId" class="blind">아이디</label>
                <input name="txtUserId" id="txtUserId" maxlength="25" type="text">
            </div>
            <div class="input_wrap password">
                <label for="txtPassword" class="blind">비밀번호</label>
                <input name="txtPassword" id="txtPassword" maxlength="25" type="password">
            </div>
            <button type="button" title="로그인" class="btn_login"><span>로그인</span></button>       
        </div>
        <div class="linkbar">
        	
            <a href="#" onclick="return false;" class="join_member">회원가입</a>
            <a href="#" onclick="return false;" class="join_guest">비회원 예매</a>
            <a href="#" onclick="return false;" class="id_find">아이디찾기</a>
            <a href="#" onclick="return false;" class="pw_find">비밀번호찾기</a>    
			
        </div>
    </div>-->
</div>
<!-- //Popup -->

<!-- Popup - 얼럿 --> 
<div class="ft_layer_popup popup_alert original ko" style="">
    <div class="hd">
        <div class="title_area">
            <h4 class="alert_title">얼럿타이틀</h4>
			<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false;" class="layer_close">닫기</a>
    </div><!-- //hd -->
    <div class="bd">
        <p class="alert_msg" style="width: 475px;">얼럿메세지</p>
    </div><!-- //bd -->
    <div class="ft">
        <a title="확인" href="#" onclick="return false;" class="btn btn_ok"><span>확인</span></a>
        <a title="취소" href="#" onclick="return false;" class="btn btn_white btn_close"><span>취소</span></a>
    </div><!-- //ft -->     
</div>
<!-- //Popup -->

<!-- 2021.06.22 - 홈페이지 관람 안내 문구 팝업 창 -->
<div class="ft_layer_popup popup_alert w450 base ko" style="top: 50%; position: absolute;">
    <div class="hd">
        <div class="title_area">
            <h4 class="alert_title">얼럿타이틀</h4>
			<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false;" class="layer_close">닫기</a>
    </div>
    <div class="bd">
        <p class="alert_msg">얼럿메세지</p>
    </div>
    <div class="ft">
        <a title="확인" href="#" onclick="return false;" class="btn btn_ok">
            <span>확인</span>
        </a>
        <a title="취소" href="#" onclick="return false;" class="btn btn_white btn_close">
            <span>취소</span>
        </a>
    </div>
</div>

<!-- 2022.12.27 - 영화등급 이미지 및 문구 수정 -->
<div class="ft_layer_popup popup_alert popup_previewGradeInfo base ko" style="top: 255px; position: absolute;">
    <div class="hd">
        <div class="title_area">
            <h4 class="alert_title">관람등급 안내</h4>
            <span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false" class="layer_close">닫기</a>
    </div>
    <div class="bd">
        <div class="previewGradeInfo_contents">관람등급 안내문구</div>
    </div>
    <div class="ft">
        <a title="확인" href="#" onclick="return false" class="btn btn_ok btn_red">
            <span>동의하고 예매하기</span>
        </a>
    </div>
</div>

<!-- Popup - guide --> 
<div class="ft_layer_popup popup_guide ko" style="display:none;">
    <div class="guide_hd">
        <h4><span class="blind">CGV 예매가이드</span></h4>
        <p><span class="blind">새롭게 바뀐 CGV 예매 서비스를 직접 확인해보세요!</span></p>
    </div><!-- //hd -->
    <div class="guide_bd">
        <div class="tab_menu clfix">
            <ul>
                <li class="a first"><a href="#none" onclick="return false;" class="on" title="STEP 1 영화, 극장, 날짜, 시간 선택"><span><var><span class="blind_txt tab1">STEP 1 영화, 극장, 날짜, 시간 선택</span></var></span></a></li>
                <li class="b"><a href="#none" onclick="return false;" title="STEP 2 인원, 좌석선택"><span><var><span class="blind_txt tab2">STEP 2 인원, 좌석선택</span></var></span></a></li>
                <li class="c"><a href="#none" onclick="return false;" title="STEP 3 결제하기"><span><var><span class="blind_txt tab3">STEP 3 결제하기</span></var></span></a></li>
            </ul>
        </div>
        <div class="content">
            <div class="guide_step01">
                <p class="notice"><span class="blind">원하시는 영화, 극장, 날짜, 시간 정보를 선택해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">전체 화면구성이 세로형으로 변경되어 더 빠르고 쉽게 정보 선택이 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-영화분류안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">무비꼴라쥬, 특별관 영화를 빠르고 편리하게 분류하여 확인할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <!--
                        <li class="btn03">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-선택할 수 없는 영화안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">선택 불가능한 정보는 장애인 차별금지법에 따라 패턴 디자인을 적용하여 모든 사용자가 쉽게 구분할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        -->
                        <li class="btn04">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-자주가는 CGV안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">자주 가는 극장 설정 기능을 통해 보다 빠른 극장 선택이 가능해졌어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn05">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-영문 빠른예매</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">영문 버전 빠른예매를 통해 다국적 사용자들도 쉽게 예매 서비스를 이용할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn06">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-조조/심야구분안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">조조/심야 영화 시간에 대해 쉽게 확인할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn07">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">선택한 예매 정보 및 나의 예매 진행 단계를 한 눈에 파악할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step01-->
            <div class="guide_step02">
                <p class="notice"><span class="blind">예매 인원수에 맞게 원하시는 자리 를 선택해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-상영관/시간 확인 및 변경안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">선택한 상영관/시간 확인 및 변경 기능이 보다 쉽고 눈에 띄게 변경되었어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-다양한 좌석도 보기안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">좌석도 크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step02-->
            <div class="guide_step03">
                <p class="notice"><span class="blind">원하시는 할인 및 결제수단을 이용하여 예매를 완료해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-할인 및 결제수단안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">전체 화면구성이 할인수단과 결제수단 영역으로 나뉘어 한 눈에 보기 편리해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-CGV영화관람권,할인쿠폰, CJ ONE포인트 안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">주요 할인수단인 CGV영화관람권, CGV할인쿠폰, CJ ONE 포인트의 바로 조회 기능을 통해 보다 빠른 예매가 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn03">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-할인수단별 선택안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">다양한 CGV의 할인수단을 보기 쉽게 그룹화하여 원하는 할인수단만 선택해 이용하실 수 있어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn04">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-결제정보안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">내가 적용한 할인 및 결제수단 내역을 한 눈에 쉽게 확인 가능해요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn05">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-최신할인정보안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">다양한 CGV결제수단의 최신 할인 정보를 쉽게 모아 볼 수 있어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step03-->
        </div>
    </div><!-- //bd -->  
    <div class="ft">
        <a title="닫기" href="#" onclick="return false;" class="btn btn_white btn_close"><span>닫기</span></a>
        <a title="닫기" href="#" onclick="return false;" class="layer_close">닫기</a>
    </div><!-- //ft -->  
</div>
<!-- //Popup -->

			</div>
			<!-- //팝업 -->
		</div>
		<!-- //빠른예매 -->
	</div>
	<!-- //컨텐츠 -->

	<div class="popup_wrap">
		<div class="cgv_popup pop_incomeDeduction dimmed">
			<div class="popup_header">
				<h1>영화관람료 소득공제 안내</h1>
				<a href="#none" class="btn_popupClose">확인</a>
			</div>
			<div class="popup_container">
				<div class="income-deduction-content" style="display: block;">
					<p>본 콘텐츠는 영화관람료 <span></span> 대상 상품입니다.</p>
					<p>문화비 소득공제는 자동 적용되며, 결제 완료 후 변경이 불가합니다.</p>
					<ol>
						<li>
							<strong>1. 영화관람료 소득공제란?</strong>
							<p>2023년 7월 1일 결제분부터 영화관람료에 대해 문화비 소득공제가 적용됩니다.</p>
							<ul>
								<li>총 급여 7천만 원 이하, 신용카드 등 사용액이 총 급여액의 25%가 넘는 근로소득자를 대상으로 적용됩니다.</li>
								<li>공제율은 30%, 공제 한도는 전통시장 사용분, 대중교통 사용분, 문화비 사용분에 대한 소득공제를 합해 총 300만원 입니다.</li>
							</ul>
						</li>
						<li>
							<strong>2. 영화관람료 소득공제 대상 상품</strong>
							<ul>
								<li>영화 및 공연상품 (단, 영화와 매점(패스트오더) 상품 통합결제 시 대상 제외 / 스포츠 중계, 게임 중계, 강연 등 일부 콘텐츠 제외)</li>
							</ul>
						</li>
						<li>
							<strong>3. 영화관람료 소득공제 제외 대상 상품</strong>
							<ul>
								<li>매점(패스트오더), 씨네샵, 포토티켓 등 영화와 무관한 상품 제외</li>
								<li>비상설상영관 등 일부 상영관 제외</li>
							</ul>
						</li>
						<li>
							<strong>4. 영화관람료 소득공제 가능 결제수단</strong>
							<ul>
								<li>카드결제: 신용카드(법인카드 불가, 개인카드에 한함)</li>
								<li>현금결제: 관람권, 포인트 등 현금영수증 처리가 가능한 결제수단</li>
								<li>간편결제: 네이버페이, 카카오페이, Payco, 토스페이</li>
								<li>휴대폰결제</li>
							</ul>
						</li>
						<li>
							<strong>5. 영화관람료 소득공제 제외 결제수단</strong>
							<ul>
								<li>현금영수증 처리가 불가한 제휴 결제수단</li>
								<li>그 외 OK캐쉬백, 그 외 Point 등 일부 결제수단</li>
							</ul>
						</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	
	<div id="ticket_tnb" class="tnb_container ">
		<div class="tnb step2">
			<!-- btn-left -->
			<a class="btn-left" href="#" onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
			<div class="info movie">
				<span class="movie_poster"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87429/87429_185.JPG" alt="영화 포스터" style="display: inline;"></span>
				<div class="row movie_title colspan2" style="display: block;">
					<span class="data letter-spacing-min ellipsis-line2"><a href="http://www.cgv.co.kr/movies/detail-view/?midx=87429" target="_blank" onmousedown="javascript:logClick('SUMMARY/영화상세보기');" title="소년들">소년들</a></span>
				</div>
				<div class="row movie_type" style="display: block;">
					<span class="data ellipsis-line1" title="2D">2D</span>
				</div>
				<div class="row movie_rating" style="display: block;">
					<span class="data" title="15세 관람가">15세 관람가</span>
				</div>
				<div class="placeholder" title="영화선택" style="display: none;"></div>
			</div>
			<div class="info theater">
				<div class="row name">
					<span class="header">극장</span>
					<span class="data letter-spacing-min ellipsis-line1"><a target="_blank" onmousedown="javascript:logClick('SUMMARY/극장상세보기');" href="http://www.cgv.co.kr/theaters/?theaterCode=0030" title="CGV 불광">CGV 불광</a></span>
				</div>
				<div class="row date">
					<span class="header">일시</span>
					<span class="data" title="2023.11.1(수) 10:00">2023.11.1(수) 10:00</span>
				</div>
				<div class="row screen">
					<span class="header">상영관</span>
					<span class="data" title="5관 13층">5관 13층</span>
				</div>
				<div class="row number">
					<span class="header">인원</span>
					<span class="data" title=""></span>
				</div>
				<div class="placeholder" title="극장선택" style="display: none;"></div>
			</div>
			<div class="info seat">
				<div class="row seat_name" style="height: 0px;">
					<span class="header">좌석명</span>
					<span class="data" title=""></span>
				</div>
				<div class="row seat_no colspan3">
					<span class="header">좌석번호</span>
					<span class="data ellipsis-line3" title=""></span>
				</div>
				<div class="placeholder" title="좌석선택"></div>
			</div>
			<div class="info payment-ticket" style="width: 155px;">
				<div class="row payment-millitary" style="display: none;">
					<span class="header">군인</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity" style="display: none;"></span></span>
				</div>
				<div class="row payment-adult" style="display: none;">
					<span class="header">일반</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity" style="display: none;"></span></span>
				</div>
				<div class="row payment-youth" style="display: none;">
					<span class="header">청소년</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity" style="display: none;"></span></span>
				</div>
				<div class="row payment-child" style="display: none;">
					<span class="header">어린이</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity" style="display: none;"></span></span>
				</div>						
				<div class="row payment-senior" style="display: none;">
					<span class="header">경로</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity" style="display: none;"></span></span>
				</div>
				<div class="row payment-special" style="display: none;">
					<span class="header">우대</span>
					<span class="data"><span class="price"></span>원 x <span class="quantity" style="display: none;"></span></span>
				</div>
				<div class="row payment-final" style="display: none;">
					<span class="header">총금액</span>
					<span class="data"><span class="price">0</span><span class="won">원</span></span>
				</div>
			</div>
			<div class="info path">
				<div class="row colspan4">
					<span class="path-step2" title="좌석선택">&nbsp;</span>
					<span class="path-step3" title="결제">&nbsp;</span>
				</div>
			</div>
			<!-- btn-right -->
			<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
			<em class="tooltip_notice">
				<a href="#none" data-popup="pop_incomeDeduction">
					<strong>영화관람료 소득공제</strong>
					<i class="cgvIcon system notice">notice</i><br>
					<span></span> 대상 상품입니다.
				</a>
			</em>
			<a class="btn-right" id="tnb_step_btn_right" href="#" onclick="OnTnbRightClick(); return false;" title="결제선택">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
		</div>
	</div>

	<!-- bottom banner -->
	<div class="banner" id="ticket_bottom_banner" style="padding-top: 0px;">
		<a target="_blank" title="새창" href="http://ad.cgv.co.kr/click/CGV/CGV_201401/RIA@B_ticketing?ads_id=50304&amp;creative_id=74309&amp;click_id=95025&amp;content_series=&amp;event=" style="background-color: rgb(255, 255, 255);"><span style="sreader">?ㅽ ? ??</span><img src="https://adimg.cgv.co.kr/images/202310/openthedoor/996x140.jpg" alt="?ㅽ ? ??" onload="ticketNeedResize();" style="width:996px;height:140px"></a>
	</div>
	
	<!-- wing banner -->
	<div id="ticket_banner" class="ticket_banner">
		<div><div class="AdvertiseCon" style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: -164px; overflow: hidden; display: none;" id="RIA_Skin_Seat_L"></div><div class="AdvertiseCon" style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: 1000px; overflow: hidden; display: none;" id="RIA_Skin_Seat_R"></div></div>
	</div>
	
</div>



<div class="blackscreen" style="display: none;" id="blackscreen"></div>
<!-- loading -->
<div class="loading" id="ticket_loading" style="display: none;">
	<div class="dimm"></div>
	<p class="loadWrap"><img src="http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/ajax-loader-w.gif" alt="로딩 애니메이션"></p>
</div>
<!-- iframe -->
<iframe id="proxy_iframe" src="http://www.cgv.co.kr/Ticket/Proxy.html" scrolling="no" frameborder="0" width="0" height="0" style="display:none;" title="데이터 연동 숨김 프레임"></iframe>
<iframe src="/CGV2011/RIA/RR999.aspx" name="rsvDataframe" id="rsvDataframe" scrolling="no" frameborder="0" width="0" height="0" style="display:none;" title="데이터 연동 프레임"></iframe>
<!-- javascript 상위프레임에 있는 스크립트를 사용-->
<!--<script type="text/javascript" src="http://img.cgv.co.kr/common/js/insightIS.js"></script>-->

</body></html>
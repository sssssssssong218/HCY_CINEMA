<%@page import="moviedetail.ReviewInfoVO"%>
<%@page import="moviedetail.PageVO"%>
<%@page import="moviedetail.ReviewVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="moviedetail.MovieVO"%>
<%@page import="moviedetail.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=1024">
<meta name="keywords"
	content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작">
<meta name="description"
	content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다.">
<meta property="og:site_name" content="영화 그 이상의 감동. CGV">
<meta id="ctl00_og_title" property="og:title"
	content="CGV강남 | 영화 그 이상의 감동. CGV">


<meta id="ctl00_og_image" property="og:image"
	content="https://img.cgv.co.kr/Theater/Theater/2014/1211/CGVgangnam.jpg">
<link rel="alternate" href="http://m.cgv.co.kr">
<link rel="shortcut icon"
	href="https://img.cgv.co.kr/theater_img/favicon.ico"
	type="image/x-icon">
<title id="ctl00_headerTitle">HCY극장 &lt; 특별관</title>
<link rel="shortcut icon" type="image/x-icon"
	href="https://img.cgv.co.kr/R2014/images/favicon.ico">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/webfont.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/reset.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/layout.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/content.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/common.css">

<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/eggupdate.css">
<link rel="stylesheet" media="print" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/print.css">
<link rel="stylesheet" type="text/css"
	href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css">

<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-SSGE1ZCJKG&amp;cx=c&amp;_slc=1"></script>
<script type="text/javascript" async=""
	src="http://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="http://www.googletagmanager.com/gtag/js?id=G-559DE9WSKZ&amp;l=dataLayer&amp;cx=c"></script>
<script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NNNFR3"></script>
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" src="/common/js/extraTheaters.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/app.config.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/app.utils.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/app.init.js"></script>

<!--[if lte IE 9]><script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholderjs"></script><![endif]-->
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
<script src="https://img.cgv.co.kr/R2014/js/slick/slick.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/slick.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css">

<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/icheck/login.timer.js"></script>
<script src="https://img.cgv.co.kr/R2014/js/icheck/icheck.min.js"
	type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css"
	href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css">

<!-- 2020.05.07 감정지수/프리에그 프로젝트 추가 -->
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/preegg.css">

<!-- 2023.03.27 홈페이지 스토어 영역 內 배너 영역 미노출의 件 -->
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/giftstore/giftstore.js"></script>
<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014/js/giftstore/commonstore.js"></script>
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/giftstore/giftstore.css">

<!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
<link rel="stylesheet" type="text/css"
	href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css">
<script type="text/javascript"
	src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css">

<!-- 각페이지 Header Start-->


<!--/각페이지 Header End-->




<script type="text/javascript">
	//<![CDATA[
	_TRK_CP = "/극장/CGV극장";

	app.config('staticDomain', 'https://img.cgv.co.kr/R2014/').config(
			'imageDomain', 'https://img.cgv.co.kr').config('isLogin', 'False');

	// AD FLOAT
	// 암호화 할 문자열과 키값(상수값)을 매개변수로 받는다.
	function EncryptAD(str, key) {
		output = new String;
		Temp = new Array();
		TextSize = str.length;
		for (i = 0; i < TextSize; i++) {
			// key 값을 원하는 대로 연산을 한다
			output += String.fromCharCode(str.charCodeAt(i) + parseInt(key)
					+ 123 + i);
		}
		return output;
	}
	// 복호화
	// 암호화 된 문자열과 키값(상수값)을 매개변수로 받는다.
	function DecryptAD(str, key) {
		output = new String;
		Temp = new Array();
		TextSize = str.length;
		for (i = 0; i < TextSize; i++) {
			// 암호화시 사용한 연산과 같아야 한다.
			output += String.fromCharCode(str.charCodeAt(i)
					- (parseInt(key) + 123 + i));
		}

		return output;
	}

	function getCookieVal(offset) {
		var endstr = document.cookie.indexOf(";", offset);
		if (endstr == -1)
			endstr = document.cookie.length;
		return unescape(document.cookie.substring(offset, endstr));
	}
	function GetCookieAd(name) {
		var arg = name + "=";
		var alen = arg.length;
		var clen = document.cookie.length;
		var i = 0;
		while (i < clen) { //while open
			var j = i + alen;
			if (document.cookie.substring(i, j) == arg)
				return getCookieVal(j);
			i = document.cookie.indexOf(" ", i) + 1;
			if (i == 0)
				break;
		} //while close
		return null;
	}
	function setCookieAD(name, value, expiredays) {
		var todayDate = new Date();
		todayDate.setTime(todayDate.getTime()
				+ (expiredays * 24 * 60 * 60 * 1000));
		document.cookie = name + "=" + escape(value) + "; expires="
				+ todayDate.toGMTString() + "; path=/; domain=cgv.co.kr";
	}
	function CloseAD() {
		var AdUrl = window.location.href;
		var ArrAdUrl = AdUrl.split("/");

		var CurCookieName = 'CgvPopAd-' + ArrAdUrl[3];
		var CurCookieUrl = GetCookieAd(CurCookieName);
		var CookieUrl = ArrAdUrl[3];

		CookieUrl = EncryptAD(CookieUrl, "15442280");
		setCookieAD(CurCookieName, CookieUrl, '1');
		$(document).find('#ad_float1').hide();
	}
	function OpenAD() {
		var AdUrl = window.location.href;
		var ArrAdUrl = AdUrl.split("/");
		var CookieUrl = ArrAdUrl[3];
		var CurCookieName = 'CgvPopAd-' + ArrAdUrl[3];
		var CurCookieUrl = GetCookieAd(CurCookieName);

		if (CurCookieUrl == null) {
			CurCookieUrl = "";
		} else {
			CurCookieUrl = DecryptAD(CurCookieUrl, "15442280");
		}

		if (CurCookieUrl.indexOf(CookieUrl) != -1) {
			$(document).find('#ad_float1').hide();
		}

		//section.cgv.co.kr 매거진 체크
		var magazineckurl = GetCookieAd("CgvPopAd-magazine");
		if (magazineckurl != null) {
			var magazineck = DecryptAD(magazineckurl, "15442280");
			if (magazineck != null && magazineck == "magazine") {
				//값이있는경우 표시하지않음
				$(document).find('#ad_float1').hide();
			}
		}
	}

	//]]>
</script>



<script type="text/javascript"
	src="https://img.cgv.co.kr/R2014//js/system/system.packed.js"></script>
</head>
<body class="" style="" cz-shortcut-listen="true">

	<div class="skipnaiv">
		<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
	</div>
	<div id="cgvwrap">


		<div class="cgv-ad-wrap" id="cgv_main_ad">
			<div id="TopBarWrapper" class="sect-head-ad">
				<div class="top_extend_ad_wrap">
					<div class="adreduce" id="adReduce">
						<iframe
							src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@TopBar_EX"
							width="100%" height="80" title="" frameborder="0" scrolling="no"
							topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"
							name="TopBanner" id="TopBanner"></iframe>
					</div>
					<div class="adextend" id="adExtend"></div>
				</div>
				<!-- //.top_extend_ad_wrap -->
			</div>
		</div>

		<!-- S Header
        Description
        - class 'nav' 에 class 'active' 추가시 서브메뉴노출
        - class 'nav' 에 class 'fixed' 추가시 상단고정되며 스타일 변경됨
     -->
		<c:import url="../include/headerContents.jsp" />
		<!-- E Header -->
		<style>
#contaniner .contents {
	height: auto;
}
</style>

		<div id="contaniner" class="">
			<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->


			<!-- Contents Area -->
			<div id="contents" class="">


				<!-- Contents Start -->


				<!-- 실컨텐츠 시작 -->
				<div class="wrap-movie-detail" id="select_main">


					<!--
<div class="tit-heading-wrap">
    <h3>영화상세</h3>
</div>
    //-->
					<%
					MovieDAO mDAO = MovieDAO.getInstance();
					MovieVO mVO = new MovieVO();
					String movieCode = request.getParameter("movie");
					mVO = mDAO.selectMovie(movieCode);
					String poster = mDAO.selectPosterFile(movieCode);
					List<String> StillList = mDAO.selectStillFile(movieCode);
					String trailer = mDAO.selectTrailerFile(movieCode);
					List<String> directorList = mDAO.selectMovieInfoDirector(movieCode);
					List<String> actorList = mDAO.selectMovieInfoActor(movieCode);
					List<String> genreList = mDAO.selectMovieInfoGenre(movieCode);
					%>
					<div class="sect-base-movie">
						<h3>
							<strong>소년들</strong>기본정보
						</h3>
						<div class="box-image">
							<a
								href="http://localhost/HCY_CINEMA/common/movie_files/<%=poster%>"
								title="포스터 크게 보기 새창" target="_blank"> <span
								class="thumb-image"> <img
									src="http://localhost/HCY_CINEMA/common/movie_files/<%=poster%>"
									alt="소년들 포스터 새창" onerror="errorImage(this)"> <span
									class="ico-posterdetail">포스터 크게 보기</span> <!-- 영상물 등급 노출 변경 2022.08.24 -->
									<i class="cgvIcon etc age15">15</i> <!--<span class="ico-grade 15"> 15</span> -->
							</span>
							</a>
						</div>
						<div class="box-contents">
							<div class="title" style="display: flex">
								<strong><%=mVO.getMname()%></strong> <em class="round brown"><span>예매중</span></em>
								<em class="round red"><span>D-1</span></em>
								<p>The Boys</p>
							</div>
							<div class="score">
								<strong class="percent">예매율&nbsp;<span>16.9%</span></strong>
								<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->
								<div class="egg-gage small">
									<span class="sprite_preegg default"></span> <span
										class="percent">99%</span>
								</div>
							</div>
							<!-- 떨어지는 얘 이전 요소에 class=on을 넣는다 -->
							<div class="spec">
								<dl>
									<dt>감독 :&nbsp;</dt>
									<dd>

										<%
										StringBuilder director = new StringBuilder();
										for (int i = 0; i < directorList.size(); i++) {
											director.append(directorList.get(i));
											if (i < directorList.size() - 1) {
												director.append(", ");
											}
										}
										%>
										<a href="/movies/persons/?pidx=8618"><%=director%></a>
									</dd>
									<dt>&nbsp;/ 프로듀서 :&nbsp;</dt>
									<dd>김주상</dd>

									<dt>&nbsp;/ 배우 :&nbsp;</dt>
									<dd class="on">
										<%
										StringBuilder actor = new StringBuilder();
										for (int i = 0; i < actorList.size(); i++) {
											actor.append(actorList.get(i));
											if (i < actorList.size() - 1) {
												actor.append(", ");
											}
										}
										%>

										<a href="/movies/persons/?pidx=331"><%=actor%></a>



									</dd>
									<%
									StringBuilder genre = new StringBuilder();
									for (int i = 0; i < genreList.size(); i++) {
										genre.append(genreList.get(i));
										if (i < genreList.size() - 1) {
											genre.append(", ");
										}
									}
									%>
									<dt>
										장르 :
										<%=genre%></dt>
									<dd></dd>
									<dt>&nbsp;/ 기본 정보 :&nbsp;</dt>
									<!-- 2023.04.27 영화상세 등급 표기 수정-->
									<!--<dd class="on">15,&nbsp;124분,&nbsp;한국</dd>-->
									<%
									String movieRating = "";
									switch (mVO.getMovieRating()) {
										case "AL" :
											movieRating = "전체관람가";
											break;
										case "12" :
											movieRating = "12세이상관람가";
											break;
										case "15" :
											movieRating = "15세이상관람가";
											break;
										case "18" :
											movieRating = "청소년관람불가";
											break;
										case "RS" :
											movieRating = "제한상영가";
											break;
									}
									%>
									<dd class="on"><%=movieRating%>,&nbsp;<%=mVO.getRunningtime()%>분,&nbsp;국가
										: 추가해야댐 ㅅㄱ~ 발등에 불떨어짐!!
									</dd>
									<dt>개봉 :&nbsp;</dt>
									<dd class="on"><%=mVO.getReleaseDate()%></dd>



								</dl>
							</div>
							<span class="screentype"> </span> <span class="like"> <!-- 2020.05.07 영화찜하기 -> 프리에그 선택 변경(조회하여 노출) -->
								<!-- a class="link-count" href="javascript:void (0);"><i
									class="sprite_preegg btn_md default"></i>프리에그</a> --> <a
								class="link-reservation"
								href="http://localhost/HCY_CINEMA/user/ticketing/ticketing_main.jsp?movie=<%=movieCode%>">예매</a>

							</span>

						</div>
					</div>
					<!-- .sect-base -->

					<!-- 프리에그 팝업 -->
					<div class="layer-wrap" id="movie-pre-select"
						style="top: 100px; display: none">
						<div class="popwrap"
							style="width: 516px; margin-top: 0px; margin-left: -268px">
							<h1>프리에그 선택</h1>
							<div class="pop-contents">
								<!-- Contents Addon -->
								<div class="movie-pre-select">
									<div class="header">
										<p class="main"></p>
									</div>
									<div class="box">
										<div class="desc">
											<div class="main">이 영화가 기대되시나요?</div>
											<div class="sub">
												<em>'기대돼요!'</em>를 선택하시면 <em>'기대되는 영화'에 추가</em>됩니다.
											</div>
										</div>
										<div class="wrap_btn">
											<a href="javascript:void(0);" class="btn good"> <span
												class="sprite_preegg big favor"></span> <span>기대돼요!</span>
											</a> <a href="javascript:void(0);" class="btn bad"> <span
												class="sprite_preegg big hate"></span> <span>글쎄요..</span>
											</a> <input type="hidden" id="preegg_useyn" value="">
										</div>
									</div>
								</div>
								<!-- //Contents Addon -->
								<div class="set-btn fix-width">
									<button type="submit" id="btnSave" class="round inred">
										<span>확인</span>
									</button>
								</div>
							</div>
							<button type="button" class="btn-close">프리에그 팝업 닫기</button>
						</div>
					</div>
					<!-- //프리에그 팝업 -->
					<script>
						// 기대돼요, 글쎄요 클릭시 css 변경
						$('.movie-pre-select .wrap_btn .btn').on(
								'click',
								function() {
									if ($(this).hasClass("selected") == true) {
										$(this).removeClass('selected');
									} else {
										$(this).addClass('selected').siblings()
												.removeClass('selected');
									}
								});

						// 프리에그 투표팝업 열기
						$(".link-count").on('click', function() {
							var isLogin = app.config('isLogin');
							if (isLogin) {

								// 프리에그 팝업 노출시 선택된 프리에그 표시
								if ($("#preegg_useyn").val() == "Y")
									$(".wrap_btn .good").addClass("selected");
								else if ($("#preegg_useyn").val() == "W")
									$(".wrap_btn .bad").addClass("selected");

								$("#movie-pre-select").css("display", "block");
							} else
								app.goLogin();
						});

						// 프리에그 투표팝업 닫기
						$(".btn-close").on('click', function() {
							$("#movie-pre-select").css("display", "none");
						});

						// 확인 버튼 클릭시
						$("#btnSave")
								.on(
										'click',
										function() {
											var movieIdx = "87429";
											var selectvalue = ""; // 이미 선택된 값(비교대상)

											if ($(".wrap_btn .good").hasClass(
													"selected") == true) {
												selectvalue = "Y";
											}
											if ($(".wrap_btn .bad").hasClass(
													"selected") == true) {
												selectvalue = "W";
											}

											if ($("#preegg_useyn").val() == selectvalue) {
												if ($("#preegg_useyn").val() == ""
														&& selectvalue == "") {
													alert("프리에그를 선택하지 않았습니다.\n'기대돼요!'를 선택하시면 '기대되는 영화'에 추가됩니다.");
												} else {
													alert("수정된 내용이 없습니다.");
												}
												$("#movie-pre-select").css(
														"display", "none"); // 기존값과 동일하면 저장하지 않고 팝업창 닫음
											} else {
												$
														.ajax({
															type : "POST",
															url : '/common/ajax/movies.aspx/AddPreEggMovie',
															data : "{'movieIdx':'"
																	+ movieIdx
																	+ "', 'useYN':'"
																	+ selectvalue
																	+ "', 'title':'소년들'}",
															contentType : "application/json; charset=utf-8",
															async : false,
															dataType : 'json',
															success : function(
																	result) {
																var JObject = JSON
																		.parse(result.d
																				.toString());

																switch (JObject["resultCode"]) {
																case "-1": // 로그인 필요
																	app
																			.goLogin();
																	break;
																case "1":
																	// 성공
																	if ($(
																			"#preegg_useyn")
																			.val() == "Y"
																			&& (selectvalue == "W" || selectvalue == "")) {
																		alert("'기대되는 영화'에서 삭제되었습니다.");
																	} else if (selectvalue == "Y") {
																		if (confirm("'기대되는 영화'에 등록되었습니다.\n'기대되는 영화'로 이동하시겠습니까?") == true) {
																			location.href = "/user/movielog/";
																		}
																	} else if ($(
																			"#preegg_useyn")
																			.val() == ""
																			&& selectvalue == "W") {
																		alert("'글쎄요'로 등록되었습니다.");
																	} else if ($(
																			"#preegg_useyn")
																			.val() == "W"
																			&& selectvalue == "") {
																		alert("프리에그를 선택하지 않았습니다.\n'기대돼요!'를 선택하시면 '기대되는 영화'에 추가됩니다.");
																	} else if ($(
																			"#preegg_useyn")
																			.val() == ""
																			&& selectvalue == "") {
																		alert("프리에그를 선택하지 않았습니다.\n'기대돼요!'를 선택하시면 '기대되는 영화'에 추가됩니다.");
																	}

																	$(
																			"#preegg_useyn")
																			.val(
																					selectvalue);
																	$(
																			".like .link-count")
																			.removeClass(
																					"favor")
																			.removeClass(
																					"hate");

																	if (selectvalue == "Y")
																		$(
																				".like .link-count")
																				.addClass(
																						"favor")
																				.html(
																						"<i class=\"sprite_preegg btn_md favor\"></i>프리에그");
																	else if (selectvalue == "W")
																		$(
																				".like .link-count")
																				.addClass(
																						"hate")
																				.html(
																						"<i class=\"sprite_preegg btn_md hate\"></i>프리에그");
																	else
																		$(
																				".like .link-count")
																				.html(
																						"<i class=\"sprite_preegg btn_md default\"></i>프리에그");

																	$(
																			"#movie-pre-select")
																			.css(
																					"display",
																					"none");

																	break;
																default:
																	//   alert('Error result Value : ' + result);                    
																	break;
																}
															}
														});
											}
										});
						function movieInfo(){
							
						}
					</script>

					<script type="text/javascript">
						_TRK_PNC = "87429";
						_TRK_PNC_NM = "소년들";
						_TRK_PNG = "영화";
						_TRK_PI = "PDV";
						_TRK_CP = "/영화/영화상세/{0}/소년들";
					</script>


					<div class="cols-content" id="menu">
						<div class="col-detail">
							<!-- 메뉴가 선택되면 a 에 title="선택" 이라고 넣는다 -->
							<ul class="tab-menu">
								<li><a title="현재 선택됨"
									href="#menu">주요정보 </a></li>
								<li><a
									href="#trailer">트레일러</a></li>
								<li><a
									href="#ctl00_PlaceHolderContent_Section_Still_Cut">스틸컷</a></li>
								<li><a href="#sect-grade">평점/리뷰</a></li>
							</ul>
							<div class="sect-story-movie" id="movieInfo">
								<%=mVO.getPlot()%>
							</div>
							<!-- .sect-story -->
							<!-- 2020.05.07 성별예매분포, 연령별예매분포 UI 변경 -->
							
							<!-- .sect-graph -->

							<div class="movie-detail-ad" id="trailer">
								<iframe
									src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@SponsorBar_800"
									width="800" height="90" title="" frameborder="0" scrolling="no"
									marginwidth="0" marginheight="0" name="SponsorBar_800"
									id="SponsorBar_800"></iframe>
							</div>
							<!-- .sect-staff -->
							<div id="ctl00_PlaceHolderContent_Section_Trailer"
								class="sect-trailer">
								<div class="heading">
									<h4>트레일러</h4>
									<span id="ctl00_PlaceHolderContent_TrailerTotalCount"
										class="count">1건</span><a class="link-more"
										href="trailer.aspx?midx=87429">더보기</a>
								</div>
								<ul>
									<!-- 사진 동영상 조회 -->

									<li>
										<div class="box-image">
											<!-- TODO : 동영상 팝업 창 작업 후 링크 걸어야 함 //-->
											<a
												href="http://localhost/HCY_CINEMA/common/movie_files/<%=trailer%>"
												title="새창" class="movie_player_popup"
												data-gallery-idx="220293"> <span class="thumb-image">
													<!-- <img src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/87429/87429220293_1024.jpg" alt="[소년들]리뷰 예고편" onerror="errorImage(this, {'type':'landscape'})"> -->
													<video
														src="http://localhost/HCY_CINEMA/common/movie_files/<%=trailer%>"
														style="width: 260px; height: 140px;"></video> <span
													class="ico-play">영상보기</span>
											</span>
											</a>
										</div>
										<div class="box-contents">
											<a href="#" title="새창" class="movie_player_popup"
												data-gallery-idx="220293"> <strong class="title">

													<span class="ico-trailer hd">HD</span> 리뷰 예고편
											</strong>
											</a> <span class="txt-info">2023.10.31</span>
										</div>
									</li>




								</ul>
							</div>
							<!-- .sect-trailer -->
							<div id="ctl00_PlaceHolderContent_Section_Still_Cut"
								class="sect-stillcut">
								<div class="heading">
									<h4>스틸컷</h4>
									<span class="count"><strong id="stillcut_current">1</strong>/<%=StillList.size() %>건</span><a
										class="link-more" href="still-cut.aspx?midx=87429">더보기</a>
								</div>
								<div class="slider-wrap">
									<div class="slider" id="still_motion">
										<div id="carouselExampleControlsNoTouching"
											class="carousel slide gap-0" data-interval="0">
											<div class="carousel-inner">
												<div class="carousel-item active">
													<img
														src="http://localhost/HCY_CINEMA/common/movie_files/<%=StillList.get(0)%>"
														class="d-block w-100" alt="...">
												</div>
												<%
												for (int i = 1; i < StillList.size(); i++) {
												%>
												<div class="carousel-item">
													<img
														src="http://localhost/HCY_CINEMA/common/movie_files/<%=StillList.get(i)%>"
														class="d-block w-100" alt="...">
												</div>
												<%
												}
												%>

											</div>
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselExampleControlsNoTouching"
												data-bs-slide="prev"
												style="position: absolute; height: 440px; top: 20px;">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselExampleControlsNoTouching"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="visually-hidden">Next</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- .sect-stillcut -->



							 <div class="sect-grade" id="sect-grade">
								<!-- preegg.css 연관 UI -->
								<div class="movie_grade">
									<a class="info" id="goldenEggAlert" href="javascript:void(0);"><img
										src="https://img.cgv.co.kr/R2014/images/common/ico/ico-question-mark.png"
										alt="?"></a>
									<div class="egg_point">
										<!-- 영화요약문구 -->
										<div class="title">
											이 영화의<br>
											<strong>관람포인트는?</strong>
										</div>
										<!--  <div class="rating">
                            <div class="box">
                                <span class="sprite_preegg big default"></span>
                                <span class="desc">Pre Egg</span>
                                <span class="percent">99%</span>
                                <span class="tooltip">사전기대지수</span>
                            </div>
                            <div class="box box_golden">
                                <span class="sprite_preegg big good"></span>
                                <span class="desc">Golden Egg</span>
                                <span class="percent">?</span>
                                <span class="tooltip">실관람평지수</span>
                            </div>
                        </div> -->
									</div>
<!-- <div style="text-align: center; height: 180px; display: flex; justify-content: center; align-items: center;">
    <div style="width: 128px;">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" style="width: 128px; height: 128px;">
    </div>
    <div style="width: 128px;">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" style="width: 128px; height: 128px;">
    </div>
    <div style="width: 128px;">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" style="width: 128px; height: 128px;">
    </div>
    <div style="width: 128px;">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" style="width: 128px; height: 128px;">
    </div>
    <div style="width: 128px;">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" style="width: 128px; height: 128px;">
    </div>
    <div style="width: 110px;position:relative;overflow:hidden;">
          <img src="http://localhost/HCY_CINEMA/common/images/star.png" style="float:right;width: 64px; height: 110px; position:absolute;top:-53px;right:630px">
    </div>
</div> -->
<%
//1%에 1.1퍼
ReviewInfoVO riVO = mDAO.reviewCntArg(movieCode);
double img1=0;
double img2=0;
double img3=0;
double img4=0;
double img5=0;
double imtstar=0;
int arg=(int)riVO.getReviewArg();
System.out.println(arg);
switch(arg){

case 0:
	 img1=(riVO.getReviewArg()-(double)arg)*110;
	 img2=0;
	 img3=0;
	 img4=0;
	 img5=0;
	 break;
case 1:
	 img1=110;
	 img2=(riVO.getReviewArg()-(double)arg)*110;
	 img3=0;
	 img4=0;
	 img5=0;
	break;
case 2:
	 img1=110;
	 img2=110;
	 img3=(riVO.getReviewArg()-(double)arg)*110;
	 img4=0;
	 img5=0;
	 break;
case 3:
	 img1=110;
	 img2=110;
	 img3=110;
	 img4=(riVO.getReviewArg()-(double)arg)*110;
	 img5=0;
	 break;
case 4:
	 img1=110;
	 img2=110;
	 img3=110;
	 img4=110;
	 img5=(riVO.getReviewArg()-(double)arg)*110;
	 break;
case 5:
	 img1=110;
	 img2=110;
	 img3=110;
	 img4=110;
	 img5=110;
	 break;
	
}
System.out.println(imtstar+" / "+img4+" / "+(double)arg+" / "+ riVO.getReviewArg());
%>
<div style="text-align: center;">
    <div class="star-rating">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" class="star" alt="빈 별">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" class="star" alt="빈 별">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" class="star" alt="빈 별">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" class="star" alt="빈 별">
        <img src="http://localhost/HCY_CINEMA/common/images/empty_star.png" class="star" alt="빈 별">
    </div>
    <img src="http://localhost/HCY_CINEMA/common/images/star.png" style="position:absolute;top:145px;right:84px;clip: rect(0px,<%=img5%>px, 110px, 0px);">
    <img src="http://localhost/HCY_CINEMA/common/images/star.png" style="position:absolute;top:145px;right:215px;clip: rect(0px,<%=img4%>px, 110px, 0px);">
    <img src="http://localhost/HCY_CINEMA/common/images/star.png" style="position:absolute;top:145px;right:344px;clip: rect(0px,<%=img3%>px, 110px, 0px);">
    <img src="http://localhost/HCY_CINEMA/common/images/star.png" style="position:absolute;top:145px;right:475px;clip: rect(0px,<%=img2%>px, 110px, 0px);">
    <img src="http://localhost/HCY_CINEMA/common/images/star.png" style="position:absolute;top:145px;right:607px;clip: rect(0px,<%=img1%>px, 110px, 0px);">
    </div>

	     
									

									<!-- Chart code -->
									<script>
										// 2020.05.07 매력포인트 차트
										var chart = AmCharts
												.makeChart(
														"charm",
														{
															"type" : "radar",
															"radius" : "35%", //넓이

															"dataProvider" : [
																	{
																		"key" : "감독연출",
																		"value" : 46,
																		"color" : "rgb(255,133,179)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	},
																	{
																		"key" : "스토리",
																		"value" : 59,
																		"color" : "rgb(254,196,70)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	},
																	{
																		"key" : "영상미",
																		"value" : 24,
																		"color" : "rgb(142,189,255)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	},
																	{
																		"key" : "배우연기",
																		"value" : 80,
																		"color" : "rgb(100,169,178)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	},
																	{
																		"key" : "OST",
																		"value" : 17,
																		"color" : "rgb(178,103,183)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	} ],
															"valueAxes" : [ {
																"axisTitleOffset" : 10,
																"minimum" : 0,
																"maximum" : 100,
																"axisAlpha" : 0.15,
																"unitPosition" : "right",
																"gridColor" : "#000000",
																"autoGridCount" : false,
																"gridCount" : 5,
																"labelsEnabled" : false,
																"tickLength" : 1
															} ],
															"guides" : [ {
																"fillAlpha" : 0.10,
																"value" : 0,
																"toValue" : 10,
																"color" : "#060"
															} ],
															"balloon" : {
																"enabled" : false
															},
															"startDuration" : 0,
															"graphs" : [ {
																"bullet" : "round",
																"bulletSize" : 7,
																"bulletBorderAlpha" : "1",
																"bulletBorderColor" : "rgb(255,255,255)",
																"bulletBorderThickness" : "1",
																"lineThickness" : 1,
																"lineColor" : "#fb8c43",
																"fillAlphas" : 0.1,
																"valueField" : "value",
																"lineColorField" : "color"
															} ],
															"categoryField" : "key",
															"export" : {
																"enabled" : false
															},
															"autoResize" : false,
															"color" : "rgb(0,0,0)",
															"fontSize" : 12,
															"fontFamily" : "CJONLYONENEW",
															"tapToActivate" : false,
															"rollOverGraphItem" : function() {
																console
																		.log('rollOverGraphItem')

															}
														});

										// 2020.05.07 감정포인트 차트(7시방향 1번째, 12시 방향이 3번째 순서로 3번째항목부터 데이터 셋팅)
										var chart = AmCharts
												.makeChart(
														"emotion",
														{
															"type" : "radar",
															"radius" : "35%", //넓이

															"dataProvider" : [
																	{
																		"key" : "스트레스 해소",
																		"value" : 21,
																		"color" : "rgb(255,133,179)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	},
																	{
																		"key" : "유쾌함",
																		"value" : 13,
																		"color" : "rgb(254,196,70)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	},
																	{
																		"key" : "공감",
																		"value" : 47,
																		"color" : "rgb(142,189,255)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	},
																	{
																		"key" : "몰입감",
																		"value" : 65,
																		"color" : "rgb(100,169,178)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	},
																	{
																		"key" : "감동",
																		"value" : 34,
																		"color" : "rgb(178,103,183)",
																		"rollOverColor" : "rgb(0,0,0)",
																		"selectedColor" : "rgb(0,0,0)",
																	} ],
															"valueAxes" : [ {
																"axisTitleOffset" : 10,
																"minimum" : 0,
																"maximum" : 100,
																"axisAlpha" : 0.15,
																"unitPosition" : "right",
																"gridColor" : "#000000",
																"autoGridCount" : false,
																"gridCount" : 5,
																"labelsEnabled" : false,
																"tickLength" : 1
															} ],
															"guides" : [ {
																"fillAlpha" : 0.10,
																"value" : 0,
																"toValue" : 10,
																"color" : "#060"
															} ],
															"balloon" : {
																"enabled" : false
															},
															"startDuration" : 0,
															"graphs" : [ {
																"bullet" : "round",
																"bulletSize" : 7,
																"bulletBorderAlpha" : "1",
																"bulletBorderColor" : "rgb(255,255,255)",
																"bulletBorderThickness" : "1",
																"lineThickness" : 1,
																"lineColor" : "#FB4357",
																"fillAlphas" : 0.1,
																"valueField" : "value",
																"lineColorField" : "color"
															} ],
															"categoryField" : "key",
															"export" : {
																"enabled" : false
															},
															"autoResize" : false,
															"color" : "rgb(0,0,0)",
															"fontSize" : 12,
															"fontFamily" : "CJONLYONENEW",
															"tapToActivate" : false,
															"rollOverGraphItem" : function() {
																console
																		.log('rollOverGraphItem')
															}
														});
									</script>

								</div>
								<div class="real-rating">
									<p class="title">
										관람일 포함 7일 이내 관람평을 남기시면 <strong>CJ ONE 20P</strong>가 적립됩니다.
									</p>
									<p class="desc">
										<span><em>323</em> 명의 실관람객이 평가해주셨습니다.</span>
									</p>
									<div class="wrap_btn">
										<a class="link-gradewrite" href="javascript:void(0);"><span>평점작성</span></a><a
											class="link-reviewwrite" href="/movies/point/my-list.aspx"><span>내
												평점</span></a>
									</div>
								</div>
								<!-- //preegg.css 연관 UI -->
								<ul class="sort" id="sortTab">
									<li class="sortTab on" data-order-type="0" id="test"><a
										href="javascript:void(0);" title="현재선택">최신순<span
											class="arrow-down"></span></a></li>
									<li class="sortTab" data-order-type="3"><a
										href="javascript:void(0);">추천순<span class="arrow-down"></span></a></li>
								</ul>

								<div class="wrap-persongrade">
									<!-- 평점 목록 -->
									<ul id="movie_point_list_container" class="point_col2">
									<%
									PageVO pVO=new PageVO();
									int totalReview=mDAO.reviewCnt(movieCode);
									
									int pageScale=6;
									int totalPage=0;
									
									totalPage=(int) Math.ceil(totalReview / (double) pageScale);
									String tempPage = request.getParameter("currentPage");
									int currentPage = 1;

									if (tempPage != null) {
										currentPage = Integer.parseInt(tempPage);
									}
									int startNum = currentPage * pageScale - pageScale + 1;
									pageContext.setAttribute("startNum", startNum);

									int endNum = startNum + pageScale - 1;
									pVO.setStartNum(startNum);
									pVO.setEndNum(endNum);
									
									List<ReviewVO> list = mDAO.selectReview(movieCode, pVO);
									pageContext.setAttribute("reviewList", list);
									
									%>
									<c:if test="${empty reviewList }">
					<tr>
						<td colspan="8" style="text-align: center;">리뷰가 존재하지 않습니다.
					</tr>
				</c:if>
				<c:forEach var="review" items="${reviewList }" varStatus="i">
										<li class="" id="liCommentFirst35000044" data-spoilercnt="0"
											data-reportcnt="0"><a href="javascript:return false;"
											class="screen_spoiler">&nbsp;</a>
											<div class="box-image">
												<span class="thumb-image"> <img
													src="https://img.cgv.co.kr/MyCGV/Profile/2019/0815/jkm9jkm9_061340_M.jpg"
													alt="사용자 프로필"
													onerror="errorImage(this, {'type':'profile'})"> <span
													class="profile-mask"> </span>
													<div class="theater-sticker"></div>
												</span>
											</div>
											<div class="box-contents">
												<ul class="writerinfo">
													<li class="writer-name"><span class=" egg-icon good "></span>${review.id }
														</li>
													<li class="writer-etc" style="position:absolute;top:100px"><span class="day">${review.input_date }</span>
														<span class="like point_like" id="35000044"
														data-ismygood="false" data-commentidx="35000044"> <a
															href="javascript:return false;" class="btn_point_like"><span><img
																	src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"
																	alt="like" class="like_red"></span><span
																id="idLikeValue">0</span></a>
													</span></li>
													<li class="point_notify"><a href="" class="btn_notify">스포일러,
															욕설/비방 신고</a>
														<div class="notify_wrap">
															<ul>
																<li><a href="javascript:return false;"
																	class="ico_spoiler" data-commentidx="35000044"
																	data-ismyspoiler="false" data-spoilercnt="0"><span>스포일러
																			신고</span></a></li>
																<li><a href="javascript:return false;"
																	class="ico_swearword" data-commentidx="35000044"
																	data-ismyreport="false" data-reportcnt="0"><span>욕설/비방
																			신고</span></a></li>
															</ul>
														</div></li>
												</ul>
											</div>
											<div class="box-comment">
												<p>${review.content }</p>
											</div>
											</li>
											</c:forEach>

										<!-- <li class="" id="liCommentFirst34999815" data-spoilercnt="0"
											data-reportcnt="0"><a href="javascript:return false;"
											class="screen_spoiler">&nbsp;</a>
											<div class="box-image">
												<span class="thumb-image"> <img
													src="https://img.cgv.co.kr/MyCGV/Profile/2016/0329/mabin25_014728_M.jpg"
													alt="사용자 프로필"
													onerror="errorImage(this, {'type':'profile'})"> <span
													class="profile-mask"> </span>
													<div class="theater-sticker"></div>
												</span>
											</div> -->
											<!-- <div class="box-contents">
												<ul class="writerinfo">
													<li class="writer-name"><span class=" egg-icon good "></span>갈색머리
														앤</li>
													<li class="writer-etc" style="position:absolute;top:100px"><span class="day">2023.10.31</span>
														<span class="like point_like" id="34999815"
														data-ismygood="false" data-commentidx="34999815"> <a
															href="javascript:return false;" class="btn_point_like"><span><img
																	src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"
																	alt="like" class="like_red"></span><span
																id="idLikeValue">0</span></a>
													</span></li>
													<li class="point_notify"><a href="" class="btn_notify">스포일러,
															욕설/비방 신고</a>
														<div class="notify_wrap">
															<ul>
																<li><a href="javascript:return false;"
																	class="ico_spoiler" data-commentidx="34999815"
																	data-ismyspoiler="false" data-spoilercnt="0"><span>스포일러
																			신고</span></a></li>
																<li><a href="javascript:return false;"
																	class="ico_swearword" data-commentidx="34999815"
																	data-ismyreport="false" data-reportcnt="0"><span>욕설/비방
																			신고</span></a></li>
															</ul>
														</div></li>
												</ul>
											</div>
											<div class="box-comment">
												<p>실화라 그런지 영화보는 내내 맘이 아팠어요</p>
											</div></li>
										<li class="" id="liCommentFirst34999589" data-spoilercnt="0"
											data-reportcnt="0"><a href="javascript:return false;"
											class="screen_spoiler">&nbsp;</a>
											<div class="box-image">
												<span class="thumb-image"> <img
													src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif"
													alt="사용자 프로필"
													onerror="errorImage(this, {'type':'profile'})"> <span
													class="profile-mask"> </span>
													<div class="theater-sticker"></div>
												</span>
											</div>
											<div class="box-contents">
												<ul class="writerinfo">
													<li class="writer-name"><span class=" egg-icon good "></span>ss**hy
													</li>
													<li class="writer-etc" style="position:absolute;top:100px"><span class="day">2023.10.31</span>
														<span class="like point_like" id="34999589"
														data-ismygood="false" data-commentidx="34999589"> <a
															href="javascript:return false;" class="btn_point_like"><span><img
																	src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"
																	alt="like" class="like_red"></span><span
																id="idLikeValue">1</span></a>
													</span></li>
													<li class="point_notify"><a href="" class="btn_notify">스포일러,
															욕설/비방 신고</a>
														<div class="notify_wrap">
															<ul>
																<li><a href="javascript:return false;"
																	class="ico_spoiler" data-commentidx="34999589"
																	data-ismyspoiler="false" data-spoilercnt="0"><span>스포일러
																			신고</span></a></li>
																<li><a href="javascript:return false;"
																	class="ico_swearword" data-commentidx="34999589"
																	data-ismyreport="false" data-reportcnt="0"><span>욕설/비방
																			신고</span></a></li>
															</ul>
														</div></li>
												</ul>
											</div>
											<div class="box-comment">
												<p>실화 바탕으로 몰입감이 높은 영화</p>
											</div></li>
										<li class="" id="liCommentFirst34999458" data-spoilercnt="0"
											data-reportcnt="0"><a href="javascript:return false;"
											class="screen_spoiler">&nbsp;</a>
											<div class="box-image">
												<span class="thumb-image"> <img
													src="https://img.cgv.co.kr/MyCGV/Profile/2019/0328/kkn00176_020512_M.jpg"
													alt="사용자 프로필"
													onerror="errorImage(this, {'type':'profile'})"> <span
													class="profile-mask"> </span>
													<div class="theater-sticker"></div>
												</span>
											</div>
											<div class="box-contents">
												<ul class="writerinfo">
													<li class="writer-name"><span class=" egg-icon good "></span>예짱
													</li>
													<li class="writer-etc" style="position:absolute;top:100px"><span class="day">2023.10.31</span>
														<span class="like point_like" id="34999458"
														data-ismygood="false" data-commentidx="34999458"> <a
															href="javascript:return false;" class="btn_point_like"><span><img
																	src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"
																	alt="like" class="like_red"></span><span
																id="idLikeValue">0</span></a>
													</span></li>
													<li class="point_notify"><a href="" class="btn_notify">스포일러,
															욕설/비방 신고</a>
														<div class="notify_wrap">
															<ul>
																<li><a href="javascript:return false;"
																	class="ico_spoiler" data-commentidx="34999458"
																	data-ismyspoiler="false" data-spoilercnt="0"><span>스포일러
																			신고</span></a></li>
																<li><a href="javascript:return false;"
																	class="ico_swearword" data-commentidx="34999458"
																	data-ismyreport="false" data-reportcnt="0"><span>욕설/비방
																			신고</span></a></li>
															</ul>
														</div></li>
												</ul>
											</div>
											<div class="box-comment" style="height: 300px;">
												<p>대한민국 공권력의 현실</p>
											</div></li>
										<li class="" id="liCommentFirst34998998" data-spoilercnt="0"
											data-reportcnt="0"><a href="javascript:return false;"
											class="screen_spoiler">&nbsp;</a>
											<div class="box-image">
												<span class="thumb-image"> <img
													src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif"
													alt="사용자 프로필"
													onerror="errorImage(this, {'type':'profile'})"> <span
													class="profile-mask"> </span>
													<div class="theater-sticker"></div>
												</span>
											</div>
											<div class="box-contents">
												<ul class="writerinfo">
													<li class="writer-name"><span class=" egg-icon good "></span>zz**ngzz
													</li>
													<li class="writer-etc" style="position:absolute;top:100px"><span class="day">2023.10.30</span>
														<span class="like point_like" id="34998998"
														data-ismygood="false" data-commentidx="34998998"> <a
															href="javascript:return false;" class="btn_point_like"><span><img
																	src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"
																	alt="like" class="like_red"></span><span
																id="idLikeValue">4</span></a>
													</span></li>
													<li class="point_notify"><a href="" class="btn_notify">스포일러,
															욕설/비방 신고</a>
														<div class="notify_wrap">
															<ul>
																<li><a href="javascript:return false;"
																	class="ico_spoiler" data-commentidx="34998998"
																	data-ismyspoiler="false" data-spoilercnt="0"><span>스포일러
																			신고</span></a></li>
																<li><a href="javascript:return false;"
																	class="ico_swearword" data-commentidx="34998998"
																	data-ismyreport="false" data-reportcnt="0"><span>욕설/비방
																			신고</span></a></li>
															</ul>
														</div></li>
												</ul>
											</div>
											<div class="box-comment">
												<p>오랜만에 한국 영화 중 영화관에서 봐도 될 만한 작품이 나왔네요.</p>
											</div></li>
										<li class="" id="liCommentFirst34998986" data-spoilercnt="0"
											data-reportcnt="0"><a href="javascript:return false;"
											class="screen_spoiler">&nbsp;</a>
											<div class="box-image">
												<span class="thumb-image"> <img
													src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif"
													alt="사용자 프로필"
													onerror="errorImage(this, {'type':'profile'})"> <span
													class="profile-mask"> </span>
													<div class="theater-sticker"></div>
												</span>
											</div>
											<div class="box-contents">
												<ul class="writerinfo">
													<li class="writer-name"><span class=" egg-icon good "></span>안녕슬픔
													</li>
													<li class="writer-etc" style="position:absolute;top:100px"><span class="day">2023.10.30</span>
														<span class="like point_like" id="34998986"
														data-ismygood="false" data-commentidx="34998986"> <a
															href="javascript:return false;" class="btn_point_like"><span><img
																	src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"
																	alt="like" class="like_red"></span><span
																id="idLikeValue">0</span></a>
													</span></li>
													<li class="point_notify"><a href="" class="btn_notify">스포일러,
															욕설/비방 신고</a>
														<div class="notify_wrap">
															<ul>
																<li><a href="javascript:return false;"
																	class="ico_spoiler" data-commentidx="34998986"
																	data-ismyspoiler="false" data-spoilercnt="0"><span>스포일러
																			신고</span></a></li>
																<li><a href="javascript:return false;"
																	class="ico_swearword" data-commentidx="34998986"
																	data-ismyreport="false" data-reportcnt="0"><span>욕설/비방
																			신고</span></a></li>
															</ul>
														</div></li>
												</ul>
											</div>
											<div class="box-comment">
												<p>공권력의 잘못은 왜 책임지는 사람이 없는가?</p>
											</div></li>
									</ul>
								</div>
							</div> -->
							<!-- .sect-grade -->

							<div class="paging" style="width:780px;height:500px;">
								<ul id="paging_point" style="position:absolute;left:372px;bottom:-5px">
								<%
	for (int i = 1; i < totalPage + 1; i++) {
	%>
									<li <%= currentPage==i ? "class=' on'":"" %>><a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie=<%=movieCode %>&currentPage=<%=i %>" title="1페이지 선택"><%=i %></a></li>
								<!-- 	<li class="paging-side"><button class="btn-paging next"
											type="button">다음 10개</button></li>
									<li class="paging-side"><button class="btn-paging end"
											type="button">끝</button></li> -->
									<%
	}
	%>
								</ul>
							</div>



							<!-- 연관영화 -->
							<div class="sect-movielist" style="display: none">
								<h3>
									<img
										src="https://img.cgv.co.kr/R2014/images/title/h3_relation_movie.gif"
										alt="RELATION MOVIE">
								</h3>
								<ul>

									<li>
										<div class="box-image">
											<a href="/movies/detail-view/?midx=87698"> <span
												class="thumb-image"> <img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87698/87698_126.jpg"
													alt="물비늘 포스터"> <!-- 영상물 등급 노출 변경 2022.08.24 --> <i
													class="cgvIcon etc age12">12</i> <!-- <span class="ico-grade 12">12</span> -->
											</span>
											</a>
										</div>
										<div class="box-contents">
											<a href="/movies/detail-view/?midx=87698"><strong>물비늘</strong></a>
										</div>
									</li>

									<li>
										<div class="box-image">
											<a href="/movies/detail-view/?midx=87630"> <span
												class="thumb-image"> <img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87630/87630_126.jpg"
													alt="SIPFF 2023 우리는 천국에 갈 순 없지만 사랑은 할 수 있겠지 포스터"> <!-- 영상물 등급 노출 변경 2022.08.24 -->
													<i class="cgvIcon etc age15">15</i> <!-- <span class="ico-grade 15">15</span> -->
											</span>
											</a>
										</div>
										<div class="box-contents">
											<a href="/movies/detail-view/?midx=87630"><strong>SIPFF
													2023 우리는 천국에 갈 순 없지만 사랑은 할 수 있겠지</strong></a>
										</div>
									</li>

									<li>
										<div class="box-image">
											<a href="/movies/detail-view/?midx=87629"> <span
												class="thumb-image"> <img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87629/87629_126.jpg"
													alt="SIPFF 2023 야간비행 포스터"> <!-- 영상물 등급 노출 변경 2022.08.24 -->
													<i class="cgvIcon etc age18">18</i> <!-- <span class="ico-grade 18">18</span> -->
											</span>
											</a>
										</div>
										<div class="box-contents">
											<a href="/movies/detail-view/?midx=87629"><strong>SIPFF
													2023 야간비행</strong></a>
										</div>
									</li>

									<li>
										<div class="box-image">
											<a href="/movies/detail-view/?midx=87625"> <span
												class="thumb-image"> <img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87625/87625_126.jpg"
													alt="SIPFF 2023 내 것이 더 좋아 포스터"> <!-- 영상물 등급 노출 변경 2022.08.24 -->
													<i class="cgvIcon etc age18">18</i> <!-- <span class="ico-grade 18">18</span> -->
											</span>
											</a>
										</div>
										<div class="box-contents">
											<a href="/movies/detail-view/?midx=87625"><strong>SIPFF
													2023 내 것이 더 좋아</strong></a>
										</div>
									</li>

									<li>
										<div class="box-image">
											<a href="/movies/detail-view/?midx=87621"> <span
												class="thumb-image"> <img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87621/87621_126.jpg"
													alt="아줌마 포스터"> <!-- 영상물 등급 노출 변경 2022.08.24 --> <i
													class="cgvIcon etc age12">12</i> <!-- <span class="ico-grade 12">12</span> -->
											</span>
											</a>
										</div>
										<div class="box-contents">
											<a href="/movies/detail-view/?midx=87621"><strong>아줌마</strong></a>
										</div>
									</li>

									<li>
										<div class="box-image">
											<a href="/movies/detail-view/?midx=87620"> <span
												class="thumb-image"> <img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87620/87620_126.jpg"
													alt="마에스트로 번스타인 포스터"> <!-- 영상물 등급 노출 변경 2022.08.24 -->
													<i class="cgvIcon etc ageNotyet">미정</i> <!-- <span class="ico-grade Notyet">미정</span> -->
											</span>
											</a>
										</div>
										<div class="box-contents">
											<a href="/movies/detail-view/?midx=87620"><strong>마에스트로
													번스타인</strong></a>
										</div>
									</li>

								</ul>
							</div>
							<!-- .sect-movielist -->
							<!-- 연관영화 -->

						</div>
						<!-- .col-detail -->
						<iframe class="layer-wrap review_pop"
							name="ifrm_movie_time_table1" id="ifrm_movie_time_table1"
							style="display: none" title="상세리스트" height="993px" width="849px"
							frameborder="0" marginheight="0" marginwidth="0" scrolling="no"
							allowtransparency="true"></iframe>
						<!--회원 평점 모아보기 iframe. mwpark_RR2015-->
						<form method="post" id="frmPointPopup"
							action="/movies/point/default-irm.aspx" novalidate="novalidate">
							<input type="hidden" name="userid" id="frmPointUserId"> <input
								type="hidden" name="nick" id="frmPointNick">
						</form>


						<div class="col-aside" style="position:absolute;top:100px;left:850px">
							<div class="ad-partner01">
								<iframe
									src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@M_Rectangle"
									width="160" height="300" title="" frameborder="0"
									scrolling="no" marginwidth="0" marginheight="0"
									name="M_Rectangle" id="M_Rectangle"></iframe>
							</div>
							<div class="ad-external01">
								<iframe
									src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@C_Rectangle"
									width="160" height="300" title="" frameborder="0"
									scrolling="no" marginwidth="0" marginheight="0"
									name="C_Rectangle" id="C_Rectangle"></iframe>
							</div>
							<!-- 영화검색어주석 : 20211208
    <div class="sect-moviesearch">
        <div class="searchrank">
            <h3>인기 영화 검색어</h3>
            <ol>
                
            </ol>
        </div>
    </div>
    //-->
						</div>

						<!--<div class="sect-sns">
    <ul>                	
        <li><a class="link-facebook" href="#" id="link_facebook">FaceBook</a></li>
        <li><a class="link-twitter" href="#" id="link_twitter">Twitter</a></li>
    </ul>
    <div class="share">
        <div id="fb-root"></div>
        <script>
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&appId=341385562539159&version=v2.0";
                fjs.parentNode.insertBefore(js, fjs);
            } (document, 'script', 'facebook-jssdk'));
        </script>

        <div class="fb-like" style="z-index:2" data-href="http%3a%2f%2fwww.cgv.co.kr%2fmovies%2fdetail-view%2fdefault.aspx%3fmidx%3d87429" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
    </div>-->




					</div>

				</div>
				<span style="display: none" class="modifyCommentDummy"></span>
			</div>
			<!-- 실컨텐츠 끝 -->
			<script type="text/javascript">
				_TRK_CP = _TRK_CP.replace("{0}", "주요정보");
			</script>

			<!-- CGVian 리뷰 사용안함 -->


			<!-- 평점 작성 -->
			<script type="text/template" id="writeGrade">
	<div class="layer-contents on-shadow" style="width:710px;">
		<div class="popup-general">
			<div class="popwrap">
				<h1>평점작성</h1>
				<div class="pop-contents write-mygrade">

					<div class="mygrade-cont">
						<div class="movietit"><strong id="regTitle">소년들</strong></div>
						<div class="likeornot">
							<div class="writerinfo">
								<div class="box-image">
									<span class="thumb-image">   
										<img id="regUserPro" src="" alt="사용자 프로필" onerror="errorImage(this, {'type':'profile'})">                                            
										
                                        <span class="profile-mask"></span>
									</span>
								</div>
							
								<span class="round red on"><span class="position"><em class="see">실관람객</em></span></span>
								<span class="writer-name" id="regUserName"></span>
							</div>

							<div class="likebox t1" id="defaultEggPoint">
								<div class="likebox-inner">
									<label for="likeornot1-1">
										<span class="egg-icon good">
											<input type="radio" name="likeornot1" id="likeornot1-1" value="2" />
										</span>
										<span class="txt">좋았어요~^^</span>
									</label>
								</div>
							</div>
							<div class="likebox t2" id="notEggPoint">
								<div class="likebox-inner">
									<label for="likeornot1-2">
										<span class="egg-icon">
											<input type="radio" name="likeornot1" id="likeornot1-2" value="1" />
										</span>
										<span class="txt">흠~좀 별로였어요;;;</span>
									</label>
								</div>
							</div>
						</div>

						<div class="textbox">
                            <textarea id="textReviewContent" name="textReviewContent" title="영화평점 입력" cols="70" rows="2" maxlength="280" placeholder="운영원칙에 어긋나는 게시물로 판단되는 글은 제재 조치를 받을 수 있습니다."></textarea>
						</div>

						<div class="footbox">
							<span class="role">
								<a id="viewpopup" title="새창" href="javascript:void(0);" target="_blank">운영원칙 <img src="http://img.cgv.co.kr/R2014/images/common/ico/ico-question-mark.png" alt="?"></a>
							</span>
							
							<div class="rbox">
								<span class="count"><strong id="text_count">0</strong>/280(byte)</span>
								<button type="button" class="round red on" id="regBtn"><span>작성완료!</span></button>
							</div>
						</div>

					</div>
					
				</div>
				<button type="button" class="btn-close" id="regLayerClose">평점작성 팝업 닫기</button>
			</div>
		</div>
	</div>
</script>

			<!-- 평점 작성/수정시 하단에 운영원칙 버튼 클릭시 노출 -->
			<script id="temp_view" type="text/template">
<div class="layer-contents on-shadow" style="width:633px;">
    <div class="popwrap sect-operation-rule">
        <h1>운영원칙</h1>
        <div class="pop-contents">
            <p>
                CGV는 올바른 커뮤니티를 지향하기 위하여 몇 가지 운영원칙을 마련하고 있습니다.<br/>
                운영원칙에 어긋나는 게시물로 판단되는 글은 적발 시, 경고 없이 삭제되며 아이디 중지 등의<br/>
                제재 조치를 받을 수 있습니다.<br/>
                <br/>
                CGV는 보다 건전한 인터넷 문화를 지향합니다.
            </p>
            <div class="box-info"> 
                <strong>게시물 삭제 기준</strong>
                <ul>
                    <li> - 개인정보(실명, 상호명, 사진, 전화번호, 주민등록번호 등) 유포</li>
                    <li> - 동일 내용의 게시글/덧글 반복(도배)</li>
                    <li> - 특정인 대상의 <span class="txt-red">비방/욕설</span> 등의 표현으로 불쾌감을 주는 내용</li>
                    <li> - 음란성 또는 청소년에게 부적합한 내용</li>
                    <li> - 서비스 취지(성격)에 맞지 않은 내용</li>
                    <li> - <span class="txt-red">비방/허위사실 유포</span> 등의 명예훼손 관련 게시물</li>
                    <li> - 저작권 관련 게시물 등 기타 관련 법률에 위배되는 글</li>
                </ul>
            </div>
        </div>

        <button type="button" class="btn-close">운영원칙 닫기</button>
    </div>
</div>
</script>

			<!-- 2020.05.07 추가 실관람평 > 관람 포인트 선택 등록 -->
			<script id="charmPoint" type="text/template">
    <div class="layer-wrap" id="movie-emotion-select" style="width:0px; top:0px;">
    <div class="popwrap" style="width:516px;margin-top:0px;margin-left:-268px">
        <h1>관람 포인트 선택</h1>
        <div class="pop-contents">
            <!-- Contents Addon -->
            <div class="movie-emotion-select">
                <div class="header">
                    <p class="main">이 영화의 관람 포인트를 선택해주세요! </p>
                    <p class="sub"><span>중복선택</span>이 가능합니다.</p>
                </div>
                <div class="box">
                    <div class="name">
                        매력 포인트
                    </div>
                    <div class="wrap_input">
                        <label><input type="checkbox" name="charm1" id="effect" /><span>감독연출</span></label>
                        <label><input type="checkbox" name="charm2" id="story" /><span>스토리</span></label>
                        <label><input type="checkbox" name="charm3" id="visual" /><span>영상미</span></label>
                        <label><input type="checkbox" name="charm4" id="acting" /><span>배우연기</span></label>
                        <label><input type="checkbox" name="charm5" id="ost" /><span>OST</span></label>
                    </div>
                </div>

                <div class="box">
                    <div class="name">
                        감정 포인트
                    </div>
                    <div class="wrap_input">
                        <label><input type="checkbox" name="emotion1" id="emotion1" /><span>${Emotion1Text}</span></label>
                        <label><input type="checkbox" name="emotion2" id="emotion2" /><span>${Emotion2Text}</span></label>
                        <label><input type="checkbox" name="emotion3" id="emotion3" /><span>${Emotion3Text}</span></label>
                        <label><input type="checkbox" name="emotion4" id="emotion4" /><span>${Emotion4Text}</span></label>
                        <label><input type="checkbox" name="emotion5" id="emotion5" /><span>${Emotion5Text}</span></label>
                    </div>
                </div>
            </div>
            <!-- //Contents Addon -->
            <div class="set-btn fix-width">
                <button type="submit" id="charmRegBtn" class="round inred"><span>확인</span></button>
            </div>

            <input type="hidden" id="charmGenre_SMS1" value="${Genre_SMS1}" />
            <input type="hidden" id="RegCommentIdx" value="${CommentIdx}" />
        </div>
        <button type="button" class="btn-close" id="regCharmCloseBtn">관람 포인트 선택 팝업 닫기</button>
    </div>
</div>
<!-- //관람 포인트 선택 팝업 팝업 -->
</script>


			<script type="text/javascript">
				$(function() {
					// 관람 포인트 등록 팝업 닫기 버튼 클릭시
					$(document.body).on("click", "#regCharmCloseBtn",
							function() {
								location.reload();
								$('.layer-wrap').remove();
							});

					// 관람 포인트 등록 확인 버튼 클릭시   
					$(document.body)
							.on(
									"click",
									"#charmRegBtn",
									function() {
										var commentIdx = $("#RegCommentIdx")
												.val();
										var movieIdx = 87429;
										if (commentIdx == "") {
											return;
										}

										var acting = 'N';
										var story = 'N';
										var visual = 'N';
										var ost = 'N';
										var effect = 'N';
										var emotion1 = 'N';
										var emotion2 = 'N';
										var emotion3 = 'N';
										var emotion4 = 'N';
										var emotion5 = 'N';
										var genre_sms1 = $("#charmGenre_SMS1")
												.val();

										if ($('#acting').prop("checked")) {
											acting = 'Y';
										}
										if ($('#story').prop("checked")) {
											story = 'Y';
										}
										if ($('#visual').prop("checked")) {
											visual = 'Y';
										}
										if ($('#ost').prop("checked")) {
											ost = 'Y';
										}
										if ($('#effect').prop("checked")) {
											effect = 'Y';
										}
										if ($('#emotion1').prop("checked")) {
											emotion1 = 'Y'
										}
										if ($('#emotion2').prop("checked")) {
											emotion2 = 'Y'
										}
										if ($('#emotion3').prop("checked")) {
											emotion3 = 'Y'
										}
										if ($('#emotion4').prop("checked")) {
											emotion4 = 'Y'
										}
										if ($('#emotion5').prop("checked")) {
											emotion5 = 'Y'
										}
										if (acting == 'N' && story == 'N'
												&& visual == 'N' && ost == 'N'
												&& effect == 'N') {
											alert("매력 포인트를 1개 이상 선택해주세요.");
											return;
										}

										if (emotion1 == "N" && emotion2 == "N"
												&& emotion3 == "N"
												&& emotion4 == "N"
												&& emotion5 == "N") {
											alert("감정 포인트를 1개 이상 선택해주세요.");
											return;
										}

										// 관람 포인트 선택 저장
										var pointObj = app.movie();
										if (!pointObj.setCharmEdit) {
											pointObj.setCharmEdit = function(
													data, callback, error) {
												var url = '/common/ajax/point.aspx/setCharm_AddEmotion';
												app
														.ajax()
														.set(
																{
																	dataType : 'json',
																	url : url,
																	data : data,
																	contentType : "application/json; charset=utf-8",
																	successHandler : callback
																});
											}

										}
										;
										pointObj.setCharmEdit(JSON.stringify({
											'commentIdx' : commentIdx,
											'movieIdx' : movieIdx,
											'acting' : acting,
											'story' : story,
											'visual' : visual,
											'ost' : ost,
											'effect' : effect,
											'genre_sms1' : genre_sms1,
											'emotion1' : emotion1,
											'emotion2' : emotion2,
											'emotion3' : emotion3,
											'emotion4' : emotion4,
											'emotion5' : emotion5
										}), resultCharmingCallback);

										//결과
										function resultCharmingCallback(result) {
											switch (result.resultCode) {
											case "1":
												alert("관람 포인트가 등록되었습니다.");
												$('.layer-wrap').remove();
												location.reload();
												break;
											case "-1":
												alert("등록 중 오류가 발생 되었습니다.");
												break;
											default:

												break;
											}
										}
									});
				});

				// 2020.05.07 관람 포인트 등록 레이어팝업
				function charmPointPop(commentIdx) {
					// 관람 포인트 항목 조회
					var charmObj = app.movie();
					if (!charmObj.GetCharmPoint) {
						charmObj.GetCharmPoint = function(data, callback, error) {
							var url = '/common/ajax/point.aspx/GetCharmPoint_AddEmotion';
							app
									.ajax()
									.set(
											{
												dataType : 'json',
												url : url,
												data : data,
												contentType : "application/json; charset=utf-8",
												successHandler : callback
											});
						}
					}
					;
					charmObj.GetCharmPoint(JSON.stringify({
						'commentIdx' : commentIdx
					}), resultCharmCallback);

					//결과
					function resultCharmCallback(result) {
						var $std = $(this), options = {
							'$target' : $std,
							'type' : 'center',
							'html' : $('#charmPoint').tmpl(result),
							'independence' : true,
							'mask' : 'none'
						};
						app.instWin.add(options);
					}
					;
				}
			</script>

			<!-- 내가 쓴 평점 -->
			<script id="movie_my_point" type="text/x-jquery-tmpl">
<li class="user_my_point_list" id="liCommentFirst${CommentIdx}">
    <div class="box-image">
        <span class="thumb-image">     
            <img src="${UserSmallImage}"  alt="사용자 프로필" onerror="errorImage(this, {'type':'profile'})"/>                                            
            <span class="profile-mask"></span>                                                        
            <div class="theater-sticker">
				{{if MediaTypeCode.indexOf("412") > -1  }} <span class="imax">IMAX</span> {{/if}}
                {{if MediaTypeCode.indexOf("1969") > -1  }} <span class="fourdx">4DX</span> {{/if}}
                {{if MediaTypeCode.indexOf("2202") > -1  }} <span class="screenx">SCREENX</span> {{/if}}
			</div>
        </span>
    </div>
    <div class="box-contents">
        <ul class="writerinfo">                                        
            
            <li class="writer-name">                
                <span class="{{if EggPoint == 0 && Point > 0 }}  {{else  EggPoint == 1 }} egg-icon {{else  EggPoint == 2 }} egg-icon good {{else}} {{/if}}"></span>${UserIdNicName}
            </li>
            <li class="writer-etc">
                			
				<span class="day">${RegistDate}</span>
				<span class="like point_like" id="${CommentIdx}" data-isMyGood="${IsMyGOOD}" data-CommentIdx="${CommentIdx}">
					<a href="javascript:return false;" class="btn_point_like"><span><img {{if IsMyGOOD }}src="http://img.cgv.co.kr/R2014/images/point/ico_point_like.png"{{else}}src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"{{/if}} alt="like" class="like_red" /></span><span id='idLikeValue'>${GOODCNT}</span></a>
				</span>
			</li>

            <li class="point_edit">
                <a href="" class="btn_edit">평점 수정/삭제 하기</a>
                <div class="edit_wrap">
                    <ul>
                        <li><a href="javascript:return false;" class="ico_edit" data-CommentIdx="${CommentIdx}" data-MovieIdx="${MovieIdx}" data-MovieTitle="${MovieTitle}"><span>평점수정</span></a></li>
                        <li><a href="javascript:return false;" class="ico_delete" data="${CommentIdx}"><span>평점삭제</span></a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    <div class="box-comment">
        <p id="pCommentText${CommentIdx}">${CommentText}</p>
    </div>
                            
</li>
</script>
			<script id="movie_point_template" type="text/x-jquery-tmpl">

<li class={{if (SPOILERCNT >= 2 && REPORTCNT >= 2) }} "user_spolierswear"
            {{else (SPOILERCNT >= 2)}} "user_spolier"
            {{else (REPORTCNT >= 2)}} "user_swearword"
            {{else}} "" {{/if}}
    id="liCommentFirst${CommentIdx}"
    data-SPOILERCNT="${SPOILERCNT}"
    data-REPORTCNT="${REPORTCNT}"
>

    <a href="javascript:return false;" class="screen_spoiler">&nbsp;</a>
    <div class="box-image">
        <span class="thumb-image">   
                <img src="${UserSmallImage}"  alt="사용자 프로필" onerror="errorImage(this, {'type':'profile'})"/>                                            
                <span class="profile-mask">
                </span>
                <div class="theater-sticker">
				    {{if MediaTypeCode.indexOf("412") > -1  }} <span class="imax">IMAX</span> {{/if}}
                    {{if MediaTypeCode.indexOf("1969") > -1  }} <span class="fourdx">4DX</span> {{/if}}
                    {{if MediaTypeCode.indexOf("2202") > -1  }} <span class="screenx">SCREENX</span> {{/if}}
			    </div>
            </a>   
                                    
        </span>
    </div>

    <div class="box-contents">
        <ul class="writerinfo">     
        <li class="writer-name">            
            <span class="{{if EggPoint == 0 && Point > 0 }}  {{else  EggPoint == 1 }} egg-icon {{else  EggPoint == 2 }} egg-icon good {{else}} {{/if}}"></span>${UserIdNicName}
        </li>
        <li class="writer-etc">
              
				<span class="day">${RegistDate}</span>
				<span class="like point_like" id="${CommentIdx}" data-isMyGood="${IsMyGOOD}" data-CommentIdx="${CommentIdx}">
					<a href="javascript:return false;" class="btn_point_like"><span><img {{if IsMyGOOD }}src="http://img.cgv.co.kr/R2014/images/point/ico_point_like.png"{{else}}src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"{{/if}} alt="like" class="like_red" /></span><span id='idLikeValue'>${GOODCNT}</span></a>
				</span>
			</li>   
           
            {{if UserID == "" }}
            <li class="point_edit">
                <a href="##" class="btn_edit">평점 수정/삭제 하기</a>
                <div class="edit_wrap">
                    <ul>
                        <li><a href="javascript:return false;" class="ico_edit"><span>평점수정</span></a></li>
                        <li><a href="javascript:return false;" class="ico_delete" data="${CommentIdx}" ><span>평점삭제</span></a></li>
                    </ul>
                </div>
            </li>
            {{else}}
            <li class="point_notify">
                <a href="" class="btn_notify">스포일러, 욕설/비방 신고</a>
                <div class="notify_wrap">
                    <ul>
                        <li><a href="javascript:return false;" class="ico_spoiler" data-CommentIdx="${CommentIdx}" data-isMySpoiler="${IsMySPOILER}" data-SPOILERCNT="${SPOILERCNT}" ><span>{{if IsMySPOILER }}스포일러 신고 취소{{else}}스포일러 신고{{/if}}</span></a></li>
                        <li><a href="javascript:return false;" class="ico_swearword" data-CommentIdx="${CommentIdx}" data-IsMyREPORT="${IsMyREPORT}" data-REPORTCNT="${REPORTCNT}" ><span>{{if IsMyREPORT }}욕설/비방 신고 취소{{else}}욕설/비방 신고{{/if}}</span></a></li>
                    </ul>
                </div>
            </li>
            {{/if}}
            
        </ul>
    </div>
    <div class="box-comment">
        <p>${CommentText}</p>
    </div>
                            
</li>
</script>
			<script type="text/javascript">
				//<![CDATA[
				var commentOptions;
				(function($) {
					$(function() {
						//골든 에그 지수 add_css82
						$("#goldenEggAlert")
								.on(
										"click",
										function() {
											// 2020.05.07 프리에그 문구 추가
											alert("Pre Egg는 개봉 전 영화에 대한\n기대 평가 입니다.\n\nGolden Egg는 실관람객의\n영화 관람 후 평가 입니다.");
										});
						var myPointPage = 0;
						var mypointYN = false;
						var mypointPaneltyYN = false;
						var mypointShowViewYN = false;

						// 성별/연령별 예매분포 차트 추가
						var data = {

							age : [ [ "10대", 2.2 ], [ "20대", 15.2 ],
									[ "30대", 21.7 ], [ "40대", 32.1 ],
									[ "50대", 28.8 ] ],
							sex : [ [ "남 42.6%", 42.6 ], [ "여 57.4%", 57.4 ] ]

						};

						$('#jqplot_sex').graphChart({
							'type' : 'donut',
							'data' : data.sex
						});
						$('#jqplot_age').graphChart({
							'type' : 'bar',
							'data' : data.age
						});
						// 성별/연령별 예매분포 차트 추가

						//첫 로딩시 호출, 첫 로딩시는 "실관람객"탭이 디폴트여서 실관람객 평이 있냐 여부를 따져야 리스트 갯수가 맞게 나온다. "setMypointAttribute()"함수로 대처시 callback이 setMyPointBuild() 함수와 겹쳐 오락가락 하게 된다%>
						setMypointAttributeFirstLoding();
						searchPointList(1, true, 1, 0); // 첫 로딩시 평점 조회    

						var $stillCut = $('#still_motion'), $stillCutCurrent = $('#stillcut_current'), stillOptions = {
							'type' : 'photo',
							'onBeforeHandler' : onBeforeHandler
						};

						function onBeforeHandler(_index) {
							$stillCutCurrent.text(_index + 1);
						}
						$stillCut.visualMotion(stillOptions);

						//$('.btn-admit').on('click', function (e) {
						//    addMovieReviewCommunityAdmit($(this));
						//});

						//$('.view_review_detail_popup').on('click', function () {
						//    getReviewDetail($(this));
						//    return false;
						//});

						//function getReviewDetail(obj) {
						//    var reviewIdx = obj.attr('data');
						//    app.movie().getReviewDetail({'reviewIdx': parseInt(reviewIdx)}, callback);

						//    function callback(result) {
						//        var html = '';
						//        if(!result || result.length < 1) {
						//            return false;
						//        }

						//        var title = result['Title'];
						//        var content = result['Content'];

						//        html += '<div class="layer-contents">';
						//        html += '        <div class="popwrap">';
						//        html += '            <h5>' + title + '</h5>';
						//        html += '            <div class="pop-contents">';
						//        html += result['ContentsImage'] == "" ? "" : "<div><img width='100%' src='" + result['ContentsImage'] + "'></div>";
						//        html +=                 content;
						//        html += '            </div>';
						//        html += '        </div>';
						//        html += '    <button type="button" class="btn-close">' + title + '닫기</button></div>';
						//        html += '</div>';

						//        var $std = obj,
						//options = {
						//    '$target': $std,
						//    'html': html,
						//    'position': 'fixed',
						//    'mask': 'none'
						//};

						//        app.instWin.add(options);
						//    }
						//}

						//function addMovieReviewCommunityAdmit(obj) {
						//    var reviewIdx = obj.attr('data');
						//    var em = obj.find('em');

						//    app.movie().addMovieReviewCommunityAdmit(JSON.stringify({'idx': parseInt(reviewIdx)}), callback);

						//    function callback(result) {
						//        var resultCode = result.resultCode;

						//        switch(resultCode)
						//        {
						//            case "-1":
						//                app.goLogin();
						//                break;
						//            case "0":
						//                alert("인정하였습니다.");
						//                em.text(parseInt(em.text()) + 1);
						//                break;
						//            case "":
						//                alert("오류가 발생 되었습니다");
						//                break;
						//            default:
						//                alert(resultCode);
						//                break;
						//        }
						//    }
						//}

						/*내가 작성한 평점 보여주기*/
						function setMyPointBuild() {
							var movieIdx = "87429";
							app.movie().getCommentMy({
								'movieIdx' : parseInt(movieIdx)
							}, callback);

							function callback(result) {
								if (!result || result.length < 1) {
									return false;
								}

								$("#movie_my_point").tmpl(result).prependTo(
										"#movie_point_list_container");
								$('.user_my_point_list .point').point();
							}
						}

						//add_css82 평점삭제
						function removePointComment(obj) {

							var commentIdx = obj.attr('data');
							var movieIdx = "87429";
							app.movie().removePointCheck(JSON.stringify({
								'commentIdx' : parseInt(commentIdx),
								'mIdx' : parseInt(movieIdx)
							}), callback_pc);

							function callback_pc(result) {
								var resultCode = result.resultCode;
								switch (resultCode) {
								case "-1":
									app.goLogin();
									break;
								default:
									var msg = "작성한 관람평을 삭제하시겠습니까?"
									var onePointMsg = "";
									if (parseInt(resultCode) > 0) {
										onePointMsg = "관람평을 삭제하실 경우\n지급된 포인트는 차감됩니다.\n삭제하시겠습니까?";
										msg = onePointMsg;
									}
									if (confirm(msg)) {
										app
												.movie()
												.removePoint(
														JSON
																.stringify({
																	'commentIdx' : parseInt(commentIdx),
																	'mIdx' : parseInt(movieIdx),
																	'pointCode' : parseInt(resultCode)
																}), callback);
									}
									break;
								}
							}

							function callback(result) {
								var resultCode = result.resultCode;

								switch (resultCode) {
								case "-1":
									app.goLogin();
									break;
								case "0":
									deleteAfterList();
									if (confirm("삭제가 완료되었습니다.\n새로 작성하시겠습니까?")) {
										$('.link-gradewrite').click();
									} else {
										location.reload();
									}
									break;
								case "":
									alert("삭제 중 오류가 발생 되었습니다");
									break;
								default:
									alert(resultCode);
									break;
								}
							}
						}
						function deleteAfterList() {
							mypointYN = false;
							var order = $('.sort>li.on').data('order-type');
							searchPointList(1, true, 1, order);
							var cgvEggCountTxt = $('#cgvEggCountTxt').text();

							cgvEggCountTxt = cgvEggCountTxt.split(",").join("");

							var cnt = parseInt(cgvEggCountTxt);
							cnt = cnt - 1;

							if (cnt < 100) {
								var eggIconDiv = $('#eggIconDiv');
								$('#eggIconDiv').empty();
								$('#eggIconDiv')
										.html(
												'<span class="egg good"></span><span class="percent"><strong></strong>?</span>');
							}
							cnt = cnt.toString().replace(
									/\B(?=(\d{3})+(?!\d))/g, ",");
							$('#cgvEggCountTxt').html(cnt);

						}
						// 평점 리스트 조회
						function searchPointList(page, isGetTotalCount,
								filterType, orderType) {
							myPointPage = page;

							filterType = 1;
							if (!orderType) {
								orderType = $('.sort>li.on').data('order-type');
							}

							// 첫로딩후 페이지 이동시 IsGetTotalCount = false 처리됨
							// 첫로딩시 setPointListBuild()에서 result.TotalCount:전체평점갯수, 페이지 이동시 result.TotalCount:0
							if (!isGetTotalCount) {
								isGetTotalCount = false;
							}

							var isMyPageIndex = 6;
							var isMyPoint = false;
							if (mypointYN) { //내가 쓴 평점이 있다면(첫페이지만 5개 가져온다, 이후는 6개씩) 
								if (filterType == "1" && mypointShowViewYN) { //추가 : 실관람객탭이면서 실관람객인지
									isMyPoint = true;
								} else if (filterType == "2"
										&& mypointPaneltyYN) {//추가 :  패널티탭이면서 패널티회원인지
									isMyPoint = true;
								} else if (filterType == "0") { //추가 :  전체탭
									isMyPoint = true;
								}
							}

							$
									.ajax({
										type : "POST",
										url : '/common/ajax/point.aspx/GetMoviePointVariableList',
										data : "{ 'movieIdx': 87429, 'pageIndex': "
												+ page
												+ ", 'pageSize': "
												+ isMyPageIndex
												+ ", 'orderType': "
												+ orderType
												+ ", 'filterType': 1, 'isTotalCount' : "
												+ isGetTotalCount
												+ ", 'isMyPoint' : '"
												+ isMyPoint + "' }",
										contentType : "application/json; charset=utf-8",
										dataType : 'json',
										success : function(result) {
											setPointListBuild($
													.parseJSON(result.d));
										}
									});
						}

						// 평점 리스트 ajax를 통해 호출한 데이터 노출
						function setPointListBuild(result) {
							if (result == null || result.List == null
									|| result.TotalCount == null)
								return;

							$("#movie_point_list_container").empty();
							$("#movie_point_template").tmpl(result.List)
									.appendTo("#movie_point_list_container");

							$('.box-contents .point').point();
							$('.btn-delete').on('click', function() {
								removePointComment($(this));
							});

							// result.List:내가쓴평점 제외한 한페이지에 노출될 평점 목록
							// result.TotalCount : 10자 이상 평점 총 갯수                
							var ListCount = result.List.length;
							var TotalCount = result.TotalCount;

							//1페이지 이면서 내가 쓴 평점이 있다면 보여 준다 : 상단 탭 "실관람객", "패널티" "전체" 여부 체크는 "setMyPointBuild()"안에서 체크 한다
							if (mypointYN && myPointPage == 1) {
								ListCount++; // 1페이지는 내가쓴평점 추가

								if (TotalCount == 0)
									TotalCount++;

								setMyPointBuild();
							}

							// 첫 페이징 로딩후 result.TotalCount가 0처리되어 타지 않음
							if (ListCount <= TotalCount) {
								setPagingNavigation(TotalCount, 6,
										'#paging_point',
										'#movie_point_list_container',
										searchPointList);

								// 실관람평 건수
								$(".real-rating .desc span em").html(
										TotalCount.toString().replace(
												/\B(?=(\d{3})+(?!\d))/g, ","));
							}

							if (result.List.length == 0) {
								$("#movie_point_list_container li").css(
										"border-right", "none");
							}
						}

						/* 첫로딩시 1번만 호출, 내가 쓴평점이 있는지 전영변수 세팅 및 체크 하는 함수 */
						function setMypointAttributeFirstLoding() {
							if ("False" == "True" || "False" == "true") {
								mypointYN = true;
							}

							if ("False" == "True" || "False" == "true") {
								mypointPaneltyYN = true;
							}

							if ("False" == "True" || "False" == "true") {
								mypointShowViewYN = true;
							}
						}

						/* 내가 쓴평점이 있는지 전영변수 세팅 및 체크 하는 함수 */
						function setMypointAttribute() {
							var movieIdx = "87429";
							app.movie().getCommentMy({
								'movieIdx' : parseInt(movieIdx)
							}, callback);

							function callback(result) {
								if (!result || result.length < 1) {
									mypointYN = false;
									return false;
								}

								//패널티 회원인지 여부
								if (result["IsViewer"] && result["IsShowView"]
										&& !result["IsNormal"]) {
									mypointPaneltyYN = true; //내평점 패널티
								} else {
									mypointPaneltyYN = false; //내평점 패널티
								}

								//실관람객인지 여부
								if (result["IsShowView"]) {
									mypointShowViewYN = true; //실관람객
								} else {
									mypointShowViewYN = false; //비실관람객
								}

								mypointYN = true;
							}
						}

						//2014.12 스포일러 신고 ico_spoiler
						$(document)
								.on(
										"click",
										".ico_spoiler",
										function() {
											var obj = $(this);
											var objLiComment = $("li[id*='liCommentFirst"
													+ obj
															.attr('data-CommentIdx')
													+ "']");

											var nowSPOILERCNTValue = objLiComment
													.attr('data-SPOILERCNT');
											var movieIdx = "87429";

											if (obj.attr('data-isMySpoiler') == "True"
													|| obj
															.attr('data-isMySpoiler') == "true") {
												/* 스포일러 신고 취소 */

												if (confirm("스포일러 신고를 취소하시겠습니까?")) {
													app
															.movie()
															.setCommentSpoilerDelete(
																	JSON
																			.stringify({
																				'commentIdx' : parseInt(obj
																						.attr('data-CommentIdx')),
																				'movieIdx' : parseInt(movieIdx)
																			}),
																	callbackSpoilerDelete);
													function callbackSpoilerDelete(
															result) {
														var resultCode = result.resultCode;
														switch (resultCode) {
														case "-1":
															app.goLogin();
															break;
														case "0":
															alert("시스템 오류 입니다.");
															break;
														case "1":
															alert("신고가 취소되었습니다.");
															obj
																	.find(
																			'span')
																	.html(
																			'스포일러 신고');
															obj
																	.attr(
																			'data-isMySpoiler',
																			'Fales');

															objLiComment
																	.attr(
																			'data-SPOILERCNT',
																			Number(nowSPOILERCNTValue) - 1);
															if (Number(objLiComment
																	.attr('data-SPOILERCNT')) >= 2) {
																objLiComment
																		.children(
																				'a')
																		.addClass(
																				"hide");
																objLiComment
																		.attr(
																				"class",
																				"user_spolier");
															} else {
																objLiComment
																		.attr(
																				"class",
																				"");

															}

															break;
														default:
															alert(resultCode);
															break;
														}
													}
												}
											} else {
												/* 스포일러 신고 */
												if (confirm("평점 내용에 스포일러가 포함되어 있습니까?")) {
													app
															.movie()
															.setCommentSpoilerInsert(
																	JSON
																			.stringify({
																				'commentIdx' : parseInt(obj
																						.attr('data-CommentIdx')),
																				'movieIdx' : parseInt(movieIdx)
																			}),
																	callbackSpoilerInsert);

													function callbackSpoilerInsert(
															result) {
														var resultCode = result.resultCode;
														switch (resultCode) {
														case "-1":
															app.goLogin();
															break;
														case "0":
															alert("시스템 오류 입니다.");
															break;
														case "1":
															alert("신고가 접수되었습니다.\n내용 확인 후 반영하도록 하겠습니다.");
															obj
																	.find(
																			'span')
																	.html(
																			'스포일러 신고 취소');
															obj
																	.attr(
																			'data-isMySpoiler',
																			'True');
															objLiComment
																	.attr(
																			'data-SPOILERCNT',
																			Number(nowSPOILERCNTValue) + 1);
															if (Number(objLiComment
																	.attr('data-SPOILERCNT')) >= 2
																	&& Number(objLiComment
																			.attr('data-REPORTCNT')) >= 2) {
																objLiComment
																		.children(
																				'a')
																		.removeClass(
																				"hide");
																objLiComment
																		.attr(
																				"class",
																				"user_spolierswear")
															} else if (Number(objLiComment
																	.attr('data-SPOILERCNT')) >= 2) {
																objLiComment
																		.children(
																				'a')
																		.removeClass(
																				"hide");
																objLiComment
																		.attr(
																				"class",
																				"user_spolier")
															} else if (Number(objLiComment
																	.attr('data-REPORTCNT')) >= 2) {
																objLiComment
																		.children(
																				'a')
																		.removeClass(
																				"hide");
																objLiComment
																		.attr(
																				"class",
																				"user_swearword")
															}
															break;
														case "-2":
															alert("이미 신고 하였습니다.");
															break;
														default:
															alert(resultCode);
															break;
														}
													}
												}
											}

										});

						//2014.12 욕설/비방 신고 ico_swearword
						$(document)
								.on(
										"click",
										".ico_swearword",
										function() {
											var obj = $(this);
											var objLiComment = $("li[id*='liCommentFirst"
													+ obj
															.attr('data-CommentIdx')
													+ "']");

											var nowREPORTCNTValue = objLiComment
													.attr('data-REPORTCNT');
											var movieIdx = "87429";

											if (obj.attr('data-IsMyREPORT') == "True"
													|| obj
															.attr('data-IsMyREPORT') == "true") {
												/* 욕설/비방 신고 취소 */
												if (confirm("욕설/비방 신고를 취소하시겠습니까?")) {
													app
															.movie()
															.setCommentReportDelete(
																	JSON
																			.stringify({
																				'commentIdx' : parseInt(obj
																						.attr('data-CommentIdx')),
																				'movieIdx' : parseInt(movieIdx)
																			}),
																	callbackReportDelete);
													function callbackReportDelete(
															result) {
														var resultCode = result.resultCode;
														switch (resultCode) {
														case "-1":
															app.goLogin();
															break;
														case "0":
															alert("시스템 오류 입니다.");
															break;
														case "1":
															alert("신고가 취소되었습니다.");
															obj
																	.find(
																			'span')
																	.html(
																			'욕설/비방 신고');
															obj
																	.attr(
																			'data-IsMyREPORT',
																			'Fales');

															objLiComment
																	.attr(
																			'data-REPORTCNT',
																			Number(nowREPORTCNTValue) - 1);
															if (Number(objLiComment
																	.attr('data-REPORTCNT')) >= 2) {
																objLiComment
																		.children(
																				'a')
																		.addClass(
																				"hide");
																objLiComment
																		.attr(
																				"class",
																				"user_swearword");
															} else {
																objLiComment
																		.attr(
																				"class",
																				"");

															}

															break;
														default:
															alert(resultCode);
															break;
														}
													}
												}
											} else {
												/* 욕설/비방 신고 */
												if (confirm("평점 내용에 욕설/비방성 내용이 포함되어 있습니까?")) {
													app
															.movie()
															.setCommentReportInsert(
																	JSON
																			.stringify({
																				'commentIdx' : parseInt(obj
																						.attr('data-CommentIdx')),
																				'movieIdx' : parseInt(movieIdx)
																			}),
																	callbackReportInsert);

													function callbackReportInsert(
															result) {
														var resultCode = result.resultCode;
														switch (resultCode) {
														case "-1":
															app.goLogin();
															break;
														case "0":
															alert("시스템 오류 입니다.");
															break;
														case "1":
															alert("신고가 접수되었습니다.\n내용 확인 후 반영하도록 하겠습니다.");
															obj
																	.find(
																			'span')
																	.html(
																			'욕설/비방 신고 취소');
															obj
																	.attr(
																			'data-IsMyREPORT',
																			'True');
															objLiComment
																	.attr(
																			'data-REPORTCNT',
																			Number(nowREPORTCNTValue) + 1);

															if (Number(objLiComment
																	.attr('data-SPOILERCNT')) >= 2
																	&& Number(objLiComment
																			.attr('data-REPORTCNT')) >= 2) {
																objLiComment
																		.children(
																				'a')
																		.removeClass(
																				"hide");
																objLiComment
																		.attr(
																				"class",
																				"user_spolierswear")
															} else if (Number(objLiComment
																	.attr('data-SPOILERCNT')) >= 2) {
																objLiComment
																		.children(
																				'a')
																		.removeClass(
																				"hide");
																objLiComment
																		.attr(
																				"class",
																				"user_spolier")
															} else if (Number(objLiComment
																	.attr('data-REPORTCNT')) >= 2) {
																objLiComment
																		.children(
																				'a')
																		.removeClass(
																				"hide");
																objLiComment
																		.attr(
																				"class",
																				"user_swearword")
															}
															break;
														case "-2":
															alert("이미 신고 하였습니다.");
															break;
														default:
															alert(resultCode);
															break;
														}
													}
												}
											}

										});

						//2014.12 좋아요버튼 n
						$(document)
								.on(
										"click",
										".point_like",
										function() {

											var obj = $(this);

											var nowLikeValue = obj.find(
													'#idLikeValue').html();
											var movieIdx = "87429";

											if (obj.attr('data-isMyGood') == "True"
													|| obj
															.attr('data-isMyGood') == "true") {
												/*추천 제거 하기 */
												app
														.movie()
														.setCommentGoodDelete(
																JSON
																		.stringify({
																			'commentIdx' : parseInt(obj
																					.attr('data-CommentIdx'))
																		}),
																callbackDelete);
												function callbackDelete(result) {
													var resultCode = result.resultCode;

													switch (resultCode) {
													case "-1":
														app.goLogin();
														break;
													case "0":
														alert("시스템 오류 입니다.");
														break;
													case "1":
														alert("추천을 취소하였습니다.");

														// 1page이면 0 또는 1 값이 온다
														if (myPointPage == "0"
																|| myPointPage == "1") {
															$(
																	"span[id*='"
																			+ obj
																					.attr('id')
																			+ "']")
																	.find(
																			'#idLikeValue')
																	.html(
																			Number(nowLikeValue) - 1);
															$(
																	"span[id*='"
																			+ obj
																					.attr('id')
																			+ "']")
																	.find('img')
																	.attr(
																			'src',
																			'http://img.cgv.co.kr/R2014/images/point/ico_point_default.png');
															$(
																	"span[id*='"
																			+ obj
																					.attr('id')
																			+ "']")
																	.attr(
																			'data-isMyGood',
																			'False');
														} else {
															obj
																	.find(
																			'#idLikeValue')
																	.html(
																			Number(nowLikeValue) - 1);
															obj
																	.find('img')
																	.attr(
																			'src',
																			'http://img.cgv.co.kr/R2014/images/point/ico_point_default.png');
															obj
																	.attr(
																			'data-isMyGood',
																			'False');
														}

														break;
													case "-2":
														alert("추천 하지 않은 글 입니다.");
														break;
													default:
														alert(resultCode);
														break;
													}
												}
											} else {
												/*추천 하기 */
												app
														.movie()
														.setCommentGoodInsert(
																JSON
																		.stringify({
																			'commentIdx' : parseInt(obj
																					.attr('data-CommentIdx')),
																			'movieIdx' : parseInt(movieIdx)
																		}),
																callbackInsert);
												function callbackInsert(result) {
													var resultCode = result.resultCode;

													switch (resultCode) {
													case "-1":
														app.goLogin();
														break;
													case "0":
														alert("시스템 오류 입니다.");
														break;
													case "1":
														alert("추천하였습니다.");

														// 1page이면 0 또는 1 값이 온다
														if (myPointPage == "0"
																|| myPointPage == "1") {
															$(
																	"span[id*='"
																			+ obj
																					.attr('id')
																			+ "']")
																	.find(
																			'#idLikeValue')
																	.html(
																			Number(nowLikeValue) + 1);
															$(
																	"span[id*='"
																			+ obj
																					.attr('id')
																			+ "']")
																	.find('img')
																	.attr(
																			'src',
																			'http://img.cgv.co.kr/R2014/images/point/ico_point_like.png');
															$(
																	"span[id*='"
																			+ obj
																					.attr('id')
																			+ "']")
																	.attr(
																			'data-isMyGood',
																			'True');
														} else {
															obj
																	.find(
																			'#idLikeValue')
																	.html(
																			Number(nowLikeValue) + 1);
															obj
																	.find('img')
																	.attr(
																			'src',
																			'http://img.cgv.co.kr/R2014/images/point/ico_point_like.png');
															obj
																	.attr(
																			'data-isMyGood',
																			'True');
														}
														break;
													case "-2":
														alert("이미 추천하였습니다.");
														break;
													case "-3":
														alert("'좋아요'는 영화를 관람하신\n고객님께 제공되는 기능입니다.");
														break;
													default:
														alert(resultCode);
														break;
													}
												}
											}
										});

						//2014.12 삭제버튼 n
						$(document).on("click", ".ico_delete", function() {
							removePointComment($(this));
						});

						$(document).on("click", ".btn_edit", function() {
							$('.btn_edit').removeClass('on');
							$(this).toggleClass('on');
							$('.btn_notify').removeClass('on');
							return false;
						});

						$(document).on("click", ".btn_notify", function() {
							$(this).toggleClass('on');
							$('.btn_edit').removeClass('on');
							return false;
						});

						$(document).on("click", ".screen_spoiler", function() {
							$(this).addClass('hide');
							return false;
						});

						$(document).click(function() {
							$('.btn_edit').removeClass('on');
							$('.btn_notify').removeClass('on');
						});

						//평점목록 Filtering
						$('#sortTab .sortTab').on(
								'click',
								function() {
									if (!$(this).hasClass("on")) {
										$('#sortTab').find('.sortTab')
												.removeClass("on");
										$(this).addClass("on");
										var orderType = $(this).attr(
												'data-order-type');
										searchPointList(1, true, 1, orderType);
									}

								});

						//모바일버전 가기
						$('.go-mobile')
								.on(
										'click',
										function() {
											location
													.replace(updateQueryStringParameter(
															location.href,
															"IsMobile", "N"));
											return false;
										});

						// 회원 평점 모아보기 레이어팝업
						$('.writerinfo .writer-name a').on('click', function() {
							return;
							var $std = $(this), options = {
								'$target' : $std,
								'type' : 'center',
								'html' : $('#view_memberGrade').html(),
								'mask' : 'none'
							};
							app.instWin.add(options);
							return false;
						});

						// 평점 작성하기 레이어팝업
						$('.link-gradewrite')
								.on(
										'click',
										function() {
											var movObj = app.movie();

											if (!movObj.GetWatchingMovieCheck) {
												movObj.GetWatchingMovieCheck = function(
														data, callback, error) {
													var url = '/common/ajax/point.aspx/GetWatchingMovieCheck';
													app
															.ajax()
															.set(
																	{
																		dataType : 'json',
																		url : url,
																		data : data,
																		contentType : "application/json; charset=utf-8",
																		successHandler : callback
																	});
												}
											}
											;

											movObj
													.GetWatchingMovieCheck(
															JSON
																	.stringify({
																		'MovieIdx' : 87429
																	}),
															GetWatchingMovieCheckCallback);

											return false;

										});

						function GetWatchingMovieCheckCallback(result) {
							var resultCode = result.resultCode;
							//0:영화 인덱스 없을때, 1:이미 등록회원, 2:실관람객, 3 : 실관람객이 아닌때
							switch (resultCode) {
							case "-1":
								app.goLogin();
								break;
							case "0":
								//addData(isChecked);
								app.goLogin();
								break;
							case "1":
								if (confirm("이미 관람평 작성을 완료하셨습니다.\n관람평을 수정하시겠습니까?")) {
									if ($(".modifyCommentDummy").length == 1) {
										$(".modifyCommentDummy").click();
									}
								}
								break;
							case "2":
								var $std = $(this);
								commentOptions = {
									'$target' : $std,
									'type' : 'center',
									'html' : $('#writeGrade').html(),
									'independence' : true,
									'mask' : 'none'
								};
								var isLogin = app.config('isLogin');
								if (isLogin) {
									app.instWin.add(commentOptions);
									likeOrNot();
									RegPop();
								} else {
									app.goLogin();
								}
								break;
							case "3":
								if (confirm("실관람객에 한하여 관람평 작성이 가능합니다.\n실관람객 등록 페이지로 이동하시겠습니까?")) {
									location.href = "/user/movielog/watched.aspx";
								}

								break;
							default:
								alert(resultCode);
								break;
							}
						}

						function RegPop() {
							$('#textReviewContent').count({
								useMember : true,
								callback : function(c) {
									$('#text_count').text(c);
								}
							});
							$('#regTitle').html('소년들');

							$('#defaultEggPoint').addClass('on');
							$('#regBtn')
									.on(
											'click',
											function() {

												var textReviewContent = $(
														'#textReviewContent')
														.val();

												textReviewContent = textReviewContent
														.replace(/^\s+/, "");
												textReviewContent = textReviewContent
														.replace(/\s+$/g, "");
												textReviewContent = textReviewContent
														.replace(/\n/g, "");
												textReviewContent = textReviewContent
														.replace(/\r/g, "");

												if (textReviewContent == "") {
													alert("내용을 입력하지 않았습니다.");
													$('#textReviewContent')
															.focus();
													return;
												}

												// 2018.04.26 박인선 실관람평 10자 미만 등록불가
												if (textReviewContent.replace(
														/\s*/g, "").length < 10) {
													alert("문자를 포함하여 10자 이상(공백 제외) 작성하셔야 등록됩니다.");
													$('#textReviewContent')
															.focus();
													return;
												}

												// [2015-12-08]평점 개편 이후 실관람객 공개 체크 삭제(무조건 true)
												var isChecked = true;

												app.movie().getViewUser({
													'movieIdx' : '87429',
													'isOpenView' : isChecked
												}, callback); /*[2015-12-09]실관람객여부 체크 시 진짜 인지를 확인 & 이미 평점을 작성한 적이 있는지 확인. : upt_mwpark*/

												function callback(result) {
													var resultCode = result.resultCode;
													if (resultCode
															.indexOf("이미 작성하셨습니다") > 0) {
														resultCode = "해당 영화에 대한 관람평을 이미 작성하셨습니다.\n관람평은 영화당 1회만 작성할 수 있습니다.\n수정을 원하는 경우 관람평수정 기능을 이용해주시기 바랍니다.";

													}
													switch (resultCode) {
													case "-1":
														alert("로그인이 필요한 서비스 입니다");
														break;
													case "0":
														addData(isChecked);
														break;
													case "1":
														if (confirm("실관람객에 한하여 관람평 작성이 가능합니다.\n실관람객 등록 페이지로 이동하시겠습니까? ")) {
															location.href = "/user/movielog/watched.aspx";
														}
														break;
													default:
														alert(resultCode);
														break;
													}
												}

												return false;
											});
						}

						function likeOrNot() {
							$('.likebox label').on('click', function() {
								var $wrap = $(this).parents('.likebox');
								$wrap.siblings().removeClass('on');
								$wrap.addClass('on');
							});

							$('.likebox input').on('focusin', function() {
								var $wrap = $(this).parents('.likebox');
								$wrap.siblings().removeClass('on');
								$wrap.addClass('on');
							});

							$('#viewpopup').on('click', function() {
								var $std = $(this), options = {
									'$target' : $std,
									'type' : 'center',
									'html' : $('#temp_view').html(),
									'independence' : true,
									'mask' : 'none'
								};
								app.instWin.add(options);

								return false;
							});
							$("#regLayerClose").on("click", function() {
								$('.layer-wrap').remove();
							});

						}

						/*[2015-12-09]평점 등록 로직. start : upt_mwpark*/
						//평점 등록
						function addData(isChecked) {

							var isCJOneMember = "False";
							if (isCJOneMember == "False") {
								if (confirm("고객님은 CJONE 온라인 통합회원이 아니십니다.\n'실관람객 리뷰' 포인트 적립을 원하시면\nCJ ONE 온라인통합회원으로 전환부탁드립니다.") == true) {
									window
											.open(
													"https://www.cjone.com/cjmweb/join.do?coopco_cd=7010&brnd_cd=1000",
													"_newtab");
									return false;
								}
							}

							//이벤트가 있을 시 eventIdx 에 Event Idx  값 넣기

							var EggPoints = 0;
							if ($('#defaultEggPoint').hasClass("on")) {
								EggPoints = 2;
							}
							if ($('#notEggPoint').hasClass("on")) {
								EggPoints = 1;
							}

							var defaults = {
								'flag' : 'M',
								'idx' : '87429',
								'textReviewContent' : $('#textReviewContent')
										.val(),
								'open_info' : true, // [2015-12-09] 평점 개편 이후 isCheked 는 항상 true
								'chk_facebook' : false, // 페이스북 연동 기능 삭제
								'chk_twitter' : false, // 트위터 연동 기능 삭제
								'rdo_User' : 1,
								'addUserType' : '',
								'point' : '', /*[2015-12-08]평점 개편 이후 point 사용 안함 : del_mwpark*/
								'eventIdx' : 0,
								'url' : escape(location.href),
								'eggPoint' : EggPoints
							/*[2015-12-08]등록시 eggPoint 파라미터 추가. : add_mwpark*/
							};

							app.movie().setPointReview(
									JSON.stringify(defaults), resultCallback); /*[2015-12-09] 평점 등록 프로시저. : upt_mwpark*/
							setMypointAttribute();
							function resultCallback(result) {
								switch (result.resultCode) {
								case "-1":
									app.goLogin();
									break;
								case "-2":
									alert("올바르게 데이타가 입력되지 않았습니다.");
									break;
								case "-3":
									alert(result.resultTitle);
									break;
								case "0":
									if (confirm("관람평이 등록되었습니다.\n임직원의 경우 실관람평 작성 포인트는 지급되지 않습니다.\n관람하신 영화의 [관람 포인트]를\n선택하시겠습니까?")) { //확인
										$('.layer-wrap').remove();
										charmPointPop(result.resultIndex);
									} else { //취소
										$('.layer-wrap').remove();
										location.reload();
									}
									break;
								case "01":/*[2015-12-09]평점 개편 이후 지급 포인트 및 관람일로부터 14일 => 7일 로 변경. start : upt_mwpark*/
									if (confirm("관람일 포함 7일 이내 관람평이 등록되어\nCJ ONE 20P가 지급되었습니다.\n관람하신 영화의 관람 포인트를\n선택해주시면 30P를 추가 지급해드립니다.\n\n포인트는 최초 1회만 지급됩니다.")) { //확인
										$('.layer-wrap').remove();
										charmPointPop(result.resultIndex);
									} else { //취소
										$('.layer-wrap').remove();
										location.reload();
									}
									break;
								//아트하우스
								case "02":
									if (confirm("관람일 포함 7일 이내 관람평이 등록되어\nCJ ONE 30P가 지급되었습니다.\n(아트하우스 Club 회원 추가 10P 적립 포함)\n관람하신 영화의 관람 포인트를\n선택해주시면 30P를 추가 지급해드립니다.\n\n포인트는 최초 1회만 지급됩니다.")) { //확인
										$('.layer-wrap').remove();
										charmPointPop(result.resultIndex);
									} else { //취소
										$('.layer-wrap').remove();
										location.reload();
									}
									break;
								case "3":
									if (confirm("관람평이 등록되었습니다.\n임직원의 경우 실관람평 작성 포인트는 지급되지 않습니다.\n관람하신 영화의 [관람 포인트]를\n선택하시겠습니까?")) {
										$('.layer-wrap').remove();
										charmPointPop(result.resultIndex);
									} else { //취소
										$('.layer-wrap').remove();
										location.reload();
									}
									break;
								case "4":
									alert("작성글이 등록 되었습니다.\n고객님은 최초 1회 <" + result.resultTitle + "> 실관램객 리뷰 작성이 "
											+ result.resultData
											+ " 에 이미 참여 하셨습니다.");
									break;
								case "":
									alert("등록 중 오류가 발생 되었습니다.");
									break;
								default:
									alert(result.resultCode);
									break;
								}
							}
						}
					});
				})(jQuery);
				//]]>
			</script>
			<!--[2015-12-15] 평점 수정 레이어 팝업 템플릿 start : add_mwpark-->
			<script type="text/x-jquery-tmpl" id="Script2">
	<div class="layer-contents on-shadow" style="width:710px;" id="my-list-uptLayer">
		<div class="popup-general">
			<div class="popwrap">
				<h1>평점수정</h1>
				<div class="pop-contents write-mygrade">
					<div class="mygrade-cont">
						<div class="movietit"><strong>${MovieTitle}</strong></div>
						<div class="likeornot">
							<div class="writerinfo">
								<div class="box-image">
									<span class="thumb-image">   
										<img src="${UserSmallImage}" alt="사용자 프로필" onerror="errorImage(this, {'type':'profile'})">                                            
										<span class="profile-mask"></span>
									</span>
								</div>
							
								<span class="round red on"><span class="position"><em class="see">실관람객</em></span></span>
								<span class="writer-name">${UserIdNicName}</span>
							</div>
                            
                            <div class="likebox t1{{if EggPoint == 2}} on{{/if}}">
								<div class="likebox-inner">
									<label for="likeornot1-1">
										<span class="egg-icon good">
                                            <input type="radio" name="likeornot1" id="likeornot1-1" value="2"{{if EggPoint == 2}} checked{{/if}}/>
										</span>
										<span class="txt">좋았어요~^^</span>
									</label>
								</div>
							</div>
                            
                            <div class="likebox t2{{if EggPoint == 1}} on{{/if}}">                            
								<div class="likebox-inner">
									<label for="likeornot1-2">
										<span class="egg-icon">
											<input type="radio" name="likeornot1" id="likeornot1-2" value="1"{{if EggPoint == 1}} checked{{/if}}/>
										</span>
										<span class="txt">흠~좀 별로였어요;;;</span>
									</label>
								</div>
							</div>
						</div>

						<div class="textbox">
							<textarea cols="" rows="" id="my-list-commentTextArea" maxlength="280" required="required" data-title="평점" data-message="작성글이 입력되지 않았습니다.">${CommentText}</textarea>
						</div>

						<div class="footbox">
							<span class="role">
								<a id="viewpopup" title="새창" href="#" target="_blank">운영원칙 <img src="http://img.cgv.co.kr/R2014/images/common/ico/ico-question-mark.png" alt="?"></a>
							</span>
							
							<div class="rbox">
								<span class="count"><strong id="text_count">0</strong>/280(byte)</span>
								<button type="button" class="round red on" id="my-list-uptBtn"><span>작성완료!</span></button>
							</div>
						</div>

					</div>
					
				</div>
				<button type="button" class="btn-close" id="my-list-uptCloseBtn">평점수정 팝업 닫기</button>
			</div>
		</div>
        <input type="hidden" id="my-list-commentIdx" value="${CommentIdx}"/>
        <input type="hidden" id="my-list-movieIdx" value="${MovieIdx}"/>
        <input type="hidden" id="my-list-withviewcnt" value="${withviewcnt}"/>
        <input type="hidden" id="my-list-withviewer" value="${withviewer}"/>
	</div>
</script>
			<!--[2015-12-15] 평점 수정 레이어 팝업 템플릿 end : add_mwpark-->

			<!-- 2020.05.07 추가 실관람평 > 관람 포인트 선택 수정 -->
			<script id="Script4" type="text/x-jquery-tmpl">
<div class="layer-wrap" id="my-list-charmLayer" style="width:0px; top:0px;">
    <div class="popwrap" style="width:516px;margin-top:0px;margin-left:-268px">
        <h1>관람 포인트 선택</h1>
        <div class="pop-contents">
            <!-- Contents Addon -->
            <div class="movie-emotion-select">
                <div class="header">
                    <p class="main">이 영화의 관람 포인트를 선택해주세요!</p>
                    <p class="sub"><span>중복선택</span>이 가능합니다.</p>
                </div>
                <div class="box">
                    <div class="name">
                        매력 포인트
                    </div>
                    <div class="wrap_input">
                        <label><input type="checkbox" name="charm1" id="effect" {{if Effect == "Y"}} checked {{/if}}><span>감독연출</span></label>
                        <label><input type="checkbox" name="charm2" id="story" {{if Story == "Y"}} checked {{/if}}><span>스토리</span></label>
                        <label><input type="checkbox" name="charm3" id="visual" {{if Visual == "Y"}} checked {{/if}}><span>영상미</span></label>
                        <label><input type="checkbox" name="charm4" id="acting" {{if Acting == "Y"}} checked {{/if}}><span>배우연기</span></label>
					    <label><input type="checkbox" name="charm5" id="ost" {{if OST == "Y"}} checked {{/if}}><span>OST</span></label>
                    </div>
                </div>
                <div class="box">
                    <div class="name">
                        감정 포인트
                    </div>
                    <div class="wrap_input">
                        <label><input type="checkbox" name="emotion1" id="emotion1"{{if Emotion1 == "Y"}} checked {{/if}}><span>${Emotion1Text}</span></label>
                        <label><input type="checkbox" name="emotion2" id="emotion2"{{if Emotion2 == "Y"}} checked {{/if}}><span>${Emotion2Text}</span></label>
                        <label><input type="checkbox" name="emotion3" id="emotion3"{{if Emotion3 == "Y"}} checked {{/if}}><span>${Emotion3Text}</span></label>
                        <label><input type="checkbox" name="emotion4" id="emotion4"{{if Emotion4 == "Y"}} checked {{/if}}><span>${Emotion4Text}</span></label>
                        <label><input type="checkbox" name="emotion5" id="emotion5"{{if Emotion5 == "Y"}} checked {{/if}}><span>${Emotion5Text}</span></label>
                    </div>
                </div>
            </div>
            <!-- //Contents Addon -->
            <div class="set-btn fix-width">
                <button type="submit" id="my-list-charmBtn" class="round inred"><span>확인</span></button>
            </div>
            <input type="hidden" id="charmGenre_SMS1" value="${Genre_SMS1}" />
            <input type="hidden" id="my-list-charmMovieIdx" value="${MovieIdx}" />
        </div>
        <button type="button" class="btn-close" id="my-list-charmCloseBtn">관람 포인트 선택 팝업 닫기</button>
    </div>
</div>
<!-- //관람 포인트 선택 팝업 -->
</script>

			<script type="text/javascript">
				// 2020.05.07 관람 포인트 선택시 기존값 조회(수정)
				function GetCharm(commentIdx) {
					var charmObj = app.movie();
					if (!charmObj.GetCharmPoint) {
						charmObj.GetCharmPoint = function(data, callback, error) {
							var url = '/common/ajax/point.aspx/GetCharmPoint_AddEmotion';
							app
									.ajax()
									.set(
											{
												dataType : 'json',
												url : url,
												data : data,
												contentType : "application/json; charset=utf-8",
												successHandler : callback
											});
						}

					}
					;
					charmObj.GetCharmPoint(JSON.stringify({
						'commentIdx' : commentIdx
					}), resultCharmCallback);
					//결과
					function resultCharmCallback(result) {
						charmPointPop2(result);
					}
					;
				};

				// 2020.05.07 관람 포인트 선택 수정 팝업 노출
				function charmPointPop2(result) {
					result.MovieIdx = 87429;
					var $std = $(this), options = {
						'$target' : $std,
						'type' : 'center',
						'html' : $('#Script4').tmpl(result),
						'mask' : 'none'
					};
					app.instWin.add(options);
					charmLayerSetting(result.CommentIdx);
					return false;
				}

				// 2020.05.07 관람 포인트 선택 팝업 셋팅
				function charmLayerSetting(commentIdx) {
					var comIdx = commentIdx;
					//관람 포인트 수정 버튼.
					$("#my-list-charmBtn").on(
							"click",
							function() {
								var charmObj = {};
								charmObj.acting = "N";
								charmObj.story = "N";
								charmObj.visual = "N";
								charmObj.ost = "N";
								charmObj.effect = "N";
								charmObj.emotion1 = "N";
								charmObj.emotion2 = "N";
								charmObj.emotion3 = "N";
								charmObj.emotion4 = "N";
								charmObj.emotion5 = "N";
								charmObj.genre_sms1 = $("#charmGenre_SMS1")
										.val();

								if (charmObj.genre_sms1 == "") {
									alert("관람 포인트를 다시 등록해 주세요.");
									return false;
								}

								if ($("#effect").prop("checked")) {
									charmObj.effect = "Y";
								}
								if ($("#story").prop("checked")) {
									charmObj.story = "Y";
								}
								if ($("#visual").prop("checked")) {
									charmObj.visual = "Y";
								}
								if ($("#acting").prop("checked")) {
									charmObj.acting = "Y";
								}
								if ($("#ost").prop("checked")) {
									charmObj.ost = "Y";
								}
								if ($("#emotion1").prop("checked")) {
									charmObj.emotion1 = "Y";
								}
								if ($("#emotion2").prop("checked")) {
									charmObj.emotion2 = "Y";
								}
								if ($("#emotion3").prop("checked")) {
									charmObj.emotion3 = "Y";
								}
								if ($("#emotion4").prop("checked")) {
									charmObj.emotion4 = "Y";
								}
								if ($("#emotion5").prop("checked")) {
									charmObj.emotion5 = "Y";
								}

								if (charmObj.effect == 'N'
										&& charmObj.story == 'N'
										&& charmObj.visual == 'N'
										&& charmObj.acting == 'N'
										&& charmObj.ost == 'N') {
									alert("매력 포인트를 1개 이상 선택해주세요.");
									return;
								}

								if (charmObj.emotion1 == "N"
										&& charmObj.emotion2 == "N"
										&& charmObj.emotion3 == "N"
										&& charmObj.emotion4 == "N"
										&& charmObj.emotion5 == "N") {
									alert("감정 포인트를 1개 이상 선택해주세요.");
									return;
								}

								charmingEdit(comIdx, charmObj);
							});

					// 영화매력 레이어 팝업 닫기버튼.
					$("#my-list-charmCloseBtn").on("click", function() {
						location.reload();
						$("#my-list-charmLayer").remove();
					});
				};

				/* 2020.05.07 관람 포인트 선택 팝업 수정*/
				function charmingEdit(commentIdx, charmObj) {
					var movObj = app.movie();
					if (!movObj.setCharmEdit) {
						movObj.setCharmEdit = function(data, callback, error) {
							var url = '/common/ajax/point.aspx/setCharm_AddEmotion';
							app
									.ajax()
									.set(
											{
												dataType : 'json',
												url : url,
												data : data,
												contentType : "application/json; charset=utf-8",
												successHandler : callback
											});
						}

					}
					;
					movObj.setCharmEdit(JSON.stringify({
						'commentIdx' : commentIdx,
						'movieIdx' : Number($("#my-list-charmMovieIdx").val()),
						'acting' : charmObj.acting,
						'story' : charmObj.story,
						'visual' : charmObj.visual,
						'ost' : charmObj.ost,
						'effect' : charmObj.effect,
						'genre_sms1' : charmObj.genre_sms1,
						'emotion1' : charmObj.emotion1,
						'emotion2' : charmObj.emotion2,
						'emotion3' : charmObj.emotion3,
						'emotion4' : charmObj.emotion4,
						'emotion5' : charmObj.emotion5
					}), resultCharmingCallback);

					//결과
					function resultCharmingCallback(result) {
						switch (result.resultCode) {
						case "1":
							alert("수정이 완료되었습니다.");
							layerAllClose();
							location.reload();
							break;
						case "-1":
							alert("등록 중 오류가 발생 되었습니다.");
							break;
						default:
							alert(result.resultCode);
							break;
						}
					}
				}

				//레이어 팝업 전체 닫기
				function layerAllClose() {
					$("#my-list-uptLayer").remove();
					$("#my-list-charmLayer").remove();
				};
			</script>

			<script type="text/javascript">
				//<![CDATA[
				(function($) {
					$(function() {
						var isLogin = app.config('isLogin');

						// 평점 삭제하기 클릭 event
						$('.btn-delete').on(
								'click',
								function() {
									removePointComment($(this).attr('data'), $(
											this).attr('midx'));
									return false;
								});

						// 실관람평 수정(작성하기를 클릭하였으나, 이미 작성한 관람평이 있을경우)
						$(document)
								.on(
										"click",
										".modifyCommentDummy",
										function() {
											var movieIdx = 87429;
											var $std = $(this);
											app.movie().getCommentMy({
												'movieIdx' : parseInt(movieIdx)
											}, getCommentResult);

											function getCommentResult(result) {

												options = {
													'$target' : $std,
													'type' : 'center',
													'html' : $("#Script2")
															.tmpl(result),
													'independence' : true,
													'mask' : 'none'
												};
												app.instWin.add(options);
												updateLayerSetting();
												return false;
											}
										});

						/*[2015-12-15] 평점 수정 레이어 팝업 start : add_mwpark*/
						$(document).on("click", ".ico_edit", function() {

							var movieIdx = 87429;
							var $std = $(this);
							app.movie().getCommentMy({
								'movieIdx' : parseInt(movieIdx)
							}, getCommentResult);

							function getCommentResult(result) {
								options = {
									'$target' : $std,
									'type' : 'center',
									'html' : $("#Script2").tmpl(result),
									'independence' : true,
									'mask' : 'none'
								};
								app.instWin.add(options);
								updateLayerSetting();
								return false;
							}
						});
						/*[2015-12-15] 평점 수정 레이어 팝업 end : add_mwpark*/

						/*[2015-12-15]레이어 팝업 띄운 후 이벤트 및 각종 설정 처리. start : add_mwpark*/
						function updateLayerSetting() {
							// 가져온 comment text 의 바이트 수 보이기.
							$('#text_count').text(
									fnTextLength($("#my-list-commentTextArea")
											.val()));

							//글자 입력시 바이트 수 반영. 
							$('#my-list-commentTextArea').count({
								useMember : true,
								callback : function(c) {
									$('#text_count').text(c);
								}
							});

							// 평점 수정 버튼 클릭
							$("#my-list-uptBtn")
									.on(
											"click",
											function() {

												var textReviewContent = $(
														'#my-list-commentTextArea')
														.val();

												textReviewContent = textReviewContent
														.replace(/^\s+/, "");
												textReviewContent = textReviewContent
														.replace(/\s+$/g, "");
												textReviewContent = textReviewContent
														.replace(/\n/g, "");
												textReviewContent = textReviewContent
														.replace(/\r/g, "");

												if (textReviewContent == "") {
													alert("내용을 입력하지 않았습니다.");
													$(
															'#my-list-commentTextArea')
															.focus();
													return;
												}

												// 2018.04.26 박인선 실관람평 10자 미만 등록불가
												if (textReviewContent.replace(
														/\s*/g, "").length < 10) {
													alert("문자를 포함하여 10자 이상(공백 제외) 작성하셔야 등록됩니다.");
													$(
															'#my-list-commentTextArea')
															.focus();
													return;
												}

												if (confirm("작성한 관람평을 수정하시겠습니까?")) {
													if (isLogin) {
														editData();
													} else {
														app.goLogin();
													}
												}

												return false;
											});

							/*[2015-12-15]평점 수정 start : add_mwpark*/
							function editData() {
								var eggValue = $(
										"input:radio[name='likeornot1']:checked")
										.val();
								var textReviewContent = $(
										'#my-list-commentTextArea').val();

								textReviewContent = textReviewContent.replace(
										/^\s+/, "");
								textReviewContent = textReviewContent.replace(
										/\s+$/g, "");
								textReviewContent = textReviewContent.replace(
										/\n/g, "");
								textReviewContent = textReviewContent.replace(
										/\r/g, "");

								app
										.movie()
										.setCommentEdit(
												JSON
														.stringify({
															'commentIdx' : Number($(
																	"#my-list-commentIdx")
																	.val()),
															"commentText" : textReviewContent,
															'movieIdx' : Number($(
																	"#my-list-movieIdx")
																	.val()),
															'isShowView' : "Y",
															'withViewCnt' : Number($(
																	"#my-list-withviewcnt")
																	.val()),
															'withViewer' : $(
																	"#my-list-withviewer")
																	.val(),
															'eggPoint' : Number(eggValue)
														}), resultCallback);

								function resultCallback(result) {
									switch (result.resultCode) {
									case "1":
										if (confirm("관람평이 수정되었습니다.\n관람하신 영화의 관람 포인트를\n선택하시겠습니까?") == false) {
											$("#my-list-uptLayer").remove();
											location.reload()
											return;
										} else {
											$("#my-list-uptLayer").remove();
											GetCharm(result.resultIndex);
										}
										break;
									case "0":
										alert("등록 중 오류가 발생 되었습니다.");
										break;
									case "2":
										alert("문자를 포함하여 10자 이상(공백 제외) 작성하셔야 등록됩니다.");
										break;
									case "-9999":
										alert("잘못된 접근 입니다.");
										break;
									default:
										alert(result.resultCode);
										break;
									}
								}
							}

							//좋아요 , 별로에요 클릭시 빨간 테두리 on
							$('.likebox label').on('click', function() {
								var $wrap = $(this).parents('.likebox');
								$wrap.siblings().removeClass('on');
								$wrap.addClass('on');
							});

							//좋아요 , 별로에요 클릭시 빨간 테두리 on
							$('.likebox input').on('focusin', function() {
								var $wrap = $(this).parents('.likebox');
								$wrap.siblings().removeClass('on');
								$wrap.addClass('on');
							});

							//운영원칙 ? 클릭시 팝업.
							$('#viewpopup').on('click', function() {
								var $std = $(this), options = {
									'$target' : $std,
									'type' : 'center',
									'html' : $('#temp_view').html(),
									'independence' : true,
									'mask' : 'none'
								};
								app.instWin.add(options);
								return false;
							});

							/*[2015-12-15]레이어팝업 "닫음" 버튼 클릭 처리.: add_mwpark*/
							$("#my-list-uptCloseBtn").on("click", function() {
								$("#my-list-uptLayer").remove();
							});
						}
						/*[2015-12-15]레이어 팝업 띄운 후 이벤트 및 각종 설정 처리. end : add_mwpark*/

						/*[2015-12-15]입력 글자 바이트 check start : add_mwpark*/
						function fnTextLength(content) {
							var cnt = 0;
							var ch = '';
							for (var i = 0; i < content.length; i++) {
								ch = content.charAt(i);
								if (escape(ch).length > 4) {
									cnt += 2;
								} else {
									cnt += 1;
								}
							}
							return cnt;
						}
						/*[2015-12-15]입력 글자 바이트 end : add_mwpark*/
					});
				})(jQuery);

				//2014.12 추가
				//내가 작성한 평점 내용 불러오기 현재 now
				function getCommentEditResult(movieIdx) {
					app.movie().getCommentMy({
						'movieIdx' : parseInt(movieIdx)
					}, callback);

					function callback(result) {
						if (!result || result.length < 1) {
							return false;
						}

						var commentText = result['CommentText'];
						var registDate = result['registDate'];
						var commentIdx = result['CommentIdx'];
						var pointDb = result['Point'];
						var isShowView = result['IsShowView'];

						$("div[id*='" + commentIdx + "']").find('.point-on')
								.attr('style', "width: " + pointDb + "0%;");
						$("em[id*='" + commentIdx + "']").html(pointDb);
						$("p[id*='" + commentIdx + "']").html(commentText);

						if (isShowView) {
							$("li[id*='" + commentIdx + "']").find(".vr").attr(
									'style', "display:");
						} else {
							$("li[id*='" + commentIdx + "']").find(".vr").attr(
									'style', "display:none");
						}
					}
				}

				/*회원 평점 모아보기. mwpark_RR2015*/
				/**
				function getPopList1(userid, nick) {

				    // 2017.07.11 화면 호출 시 POST 방식 호출 변경
				    $("#frmPointPopup").attr("target", "ifrm_movie_time_table1");
				    $("#frmPointUserId").val(userid);
				    $("#frmPointNick").val(escape(nick));
				    $("#frmPointPopup").submit();

				    $("#ifrm_movie_time_table1").show();
				}
				 **/

				function resizeTopIframe() {

					$("#ifrm_movie_time_table1").hide();
				}
				function resizeTop(height) {
					document.getElementById("ifrm_movie_time_table1").height = parseInt(height) + 10;
				}
				/*페이징 처리 추가. mwpark_RR2015 2016-02-17*/
				//function searchReviewList(page, isGetTotalCount) {
				//    if(!isGetTotalCount) { isGetTotalCount = false; }
				//    app.movie().getReviewSearchList({ 'movieIdx': 87429, 'pageIndex': page, 'pageSize': 5, 'isTotalCount' : isGetTotalCount}, setReviewListBuild);
				//}
				//function setReviewListBuild(result) {
				// if(result == null || result.List == null || result.TotalCount  == null) {
				//  return;
				// }
				// $("#movie_review_list_container").empty();
				// $("#movie_review_template").tmpl(result.List).appendTo("#movie_review_list_container");
				//if(result.List.length <= result.TotalCount) {
				//	setPagingNavigation(result.TotalCount, 5, '#paging_review', '#movie_review_list_container', searchReviewList);
				//}
				//$('.view_review_detail_popup').on('click', function () {
				//	getReviewDetail($(this));
				//	return false;
				//});
				//$('.btn-admit').on('click', function () {
				//	addMovieReviewCommunityAdmit($(this));
				//});
				//}
			</script>



			<!--/ Contents End -->
		</div>

		<!-- S Popup -->
		<div class="com_pop_wrap">
			<div class="com_pop_fog"></div>
		</div>
		<div class="pop_wrap">
			<!-- S > [팝업] 지원 OS 업데이트 유도-->
			<div id="pop_supportOS" class="popup" style="display: none">
				<div class="pop_iexp_wrap"
					style="position: fixed; left: 50%; top: 50%; width: 600px; margin: -165px 0 0 -300px; z-index: 1000;">
					<div class="pi_headline">
						<img
							src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline2.jpg"
							alt="CGV 홈페이지는 고객님께서 사용중인 MS Windows XP에서 정상적인 서비스 이용이 어려울 수 있으며, OS업데이트를 권장합니다.">
					</div>
					<div class="down_app">
						<p>
							<img
								src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg"
								alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!!!">
						</p>
						<a class="btn"
							href="https://itunes.apple.com/kr/app/id370441190?mt=8"
							target="_blank"><img
							src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg"
							alt="Ios down"></a> <a class="btn"
							href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp"
							target="_blank"><img
							src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg"
							alt="Android down"></a>
					</div>
					<a class="btn_close">닫기</a>
				</div>
			</div>
			<!-- S > [팝업] 지원 브라우저 다운로드 유도-->
			<div id="pop_supportBrower" class="popup" style="display: none">
				<div class="pop_iexp_wrap"
					style="position: fixed; left: 50%; top: 50%; width: 600px; margin: -265px 0 0 -300px; z-index: 1000;">
					<div class="pi_headline">
						<img
							src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline1.jpg"
							alt="CGV 홈페이지는 Internet Explorer 9이상에서 최적의 서비스 이용이 가능합니다. IE9 이하 브라우저에서 이용 시 정상적인 서비스 이용이 어려울 수 있으며, 브라우저 업그레이드 하시기를 권장합니다.">
					</div>
					<ul class="down_browser">
						<li><a href="https://www.microsoft.com/ko-kr/edge"
							target="_blank"><img
								src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ie.jpg"
								alt="Internet Explorer 다운받기"></a></li>
						<li><a
							href="https://www.google.com/chrome/browser/desktop/index.html"
							target="_blank"><img
								src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_chrome.jpg"
								alt="Chrome 다운받기"></a></li>
					</ul>
					<div class="down_app">
						<p>
							<img
								src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg"
								alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!">
						</p>
						<a class="btn"
							href="https://itunes.apple.com/kr/app/id370441190?mt=8"
							target="_blank"><img
							src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg"
							alt="Ios down"></a> <a class="btn"
							href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp "
							target="_blank"><img
							src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg"
							alt="Android down"></a>
					</div>
					<a class="btn_close">닫기</a>
				</div>
			</div>
		</div>

		<!-- E Popup -->

		<!-- S 예매하기 및 TOP Fixed 버튼 -->
		<div class="fixedBtn_wrap topBtn">

			<a href="/ticket/" class="btn_fixedTicketing">예매하기</a> <a
				href="#none" class="btn_gotoTop"><img
				src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png"
				alt="최상단으로 이동"></a>
		</div>

		<!-- E 예매하기 및 TOP Fixed 버튼 -->

		<!-- S Footer -->
		<jsp:include page="../include/footer.jsp" />
		<!-- E Footer -->

		<!-- Aside Banner :  -->
		<!--
	<div id="ctl00_sect_person_right" class="sect-aside-banner" style="padding:0; margin:0; position:fixed; z-index:1;display:none">
		<div class="aside-content-top">
			<div class="aside-content-btm">
				<a href="/theaters/"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif" alt="CGV THEATER" /></a>
				<a href="/arthouse/"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif" alt="CGV arthouse" /></a>
				<a href="/theaters/special/"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif" alt="CGV SPECIAL" /></a>

				<a href="/user/mycgv/reserve/" class="required-login" data-url="/user/mycgv/reserve/"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif" alt="CGV TICKET INFO" /></a>
				<a href="/discount/discountlist.aspx"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif" alt="CGV DISCOUNT INFO" /></a>
			</div>
		</div>
		<div class="btn-top">
            <a href="#" onclick="window.scrollTo(0,0);return false;"><span>최상단으로 이동</span></a>
		</div>
	</div>
    //-->
		<!-- //Aside Banner -->

	</div>


	<script type="text/template" id="temp_popup_movie_player">
<div class="popwrap">
    <div class="sect-layerplayer">
        <div class="cols-pop-player">
            <h1 class="title" id="movie_player_popup_title"></h1>
            <div class="col-pop-player">
                <div class="warp-pop-player" style="position: relative;">
                    <iframe id="ifrm_movie_player_popup" name="ifrm_movie_player_popup" src="about:blank" style="width:800px;height:450px;" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
					
					<div class="sect-replay" style="display:none" id="pop_player_relation_wrap">
						<button class="btn-replay movie_player_inner_popup" type="button" data-gallery-idx="0" id="btn_movie_replay">다시보기</button>
						<!-- 없어지는 영역 -->
						<div class="wrap-relationmovie" id="pop_player_relation_item_wrap">
							<strong class="title">관련영상</strong>
							<ul id="pop_player_relation_movie">
                                <li></li>
                            </ul>
						</div><!-- .wrap-relationmovie -->
					</div><!-- .sect-replay -->
					
                </div><!-- .warp-pop-player -->
                <div class="descri-trailer">
                    <strong class="title">영상설명</strong>
                    <textarea readonly="readonly" id="movie_player_popup_caption"></textarea>
                </div>
            </div><!-- .col-player -->
            <div class="col-pop-playerinfo">
                <div id="movie_player_popup_movie_info"></div>
                <div class="sect-trailer">
                    <strong class="title">신규영상</strong>
                    <ul>
                        
                    </ul>
                </div>
            </div><!-- .col-playerinfo -->
        </div><!-- .cols-player -->
        <button type="button" class="btn-close">닫기</button>
    </div>
</div>
</script>

	<script id="temp_popup_movie_player_movie_info"
		type="text/x-jquery-tmpl">
<div class="box-image">
    <a href="/movies/detail-view/?midx=${MovieIdx}" title="${Title} 상세보기 새창">
        <span class="thumb-image">
            <img src="${PosterImage.MiddleImage}" alt="${Title} 포스터" />
            <span class="ico-grade ${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</span>
        </span>
    </a>   
</div>
<div class="box-contents">
    <a href="/movies/detail-view/?midx=${MovieIdx}" title="${Title} 상세보기 새창">
        <strong class="title">${Title}</strong>
    </a>
    <span class="txt-info" style="margin-bottom:2px;">
        <em class="genre">${GenreText}</em>
        <span>
            <i>${OpenDate}</i>
            <strong>${OpenText}</strong>
            {{if D_Day > 0}}
                <em class="dday">D-${D_Day}</em>
            {{/if}}
        </span>
    </span>
{{if IsTicketing }}
    <a class="link-reservation" href="/ticket/?MOVIE_CD=${CGVCode}&MOVIE_CD_GROUP=${CGVCode}">예매</a> 
{{/if}}
</div>
</script>

	<script id="temp_popup_movie_player_relation_movie_item"
		type="text/x-jquery-tmpl">
<li>
    <div class="box-image">
        <a href="#" title="${Title} 영상보기" class="movie_player_inner_popup" data-gallery-idx="${GalleryIdx}">
            <span class="thumb-image">
                <img src="${ImageUrl}" 
                alt="${Title}_트레일러" />
                <span class="ico-play">영상보기</span>
            </span>
        </a>
    </div>
</li>
</script>

	<script type="text/javascript"
		src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>

	<script type="text/javascript">
		//<![CDATA[
		function closeBanner() {
			$('#cgv_main_ad').remove();
			for (var i = 0; i < 2; i++) {
				window.setTimeout(function() {
					$(window).resize()
				}, 30)
			}
		}
		function showPlayEndEvent() {
			$('#pop_player_relation_wrap').show();
			$('#btn_movie_replay').focus();
		}

		(function($) {
			$(function() {

				$('.movie_player_popup').moviePlayer(); //동영상플레이어

				//노원타운
				$('.special5_pop').on('click', function() {
					openNowonTown();
					return false;
				});
				// 검색 auto validate version.
				$('.btn-go-search').on('click', function() {
					var $frmSearch = $(this).parent().parent('form');
					$frmSearch.submit();
					return false;
				});

				//메인스킵네비
				$('#skipHeader').on('click', function() {
					var $ctn = $('#contents');
					$ctn.attr({
						tabIndex : -1
					}).focus();
					return false;
				});

				//현재 URL 해당파라미터 교체
				function updateQueryStringParameter(uri, key, value) {
					var re = new RegExp("([?|&])" + key + "=.*?(&|#|$)", "i");
					if (uri.match(re)) {
						return uri.replace(re, '$1' + key + "=" + value + '$2');
					} else {
						var hash = '';
						var separator = uri.indexOf('?') !== -1 ? "&" : "?";
						if (uri.indexOf('#') !== -1) {
							hash = uri.replace(/.*#/, '#');
							uri = uri.replace(/#.*/, '');
						}
						return uri + separator + key + "=" + value + hash;
					}
				}
				//모바일버전 가기
				$('.go-mobile').on(
						'click',
						function() {
							location.replace(updateQueryStringParameter(
									location.href, "IsMobile", "N"));
							return false;
						});
			});
		})(jQuery);

		function goFamilySite() {
			var famulySiteURL = $(familysite).val();
			if (famulySiteURL != "") {
				var win = window.open(famulySiteURL, 'winFamilySite')
				win.focus();
			}
		}
		function goFtc() {
			var ftcUrl = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1048145690";
			window.open(ftcUrl, "bizCommPop",
					"width=750, height=700, scrollbars=1;");
		}
		//]]>
	</script>

	<!-- 앱다운로드 레이어 팝업 -->
	<script type="text/javascript">
		//appDownInfoPop();
	</script>

	<script language="javascript" type="text/javascript">
		//GA 에널리스트 이벤트LOG 함수- 2022.01.12: MYILSAN
		function gaEventLog(pCategroy, pAction, pLabel) {
			ga('send', {
				hitType : 'event',
				eventCategory : pCategroy,
				eventAction : pAction,
				eventLabel : pLabel,
				hitCallback : function() {
				},
				hitCallbackFail : function() {
				}
			});
		}

		//201402 SYH GA추가
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-47126437-1', 'cgv.co.kr'); //지주사
		ga('create', 'UA-47951671-5', 'cgv.co.kr', {
			'name' : 'cgvTracker'
		}); //디마팀
		ga('create', 'UA-47951671-7', 'cgv.co.kr', {
			'name' : 'rollup'
		}); //추가
	</script>


	<!-- Google Tag Manager -->
	<noscript>
		<iframe src="//www.googletagmanager.com/ns.html?id=GTM-NNNFR3"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<script>
		(function(w, d, s, l, i) {
			w[l] = w[l] || [];
			w[l].push({
				'gtm.start' : new Date().getTime(),
				event : 'gtm.js'
			});
			var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
					+ l
					: '';
			j.async = true;
			j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
			f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-NNNFR3');
	</script>
	<!-- End Google Tag Manager -->


</body>
</html>

</body>
</html>
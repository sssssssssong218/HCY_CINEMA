<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="비회원 예매확인 -  로그인창" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="No-Cache">
    <meta http-equiv="imagetoolbar" content="no">
    <meta name="viewport" content="width=1024">
    <meta name="keywords" content="HCY, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Hcy, hcy, 예매, 상영작">
    <meta name="description" content="HCY는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. HCY홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다.">
    <meta property="og:site_name" content="영화 그 이상의 감동. HCY">
    <meta id="ctl00_og_title" property="og:title" content="비회원예매확인 < 회원서비스 | 영화 그 이상의 감동. HCY">
    
    
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png">
    <link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="http://192.168.10.145/HCY_CINEMA/common/images/favicon.png" type="image/x-icon">
    <title id="ctl00_headerTitle">비회원예매확인 &lt; 회원서비스 | 영화 그 이상의 감동. HCY</title>
    <link rel="shortcut icon" type="image/x-icon" href="https://192.168.10.145img.cgv.co.kr/R2014/images/re_favicon.ico">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css">
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css">
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css">
    <link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css">    
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css">
    
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-SSGE1ZCJKG&amp;cx=c&amp;_slc=1"></script><script type="text/javascript" async="" src="http://www.googletagmanager.com/gtag/js?id=G-559DE9WSKZ&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="http://www.google-analytics.com/analytics.js"></script><script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NNNFR3"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.utils.js"></script>
	<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.init.js"></script>

    <!--[if lte IE 9]><script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
	<script src="https://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>

    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick.css">
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css">

    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/icheck/login.timer.js"></script>
    <script src="https://img.cgv.co.kr/R2014/js/icheck/icheck.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css">

    <!-- 2020.05.07 감정지수/프리에그 프로젝트 추가 -->
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/preegg.css">

    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css">
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>

    <!-- 각페이지 Header Start--> 
    

    <!--/각페이지 Header End--> 
    <script type="text/javascript">
        //<![CDATA[
        _TRK_CP = "/회원서비스/비회원예매확인";

        app.config('staticDomain', 'https://img.cgv.co.kr/R2014/')
            .config('imageDomain', 'https://img.cgv.co.kr')
            .config('isLogin', 'False');

        
        // AD FLOAT
        // 암호화 할 문자열과 키값(상수값)을 매개변수로 받는다.
        function EncryptAD(str, key) {
            output = new String;
            Temp = new Array();
            TextSize = str.length;
            for (i = 0; i < TextSize; i++) {
                // key 값을 원하는 대로 연산을 한다
                output += String.fromCharCode(str.charCodeAt(i) + parseInt(key) + 123 + i);
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
                output += String.fromCharCode(str.charCodeAt(i) - (parseInt(key) + 123 + i));
            }

            return output;
        }

        function getCookieVal(offset) {
            var endstr = document.cookie.indexOf(";", offset);
            if (endstr == -1) endstr = document.cookie.length;
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
                if (i == 0) break;
            } //while close
            return null;
        }
        function setCookieAD(name, value, expiredays) {
            var todayDate = new Date();
            todayDate.setTime(todayDate.getTime() + (expiredays * 24 * 60 * 60 * 1000));
            document.cookie = name + "=" + escape(value) + "; expires=" + todayDate.toGMTString() + "; path=/; domain=cgv.co.kr";
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
            }
            else {
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
    

    
<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/system.packed.js"></script><script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/system.packed.js"></script><meta http-equiv="origin-trial" content="AymqwRC7u88Y4JPvfIF2F37QKylC04248hLCdJAsh8xgOfe/dVJPV3XS3wLFca1ZMVOtnBfVjaCMTVudWM//5g4AAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjk1MTY3OTk5LCJpc1RoaXJkUGFydHkiOnRydWV9"></head>
<body class="" cz-shortcut-listen="true" style="">

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>    
<div id="cgvwrap">
    
    
    <div class="cgv-ad-wrap" id="cgv_main_ad">
            
    </div>    
	
      <!-- S Header
        Description
        - class 'nav' 에 class 'active' 추가시 서브메뉴노출
        - class 'nav' 에 class 'fixed' 추가시 상단고정되며 스타일 변경됨
     -->
<div class="header">			
            <!-- 서비스 메뉴 --> 
            <!-- 로그인시 메뉴 변경 필요 -->
<div class="header_content">
    <div class="contents">
        <h1 onclick=""><a href="http://localhost/HCY_CINEMA/user/home/main.jsp"><img src="http://localhost/HCY_CINEMA/common/images/logo_main.png" alt="HCY_CHINEMA"></a></h1>
        <ul class="memberInfo_wrap" style=" display: flex;list-style: none;padding: 0;">
        <c:set var="login" value="로그아웃"/>
        <% 
        if(session.getAttribute("login") == null){
        session.setAttribute("login", false); 
        }//if%>
        <c:if test="${sessionScope.login eq false}">
        <c:set var="login" value="로그인"/>
            </c:if>
        <li><a href="http://192.168.10.146/HCY_CINEMA/user/login/login.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="${login}"><span><c:out value="${login}"/></span></a></li>
        <c:if test="${sessionScope.login eq false}">
            <li><a href="http://localhost/HCY_CINEMA/user/login/join_member.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginJoin.png" alt="회원가입"><span>회원가입</span></a></li>
            </c:if>
            <li><a href="http://localhost/HCY_CINEMA/user/myPage/mypage_myticket.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY PAGE"><span>MY PAGE</span></a></li>
            <li><a href="http://localhost/HCY_CINEMA/user/board/notice.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginCustomer.png" alt="고객센터"><span>고객센터</span></a></li>
        </ul>
    </div>
</div>
<script>
    //GA Analytics TopMenu 영역 LOG
    //메인로고 클릭
    $('.header_content > .contents > h1 > a').on({
        click: function (e) {
            gaEventLog('PC_GNB', '홈', '');
        }
    });
    //서비스 메뉴
    $('.header_content > .contents > ul > li > a').on({
        click: function (e) {
            gaEventLog('PC_GNB', '서비스메뉴_'+this.text, '');
        }
    });

   

</script>
            <!-- 서비스 메뉴 -->
           
			<!-- 서브 메뉴 -->
			<!-- 네비게이션에 마우스 올라오면 메뉴 열림 -->
<script type="text/javascript">
    $(document).ready(function () {
        $('.nav_menu > li > h2 > a').on({
            mouseenter: function (e) {
                var target = e.target;
                $(target).parents('.nav_menu').find('.nav_overMenu').slideDown(function () {
                    $('.nav').addClass('active');
                });
            },
            click: function (e) {
                var target = e.target;
                if (!$('.nav').hasClass('active')) {
                    $(this).trigger('mouseenter');
                } else {
                    $('.nav').trigger('mouseleave');
                }
            }
        });

        /********************************************************
        //서브메뉴 구글 GA Analytics 로그 처리 - 2022.01.12 myilsan
        ********************************************************/
        //cgv화이트 메뉴클릭
        $('.nav > .contents > h1 > a').on({
             click: function (e) {
                 gaEventLog('PC_GNB', '홈', '');
            }
        });

        //주메뉴 클릭
        $('.nav_menu > li > h2 > a').on({
            click: function (e) {
                gaEventLog('PC_GNB', '주메뉴_' + this.text, '');
            }
        });

        //주메뉴 하위메뉴 클릭
        $('.nav_overMenu > dd > h3 > a').on({
            click: function (e) {
                var target = e.target;
                var parText = $(target).parents('.nav_overMenu').find('dt')[0].innerText;
                gaEventLog('PC_GNB', parText + '_' + this.text, '');
            }
        });

        //하위메뉴 최상위 클릭
        $(".nav_overMenu > dt > h2 > a").on({
            click: function (e) {
                gaEventLog('PC_GNB',this.text + '_' + this.text, '');
            }
        });

        //------------------end----------------------- [@,.o]>

        $('.nav').on({
            mouseleave: function (e) {
                $(this).find('.nav_overMenu').slideUp(200, function () {
                    $('.nav').removeClass('active');
                });
            }
        });

        $('.totalSearch_wrap input[type=text]').on({
            focusin: function () {
                $('.totalSearch_wrap').addClass("active");
            }
        });

        $('.btn_totalSearchAutocomplete_close').on({
            click: function () {
                $('.totalSearch_wrap').removeClass("active");
            },
            focusout: function (e) {
                //     $('.totalSearch_wrap').removeClass("active");

            }
        });

        $(this).on({
            scroll: function (e) {
                /* S GNB fixed */
                var headerOffsetT = $('.header').offset().top;
                var headerOuterH = $('.header').outerHeight(true);
                var fixedHeaderPosY = headerOffsetT + headerOuterH;
                var scrollT = $(this).scrollTop();
                var scrollL = $(this).scrollLeft();

                if (scrollT >= fixedHeaderPosY) {
                    $('.nav').addClass('fixed');
                    $('.fixedBtn_wrap').addClass('topBtn');
                } else {
                    $('.nav').removeClass('fixed');
                    $('.fixedBtn_wrap').removeClass('topBtn');
                }

                /* S > GNB fixed 좌우 스크롤
                Description
                - GNB가 fixed 되었을때 좌우 스크롤 되게 처리
                */
                if ($('.nav').hasClass('fixed')) {
                    $('.nav').css({ 'left': -1 * scrollL })
                } else {
                    $('.nav').css({ 'left': 0 })
                }
                /* E > GNB fixed 좌우 스크롤 */
                /* S GNB fixed */
            }
        });

        $('.btn_gotoTop').on({
            click: function () {
                $('html, body').stop().animate({
                    scrollTop: '0'
                }, 400);
            }
        });

        //통합검색 상단 검색 버튼
        $('#btn_header_search').on('click', function () {

           
            if ($('#header_ad_keyword').val() != "")
                goSearch($('#header_ad_keyword'));      //광고
            else
                goSearch($('#header_keyword'));

            
            return false;
        });

        //통합검색 검색어 입력창
        $('#header_keyword').keyup(function (e) {
            if (e.keyCode == 13) goSearch($('#header_keyword'));
        });

         //검색 입력창 클릭 시 광고값 reset
        $('#header_keyword').on('click', function () {
            $(this).attr('placeholder', '');
            $('#header_ad_keyword').val('');
        });

    });

    //통합검색
    function goSearch($objKeyword) {

        if ($objKeyword.val() == "") {
            alert("검색어를 입력해 주세요");
            $objKeyword.focus();
            return false;
        }

        //GA 검색로그
        gaEventLog('PC_GNB', '검색', $objKeyword.val());
        location = "http://localhost/HCY_CHINEMA/user/search/search.jsp?query=" + escape($objKeyword.val());
    }
</script>


<div class="nav" style="left: 0px;">
    <div class="contents">
        <h1><a href="http://localhost/HCY_CINEMA/user/movieInfo/movieChart.jsp" tabindex="-1"><img src="http://localhost/HCY_CINEMA/common/images/logo_main_y.png" alt="CGV"></a></h1>
        <ul class="nav_menu">
            <li>
                <h2><a href="http://localhost/HCY_CINEMA/user/movieInfo/movieChart.jsp">영화</a></h2>
                <dl class="nav_overMenu" style="display: none;">
                    <dt><h2><a href="http://localhost/HCY_CINEMA/user/movieInfo/movieChart.jsp" tabindex="-1">영화</a></h2></dt>
                    <dd><h3><a href="http://localhost/HCY_CINEMA/user/movieInfo/movieChart.jsp">무비차트</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="http://localhost/HCY_CINEMA/user/movieSchedule/theater.jsp">극장</a></h2>
                <dl class="nav_overMenu" style="display: none;">
                    <dt><h2><a href="http://localhost/HCY_CINEMA/user/movieSchedule/theater.jsp" tabindex="-1">극장</a></h2></dt>
                    <dd><h3><a href="http://localhost/HCY_CINEMA/user/movieSchedule/theater.jsp">HCY 극장</a></h3></dd>
                    <dd><h3><a href="http://localhost/HCY_CINEMA/user/home/special.jsp">특별관</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="http://localhost/HCY_CINEMA/user/ticketing/mainTicketing.jsp"><strong>예매</strong></a></h2>
                <dl class="nav_overMenu" style="display: none;">
                    <dt><h2><a href="http://localhost/HCY_CINEMA/user/ticketing/mainTicketing.jsp" tabindex="-1">예매</a></h2></dt>
                    <dd><h3><a href="http://localhost/HCY_CINEMA/user/ticketing/mainTicketing.jsp">빠른예매</a></h3></dd>
                    <dd><h3><a href="http://localhost/HCY_CINEMA/user/movieSchedule/ticketingSchedule.jsp">상영스케줄</a></h3></dd>
                </dl>
            </li>
            <li>
            </li>
        </ul>
        <div class="totalSearch_wrap">
            <label for="totalSearch">
                <input type="text" id="header_keyword" value="">
                <input type="hidden" id="header_ad_keyword" name="header_ad_keyword">
            </label>
            <button type="button" class="btn_totalSearch" id="btn_header_search">검색</button>
        </div>
    </div>
</div>
            <!-- 서브 메뉴 -->			
	</div>
	<!-- E Header -->

	<!-- Contaniner -->
	<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

		<!-- Contents Area -->
		 <div id="contents" class="">
        
            
            <!-- Contents Start -->
			

<!-- 실컨텐츠 시작 -->
<div class="wrap-login">
    <div class="sect-user">
        <ul class="tab-menu-round">
            <li>
                <a href="http://localhost/HCY_CINEMA/user/login/login.jsp">로그인</a>
            </li>
            <li>
                <a href="http://localhost/HCY_CINEMA/user/ticketing/nonmem_ticketing_main.jsp">비회원 예매</a>
            </li>
            <li class="on">
                <a href="/user/guest/login.aspx">비회원 예매확인</a>
            </li>
        </ul>
        <h3 style="margin-left:20%">비회원 예매 확인</h3>
        <p style="margin-left:20%">비회원으로 예매하신 고객님은 개인정보(법정생년월일, 휴대폰 번호, 비밀번호(4자리)를 입력해 주세요.</p>
        <div class="cols-enterform nomember">
            <div class="col-simple" style="margin-left:25%">
                <h4>비회원 예매확인</h4>
                <div class="box-simple">
                    <p class="disc-info">모든 항목은 필수 입력사항입니다.</p>
                    <form id="form1" method="post" novalidate="novalidate" action="">
                    <fieldset>
                        <legend>비회원로그인 정보를 입력후 로그인 하실수 있습니다.</legend>
                        <table cellpadding="0" cellspacing="0" summary="비회원예매확인/취소를 하기위해 정보를 입력하는 테이블 입니다">
                            <caption>법정생년월일, 휴대폰번호, 비밀번호(4자리) 입력하는 테이블</caption>
                            <colgroup>
                                <col class="col01">
                                <col class="col02">
                            </colgroup>
                            <tbody>
                            <tr><!--20201207 woongseon ISMS 개인정보 부분 미흡 사항 개선 요청 추가-->
                                <th scope="row" style="text-align:left"><label for="txtBirthday">법정생년월일<br><em>(8자리) </em></label></th>
                                <td style="text-align:left"><input type="text" class="only-number" title="법정생년월일(8자리)" data-title="법정생년월일(8자리)" data-message="을 입력해주세요." name="txtBirthday" id="txtBirthday" digits="digits" length="8" maxlength="8" required="required"></td>
                            </tr>
                            <tr>
                                <th scope="row" style="text-align:left">휴대폰번호</th>
                                <td style="text-align:left">
                                    <select title="휴대폰번호 앞자리" name="txtMobile1" id="txtMobile1">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                    -
                                    <input type="text" class="only-number" style="width:85px;" title="휴대폰번호 중간자리" data-title="휴대폰번호 중간자리" data-message="를 입력해주세요." name="txtMobile2" id="txtMobile2" digits="digits" length="4" maxlength="4" required="required">
                                    -
                                    <input type="text" class="only-number" style="width:85px;" title="휴대폰번호 끝자리" data-title="휴대폰번호 끝자리" data-message="를 입력해주세요." name="txtMobile3" id="txtMobile3" digits="digits" length="4" maxlength="4" required="required">
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" style="text-align:left"><label for="txtPassword">비밀번호(4자리)</label></th>
                                <td style="text-align:left"><input type="password" class="only-number" title="비밀번호(4자리)" data-title="비밀번호(4자리)" data-message="를 입력해주세요." name="txtPassword" id="txtPassword" digits="digits" length="4" maxlength="4" required="required"></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="box-btn">
	                        <input type="button" class="round inred" id="btn_submit" value="비회원 예매확인" style="width: 150px"/>
                        </div>
                    </fieldset>
                    </form>
                </div>
            </div>
            
        </div>
    </div> 
    <div class="sect-loginguide">
        <dl class="box-operationguide">
            <dt>비회원 <br>예매 시 <br>참고하세요!</dt>
            <dd>1.  상기 정보 수집에 동의하지 않을 경우, 비회원 예매 서비스를 이용하실 수 없습니다. </dd>
            <dd>2.  비회원 예매 시 청소년 관람불가 영화는 예매가 제한됩니다. </dd>
            <dd>3.  비회원 에매 결제수단은 신용카드만 가능하며 모든 제휴상품권, 쿠폰, 영화예매권 등의 사용은 회원 예매 서비스 이용 시 가능합니다. </dd>
            <dd>4.  모바일과 ARS에서는 취소가 불가능하며, 홈페이지를 이용하여 입력하신 로그인 정보로 취소 처리하실 수 있습니다.</dd>
            <dd>5.  비회원 예매 및 비회원 예매 확인/취소 메뉴만 이용 가능합니다. 이 외에 커뮤니티, 댓글, 인정 등의 서비스는 회원 가입 후 이용 가능합니다.</dd>
            <dd>6.  문의사항은 HCY 고객센터(1234-5678)로 문의해 주시기 바랍니다. <br>
                - 운영시간 : 월~금 09:00 ~ 18:00 (이 외 시간은 자동 응답 안내 가능)</dd>
        </dl>
    </div>
</div>
<!-- 실컨텐츠 끝 -->

<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
<script type="text/javascript">
//<![CDATA[

    (function ($) {
        $(function () {
        	
        	$("#btn_submit").click(function(){
        		if($("#txtBirthday").val()=="" || $("#txtMobile2").val()=="" || 
            			$("#txtMobile3").val()=="" || $("#txtPassword").val()==""){
            		alert("모든 정보를 입력해주세요!")
            		return
            		}//if
            		
            		var tel = $("#txtMobile1").val()+"-"+$("#txtMobile2").val()+"-"+$("#txtMobile3").val()
            		var data = {"tel":tel, "birth" : $("#txtBirthday").val(),"pass":$("#txtPassword").val()}
            		$.ajax({
            			url : "http://localhost/HCY_CINEMA/user/myPage/nonmem_myticketlogin_ajax.jsp",
            			type : "post",
            			data : data,
            			dataType : "json",
            			error : function(xhr){
            				console.log(xhr.status)
            			},
            			success : function(json){
            				alert(json.flag)
            				if(json.flag == "f"){
            					alert("인증에 실패했습니다. 다시 시도해주세요")
            					return
            				}//if
            				alert("인증에 성공했습니다.")
            				alert(${mVO})
            				location.href="http://localhost/HCY_CINEMA/user/myPage/nonmem_myticket.jsp"
            				return
            			}//success
            		})
        	})//click

            var $frm = $('#form1');
            $frm.validate({
                submitHandler: function (form) {
                    // 1. 비회원 예매갯수 조회
                    var mobile = app.crypto.AESEncryptToBase64(($frm.find('#txtMobile1').val() + $frm.find('#txtMobile2').val() + $frm.find('#txtMobile3').val()));

                    $.ajax({
                        type: "POST",
                        url: '/user/guest/login.aspx/GetReserveCount',
                        data: "{'birthday':'" + app.crypto.AESEncryptToBase64($('#txtBirthday').val()) + "' , 'mobile':'" + mobile + "', 'pwd':'" + app.crypto.AESEncryptToBase64($('#txtPassword').val()) + "'}",
                        contentType: "application/json; charset=utf-8",
                        async: false,
                        dataType: 'json',
                        success: function (result) {
                            switch (result.d.toString()) {
                                case "0": // 복호화 에러 발생
                                    break;
                                case "2": // 예매내역 없음    
                                    alert("입력하신 정보와 일치하는 예매내역이 없습니다.\r\n(최대5회 실패시 차단됩니다.)");
                                    break;
                                case "3":
                                    alert("5회이상 실패되어 차단되었습니다."); 
                                    break;
                                case "1":
                                    location.href = "/user/guest/reserve.aspx";
                                    break;
                                default:
                                    //   alert('Error result Value : ' + result);                    
                                    break;
                            }
                        },
                        error: function (e) {
                            alert(e.responseText);
                        }
                    });
                }
            });
        });
    })(jQuery);
//]]>
</script>


            
            <!--/ Contents End -->
		 </div>
		<!-- /Contents Area -->
	</div>
    <!-- E Contaniner -->
    
    <!-- S Popup -->
    <div class="com_pop_wrap">
        <div class="com_pop_fog"></div>
    </div>
    <div class="pop_wrap">
    <!-- S > [팝업] 지원 OS 업데이트 유도-->
        <div id="pop_supportOS" class="popup" style="display:none">
            <div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-165px 0 0 -300px; z-index:1000;">
                <div class="pi_headline">
                    <img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline2.jpg" alt="CGV 홈페이지는 고객님께서 사용중인 MS Windows XP에서 정상적인 서비스 이용이 어려울 수 있으며, OS업데이트를 권장합니다.">
                </div>
                <div class="down_app">
                    <p><img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!!!"></p>
                    <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down"></a>
                    <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down"></a>
                </div>
                <a class="btn_close">닫기</a>
            </div>
         </div>
    <!-- S > [팝업] 지원 브라우저 다운로드 유도-->
         <div id="pop_supportBrower" class="popup" style="display:none">
            <div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-265px 0 0 -300px; z-index:1000;">
                <div class="pi_headline">
                    <img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline1.jpg" alt="CGV 홈페이지는 Internet Explorer 9이상에서 최적의 서비스 이용이 가능합니다. IE9 이하 브라우저에서 이용 시 정상적인 서비스 이용이 어려울 수 있으며, 브라우저 업그레이드 하시기를 권장합니다.">
                </div>
                <ul class="down_browser">
                    <li><a href="https://www.microsoft.com/ko-kr/edge" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ie.jpg" alt="Internet Explorer 다운받기"></a></li>
                    <li><a href="https://www.google.com/chrome/browser/desktop/index.html" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_chrome.jpg" alt="Chrome 다운받기"></a></li>
                </ul>
                <div class="down_app">
                    <p><img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!"></p>
                    <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down"></a>
                    <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp " target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down"></a>
                </div>
                <a class="btn_close">닫기</a>
            </div>
        </div>
	</div>

    <!-- E Popup -->
    
    <!-- S 예매하기 및 TOP Fixed 버튼 -->
    <div class="fixedBtn_wrap">
     
        <a href="http://localhost/HCY_CINEMA/user/ticketing/ticketing_main.jsp" class="btn_fixedTicketing">예매하기</a>
        
        <a href="#none" class="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동"></a>
    </div>
    
    <!-- E 예매하기 및 TOP Fixed 버튼 -->
	
    <!-- S Footer -->
<footer>
		<!-- footer_area (s) -->
		
<div id="BottomWrapper" class="sect-ad">
    <iframe src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Bottom" width="100%" height="240" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
</div>
<ul class="policy_list">
    <li><a href="http://192.168.10.145/HCY_CINEMA/user/home/conditions.jsp">이용약관</a></li>
    <li><a href="http://192.168.10.145/HCY_CINEMA/user/home/processingPolicy.jsp"><strong>개인정보처리방침</strong></a></li>
    <li><a href="http://192.168.10.145/HCY_CINEMA/user/home/legalNotice.jsp">법적고지</a></li>
    <li><a href="http://192.168.10.145/HCY_CINEMA/user/home/refuseToCollectEmail.jsp">이메일주소무단수집거부</a></li>
</ul>
<article class="company_info_wrap">
    <section class="company_info">
        <address>(06235)서울특별시 강남 구 테헤란로 132 8층(역삼동)</address>
        <dl class="company_info_list">
            <dt>대표이사</dt>
            <dd>홍찬영</dd>
            <dt>사업자등록번호</dt>
            <dd>123-45-67890</dd>
            <dt>통신판매업신고번호</dt>
            <dd>2017-서울용산-0123 <a href="#none" onclick="goFtc()" class="btn_goFtc">사업자정보확인</a><a></a></dd>
        </dl>
        <dl class="company_info_list">
            <dt>호스팅사업자</dt>
            <dd>HCY CINEMA</dd>
            <dt>개인정보보호 책임자</dt>
            <dd>송지하</dd>
            <dt>대표이메일</dt>
            <dd>hcycinemaster@hcycinema.com</dd>
            
        </dl>
        <p class="copyright">© HCY CINEMA. All Rights Reserved</p>
    </section>
</article>
<script>
    //footer GA Analytics 영역 LOG
    $('.policy_list > li > a').on({
        click: function (e) {
            gaEventLog('PC_footer', this.text, '');
        }
    });
</script>
        <!-- footer_area (e) -->

        <div class="adFloat2" style="display:none">

            <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Popicon" width="154" height="182" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" allowtransparency="true" id="ad_float1" style="display: none;"></iframe>
        </div>
        <script type="text/javascript">            OpenAD();</script>
        <!-- //Float Ad -->
	</footer>
</div>



<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>

<script type="text/javascript">
    //<![CDATA[
    function closeBanner(){        
        $('#cgv_main_ad').remove();     
        for(var i = 0; i < 2; i++) {
            window.setTimeout(function(){
                $(window).resize()                
            }, 30)
        }
    }
    function showPlayEndEvent() {
        $('#pop_player_relation_wrap').show();
        $('#btn_movie_replay').focus();
    }

    (function ($) {
        $(function () {

        
            $('.movie_player_popup').moviePlayer();     //동영상플레이어

            //노원타운
            $('.special5_pop').on('click', function () {
                openNowonTown();
                return false;
            });           
            // 검색 auto validate version.
            $('.btn-go-search').on('click', function () {
                var $frmSearch = $(this).parent().parent('form');
                $frmSearch.submit();
                return false;
            });

            //메인스킵네비
            $('#skipHeader').on('click', function(){
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
                    var hash =  '';
                    var separator = uri.indexOf('?') !== -1 ? "&" : "?";    
                    if( uri.indexOf('#') !== -1 ){
                        hash = uri.replace(/.*#/, '#');
                        uri = uri.replace(/#.*/, '');
                    }
                    return uri + separator + key + "=" + value + hash;
                }
            }
            //모바일버전 가기
            $('.go-mobile').on('click', function() {
                location.replace(updateQueryStringParameter(location.href, "IsMobile", "N"));
                return false;
            });
        });
    })(jQuery);
	
    function goFtc() {
        var ftcUrl = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1048145690";
        window.open(ftcUrl, "bizCommPop", "width=750, height=700, scrollbars=1;");        
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
            hitType: 'event', eventCategory: pCategroy, eventAction: pAction, eventLabel: pLabel
            , hitCallback: function () {
            }
            , hitCallbackFail: function () { 
            }
        });
    }

    //201402 SYH GA추가
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-47126437-1', 'cgv.co.kr'); //지주사
    ga('create', 'UA-47951671-5', 'cgv.co.kr', { 'name': 'cgvTracker' }); //디마팀
    ga('create', 'UA-47951671-7', 'cgv.co.kr', { 'name': 'rollup' }); //추가

</script>


<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NNNFR3"height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>    (function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({ 'gtm.start':
            new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
            '//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-NNNFR3');
</script>
<!-- End Google Tag Manager -->


</body></html>
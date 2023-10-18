<%@page import="main.MainDAO"%>
<%@page import="main.MainTrailerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon">
    <title id="ctl00_headerTitle">HCY_CHINEMA 홈페이지</title>
    <link rel="shortcut icon" type="image/x-icon" href="https://img.cgv.co.kr/R2014/images/favicon.ico">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css">
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css">
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css">
    <link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css">    
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css">
    
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-SSGE1ZCJKG&amp;cx=c&amp;_slc=1"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-559DE9WSKZ&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NNNFR3"></script><script async="" src="//www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
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

     <!-- 2023.03.27 홈페이지 스토어 영역 內 배너 영역 미노출의 件 -->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/giftstore.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/commonstore.js"></script>
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/giftstore/giftstore.css"> 

    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css">
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>

    <!-- 각페이지 Header Start--> 
    
<!--<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">https, http  혼합사용시-->
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/swiper.min.js"></script>
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/swiper-bundle.min.css">
    
<script type="text/javascript">
        $(function(){
			
        	/* 무비차트 보기 */
            $("#btnMovie").click(function(){
            	/* 무비차트 리스트 */
                $("#movieChart_list").show();
            	/* 상영예정작 리스트 */
                $("#movieChart_list_Reser").hide();
                $("#btnMovie").addClass('active');
                $("#btnReserMovie").removeClass('active');
            	/* 전체보기 버튼 */
                $("#btn_allView_Movie").attr("href", "http://192.168.10.145/HCY_CHINEMA/movieInfo/movieChart");
            });
			
        	/* 상영예정작 보기 */
            $("#btnReserMovie").click(function(){
            	/* 무비차트 리스트 */
                $("#movieChart_list").hide();
            	/* 상영예정작 리스트 */
                $("#movieChart_list_Reser").show();
                $("#btnReserMovie").addClass('active');
                $("#btnMovie").removeClass('active');
            	/* 전체보기 버튼 */
                $("#btn_allView_Movie").attr("href", "http://192.168.10.145/HCY_CHINEMA/movieInfo/movieChart_Reser");
            });

        	/* 무비차트 슬와이퍼 */
            var movieChartSwiper = new Swiper("#movieChart_list", {

                slidesPerView: 5,
                spaceBetween: 32,
                slidesPerGroup: 5,
                loopFillGroupWithBlank: true,
                navigation: {
                    nextEl: ".swiper-button-next",

                    prevEl: ".swiper-button-prev",
                },
                a11y: {
                    prevSlideMessage: '이전 슬라이드',
                    nextSlideMessage: '다음 슬라이드',
                    slideLabelMessage: '총 {{slidesLength}}장의 슬라이드 중 {{index}}번 슬라이드 입니다.',
                },
            });

        	/* 상영예정작 스와이퍼 */
            var movieChartSwiper2 = new Swiper("#movieChart_list_Reser", {

                slidesPerView: 5,
                spaceBetween: 32,
                slidesPerGroup: 5,
                loopFillGroupWithBlank: true,
                navigation: {
                    nextEl: ".swiper-button-next",

                    prevEl: ".swiper-button-prev",
                },
                a11y: {
                    prevSlideMessage: '이전 슬라이드',
                    nextSlideMessage: '다음 슬라이드',
                    slideLabelMessopenPopupage: '총 {{slidesLength}}장의 슬라이드 중 {{index}}번 슬라이드 입니다.',
                },
            });
			
        	
            $("#movieChart_list_Reser").hide(); //swiper 랜더링 완료 후 숨기기해야함 // 아 그래?

           /* 특별관 리스트 */
            $('.specialHall_list a').on({
                mouseenter:function(e){
                    var target = e.target;
                    var idx = $(target).closest('li').index();
					/* 사진 링크 */
                    var arrimgUrl = ["https://img.cgv.co.kr//Front/Main/2021/1209/16390080561620.png","https://img.cgv.co.kr//Front/Main/2022/0616/16553622935690.png","https://img.cgv.co.kr//Front/Main/2021/1130/16382612660240.png","https://img.cgv.co.kr//Front/Main/2021/1130/16382612660560.png"];

                    $(target).closest('li').addClass('active').siblings('li').removeClass('active');
                    $('.specialHall_link').attr('href', target.href) // 링크 주소 넣을 곳
                    $('.specialHall_link img').attr('src', arrimgUrl[idx]);
                    $('.specialHall_link img').attr('alt', $(target).children('strong').text());
                }
            });

            /* 메인 트레일러 실행 정지 버튼 */
            var movieSelectionVideoObj = $('.video_wrap video')[0];

            $('.video_wrap video').on({
                ended:function(){
                    $('.btn_movieSelection_playStop').removeClass('active');
                }
            })
            $('.btn_movieSelection_playStop').on({
                click:function(){
                    if(movieSelectionVideoObj.paused){
                        movieSelectionVideoObj.play();
                        $(this).addClass('active');
                    }else{
                        movieSelectionVideoObj.pause();
                        $(this).removeClass('active');
                    }//else
                }//click
            });

            /* 메인 트레일러 소리끄기 버튼 */
            $('.btn_movieSelection_soundOnOff').on({
                click:function(){
                    if(movieSelectionVideoObj.muted){
                        movieSelectionVideoObj.muted = false;
                        $(this).addClass('active');
                    }else{
                        movieSelectionVideoObj.muted = true;
                        $(this).removeClass('active');
                    }//else
                }//click
            });
            
            /* 예매하기 떠다님 */
            var noticeClientBannerSwiper = new Swiper(".noticeClient_banner_list", {
                autoplay: {
                    delay: 2500,
                    disableOnInteraction:false,
                },
                slidesPerView: 1,
                spaceBetween: 0,
                loopFillGroupWithBlank: true,
            });

            if(noticeClientBannerSwiper.autoplay.running){
                $('.btn_noticeClientBannerControl').addClass('active');
            }

            $('.btn_noticeClientBannerControl').on({
                click:function(e){
                    if(noticeClientBannerSwiper.autoplay.running){
                        $(this).removeClass('active');
                        noticeClientBannerSwiper.autoplay.stop();
                    }else{
                        $(this).addClass('active');
                        noticeClientBannerSwiper.autoplay.start();
                    }
                } 
            });

            
            /* 너는 누구냐 */
            $.fn.openPopup = function( id ){
                var popObj = $('#' + id);

                popObj.parent('.pop_wrap').addClass('active');
                popObj.fadeIn();

                popObj.parent('.pop_wrap').on({
                    click:function(e){
                        if(e.target === e.currentTarget){
                            $.fn.closePopup();
                        }//if
                    }//click
                });
                popObj.find('.btn_close').on({
                    click:function(e){
                        $.fn.closePopup();
                    }//click
                });
            };
            $.fn.closePopup = function(){
                $('.pop_wrap').removeClass('active');
                $('.popup').fadeOut();
            };
        });
    </script>


    <!--/각페이지 Header End--> 
    <script type="text/javascript">
        //<![CDATA[
        _TRK_CP = "/홈";

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
    

    
<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/system.packed.js"></script></head>
<body class="" style="" cz-shortcut-listen="true">

<!-- 안보이는 영역 -->
<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
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
        <h1 onclick=""><a href="http://192.168.10.145/HCY_CINEMA/user/home/main.jsp"><img src="http://192.168.10.145/HCY_CINEMA/common/images/logo_main.png" alt="HCY_CHINEMA"></a></h1>
        <ul class="memberInfo_wrap">
        <c:set var="login" value="로그아웃"/>
        <% 
        if(session.getAttribute("login") == null){
        session.setAttribute("login", false); 
        }//if%>
        <c:if test="${sessionScope.login eq false}">
        <c:set var="login" value="로그인"/>
            </c:if>
        <li><a href="http://192.168.10.145/HCY_CINEMA/user/login/login.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="${login}"><span><c:out value="${login}"/></span></a></li>
        <c:if test="${sessionScope.login eq false}">
            <li><a href="http://192.168.10.145/HCY_CINEMA/user/login/join.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginJoin.png" alt="회원가입"><span>회원가입</span></a></li>
            </c:if>
            <li><a href="http://192.168.10.145/HCY_CINEMA/user/mypage/my_ticket.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY PAGE"><span>MY PAGE</span></a></li>
            <li><a href="http://192.168.10.145/HCY_CINEMA/user/board/notice.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginCustomer.png" alt="고객센터"><span>고객센터</span></a></li>
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
        location = "http://192.168.10.145/HCY_CHINEMA/user/search/search.jsp?query=" + escape($objKeyword.val());
    }
</script>


<div class="nav" style="left: 0px;">
    <div class="contents">
        <h1><a href="http://192.168.10.145/HCY_CINEMA/user/movieInfo/movieChart.jsp" tabindex="-1"><img src="http://192.168.10.145/HCY_CINEMA/common/images/logo_main_y.png" alt="CGV"></a></h1>
        <ul class="nav_menu">
            <li>
                <h2><a href="http://192.168.10.145/HCY_CINEMA/user/movieInfo/movieChart.jsp">영화</a></h2>
                <dl class="nav_overMenu" style="display: none;">
                    <dt><h2><a href="http://192.168.10.145/HCY_CINEMA/user/movieInfo/movieChart.jsp" tabindex="-1">영화</a></h2></dt>
                    <dd><h3><a href="http://192.168.10.145/HCY_CINEMA/user/movieInfo/movieChart.jsp">무비차트</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="http://192.168.10.145/HCY_CINEMA/user/movieSchedule/theater.jsp">극장</a></h2>
                <dl class="nav_overMenu" style="display: none;">
                    <dt><h2><a href="http://192.168.10.145/HCY_CINEMA/user/movieSchedule/theater.jsp" tabindex="-1">극장</a></h2></dt>
                    <dd><h3><a href="http://192.168.10.145/HCY_CINEMA/user/movieSchedule/theater.jsp">HCY 극장</a></h3></dd>
                    <dd><h3><a href="http://192.168.10.145/HCY_CINEMA/user/home/special.jsp">특별관</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="http://192.168.10.145/HCY_CINEMA/user/ticketing/mainTicketing.jsp"><strong>예매</strong></a></h2>
                <dl class="nav_overMenu" style="display: none;">
                    <dt><h2><a href="http://192.168.10.145/HCY_CINEMA/user/ticketing/mainTicketing.jsp" tabindex="-1">예매</a></h2></dt>
                    <dd><h3><a href="http://192.168.10.145/HCY_CINEMA/user/ticketing/mainTicketing.jsp">빠른예매</a></h3></dd>
                    <dd><h3><a href="http://192.168.10.145/HCY_CINEMA/user/movieSchedule/ticketingSchedule.jsp">상영스케줄</a></h3></dd>
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
            <!-- Contents Start -->
			
<input type="hidden" id="isOpenUserEmailYNPopup" name="isOpenUserEmailYNPopup" value="False">

<!-- S > Movie Selection
    Description:
    - iframe 영역으로 추후 협의 후 작업 진행 예정
 -->
                    <!-- 메인 트레일러 -->
                    <%
                    MainTrailerVO mtVO = MainDAO.getInstance().selectMainTrailer();
                    pageContext.setAttribute("mtVO", mtVO);
                    %>
            <div id="ctl00_PlaceHolderContent_divMovieSelection_wrap" class="movieSelection_wrap">
                <div class="contents">

                    <div class="video_wrap">
                        
                    <video autoplay="" muted="">
                        <source src="https://192.168.10.145/HCY_CINEMA/common/trailer/${ mtVO.trailerName }" type="video/mp4">
                        이 브라우저는 Video 태그를 지원하지 않습니다. (Your browser does not support the video tag.)
                    </video>
                    
                        <strong id="ctl00_PlaceHolderContent_AD_MOVIE_NM" class="movieSelection_title"><c:out value="${ mtVO.movieName }"/></strong>
                        <span id="ctl00_PlaceHolderContent_AD_DESCRIPTION_NM" class="movieSelection_txt"><c:out value="${ mtVO.adMsg }"/></span>
                        <div class="movieSelection_video_controller_wrap">
                            <a href="https://192.168.10.145/HCY_CINEMA/user/movie.jsp${not empty mtVO ?'?mNum=mtVO.movieCode' : ''}" id="ctl00_PlaceHolderContent_AD_CLIP_DETAIL_URL" class="btn_movieSelection_detailView">상세보기</a>
                            
                            <a href="#none" id="ctl00_PlaceHolderContent_playStop" class="btn_movieSelection_playStop">Stop</a>
                            <a href="#none" id="ctl00_PlaceHolderContent_soundOnOff" class="btn_movieSelection_soundOnOff">Sound On</a>

                            <input name="ctl00$PlaceHolderContent$AD_CNT_URL" type="hidden" id="ctl00_PlaceHolderContent_AD_CNT_URL" value="http://ad.cgv.co.kr/NetInsight/imp/CGV/CGV_201401/main@MovieSelection2021?ads_id%3d50242%26creative_id%3d74273">
                        </div>
                    </div>
                </div>
            </div>
<!-- E > Movie Selection -->
<!-- S > 무비차트 | 상영예정작
  - Description:
            - 검색 값 있는 경우 영역 미노출
            - 관람제한 (12.png, 15.png, 19.png, all.png, notyet.png)
            - Egg (eggGoldeneggBad.png, eggGoldeneggGood.png, eggGoldeneggGreat.png, eggPreegg.png)
 -->  
            <div class="movieChartBeScreen_wrap">
                <div class="contents">
                    <div class="movieChartBeScreen_btn_wrap">
                        <div class="tabBtn_wrap">
                            <h3><a href="#none" class="active" id="btnMovie">무비차트</a></h3>
                            <h3><a href="#none" id="btnReserMovie">상영예정작</a></h3>
                        </div>
                        <a href="/movies/?lt=1&amp;ft=0" id="btn_allView_Movie" class="btn_allView">전체보기</a>
                    </div>

                    <div class="swiper movieChart_list swiper-container-initialized swiper-container-horizontal" id="movieChart_list">
                        <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                            
                                <div class="swiper-slide swiper-slide-movie swiper-slide-active" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87433/87433_320.jpg" alt="그대들은 어떻게 살 것인가" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세"> -->
                                            <!-- <div class='dDay_wrap'><span>7</span></div>-->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/imax_white.png" alt="imax"></i>
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87433" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '그대들은 어떻게 살 것인가');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034177&amp;MOVIE_CD_GROUP=20034026" onclick="gaEventLog('PC_메인', '무비차트_예매하기','그대들은 어떻게 살 것인가')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">그대들은 어떻게 살 것인가</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 27.2%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie swiper-slide-next" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87422/87422_320.jpg" alt="바람 따라 만나리 : 김호중의 계절" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/screenx_white.png" alt="screenx"></i>
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87422" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '바람 따라 만나리 : 김호중의 계절');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033987&amp;MOVIE_CD_GROUP=20033987" onclick="gaEventLog('PC_메인', '무비차트_예매하기','바람 따라 만나리 : 김호중의 계절')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">바람 따라 만나리 : 김호중의 계절</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 92%</span>
                                        <span>예매율 13.1%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87444/87444_320.jpg" alt="플라워 킬링 문" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age18">18</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/18.png" alt="18세"> -->
                                            <!-- <div class='dDay_wrap'><span>1</span></div>-->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 1">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87444" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '플라워 킬링 문');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034061&amp;MOVIE_CD_GROUP=20034061" onclick="gaEventLog('PC_메인', '무비차트_예매하기','플라워 킬링 문')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">플라워 킬링 문</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 9.6%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87358/87358_320.jpg" alt="익스펜더블 4" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age18">18</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/18.png" alt="18세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87358" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '익스펜더블 4');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033762&amp;MOVIE_CD_GROUP=20033762" onclick="gaEventLog('PC_메인', '무비차트_예매하기','익스펜더블 4')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">익스펜더블 4</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 8.9%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87410/87410_320.jpg" alt="용감한 시민" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세"> -->
                                            <!-- <div class='dDay_wrap'><span>7</span></div>-->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87410" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '용감한 시민');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033948&amp;MOVIE_CD_GROUP=20033948" onclick="gaEventLog('PC_메인', '무비차트_예매하기','용감한 시민')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">용감한 시민</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 7.8%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87407/87407_320.jpg" alt="30일" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87407" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '30일');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033913&amp;MOVIE_CD_GROUP=20033913" onclick="gaEventLog('PC_메인', '무비차트_예매하기','30일')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">30일</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png" alt="Golden Egg great"> 93%</span>
                                        <span>예매율 5.8%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87500/87500_320.jpg" alt="팀 버튼의 크리스마스 악몽" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87500" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '팀 버튼의 크리스마스 악몽');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034231&amp;MOVIE_CD_GROUP=20034231" onclick="gaEventLog('PC_메인', '무비차트_예매하기','팀 버튼의 크리스마스 악몽')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">팀 버튼의 크리스마스 악몽</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 3.4%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87438/87438_320.jpg" alt="오픈 더 도어" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세"> -->
                                            <!-- <div class='dDay_wrap'><span>7</span></div>-->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87438" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '오픈 더 도어');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034055&amp;MOVIE_CD_GROUP=20034055" onclick="gaEventLog('PC_메인', '무비차트_예매하기','오픈 더 도어')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">오픈 더 도어</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 98%</span>
                                        <span>예매율 3.1%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87298/87298_320.jpg" alt="블루 자이언트" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87298" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '블루 자이언트');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033613&amp;MOVIE_CD_GROUP=20033613" onclick="gaEventLog('PC_메인', '무비차트_예매하기','블루 자이언트')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">블루 자이언트</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 3.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87408/87408_320.jpg" alt="화란" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87408" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '화란');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033946&amp;MOVIE_CD_GROUP=20033946" onclick="gaEventLog('PC_메인', '무비차트_예매하기','화란')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">화란</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggood.png" alt="Golden Egg good"> 78%</span>
                                        <span>예매율 3.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87405/87405_320.jpg" alt="믿을 수 있는 사람" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87405" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '믿을 수 있는 사람');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033909&amp;MOVIE_CD_GROUP=20033909" onclick="gaEventLog('PC_메인', '무비차트_예매하기','믿을 수 있는 사람')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">믿을 수 있는 사람</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 2.4%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87428/87428_320.jpg" alt="엑소시스트-믿는 자" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/forDX_white.png" alt="forDX"></i>
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87428" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '엑소시스트-믿는 자');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034021&amp;MOVIE_CD_GROUP=20034021" onclick="gaEventLog('PC_메인', '무비차트_예매하기','엑소시스트-믿는 자')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">엑소시스트-믿는 자</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 2.2%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87263/87263_320.jpg" alt="마브카 : 숲의 노래" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87263" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '마브카 : 숲의 노래');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034136&amp;MOVIE_CD_GROUP=20033553" onclick="gaEventLog('PC_메인', '무비차트_예매하기','마브카 : 숲의 노래')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">마브카 : 숲의 노래</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 2.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87360/87360_320.jpg" alt="퍼피 구조대-더 마이티 무비" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87360" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '퍼피 구조대-더 마이티 무비');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033764&amp;MOVIE_CD_GROUP=20033764" onclick="gaEventLog('PC_메인', '무비차트_예매하기','퍼피 구조대-더 마이티 무비')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">퍼피 구조대-더 마이티 무비</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png" alt="Golden Egg great"> 99%</span>
                                        <span>예매율 1.8%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87355/87355_320.jpg" alt="사나-저주의 아이" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87355" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '사나-저주의 아이');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033759&amp;MOVIE_CD_GROUP=20033759" onclick="gaEventLog('PC_메인', '무비차트_예매하기','사나-저주의 아이')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">사나-저주의 아이</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegg.png" alt="Golden Egg "> 61%</span>
                                        <span>예매율 1.8%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87305/87305_320.jpg" alt="화사한 그녀" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87305" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '화사한 그녀');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033629&amp;MOVIE_CD_GROUP=20033629" onclick="gaEventLog('PC_메인', '무비차트_예매하기','화사한 그녀')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">화사한 그녀</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegg.png" alt="Golden Egg "> 66%</span>
                                        <span>예매율 1.3%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87335/87335_320.jpg" alt="천박사 퇴마 연구소-설경의 비밀" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87335" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '천박사 퇴마 연구소-설경의 비밀');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033689&amp;MOVIE_CD_GROUP=20033689" onclick="gaEventLog('PC_메인', '무비차트_예매하기','천박사 퇴마 연구소-설경의 비밀')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">천박사 퇴마 연구소-설경의 비밀</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png" alt="Golden Egg great"> 88%</span>
                                        <span>예매율 0.9%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87388/87388_320.jpg" alt="1947 보스톤" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87388" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '1947 보스톤');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033800&amp;MOVIE_CD_GROUP=20033800" onclick="gaEventLog('PC_메인', '무비차트_예매하기','1947 보스톤')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">1947 보스톤</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png" alt="Golden Egg great"> 96%</span>
                                        <span>예매율 0.6%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87440/87440_320.jpg" alt="우리의 하루" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세"> -->
                                            <!-- <div class='dDay_wrap'><span>1</span></div>-->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 1">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87440" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '우리의 하루');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034057&amp;MOVIE_CD_GROUP=20034057" onclick="gaEventLog('PC_메인', '무비차트_예매하기','우리의 하루')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">우리의 하루</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.3%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87197/87197_320.jpg" alt="프리 철수 리" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87197" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '프리 철수 리');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033251&amp;MOVIE_CD_GROUP=20033251" onclick="gaEventLog('PC_메인', '무비차트_예매하기','프리 철수 리')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">프리 철수 리</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 0.2%</span>
                                    </div>
                                </div>
                                

                        </div>

                        <div class="swiper-button-next" tabindex="0" role="button" aria-label="다음 슬라이드" aria-disabled="false"></div>
                        <div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="이전 슬라이드" aria-disabled="true"></div>
                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>

                    <div class="swiper movieChart_list swiper-container-initialized swiper-container-horizontal" id="movieChart_list_Reser" style="display: none;">
                        <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                            
                                <div class="swiper-slide swiper-slide-active" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87444/87444_320.jpg" alt="플라워 킬링 문" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age18">18</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/18.png" alt="18세">-->
                                            <!--<div class='dDay_wrap'><span>1</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 1">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87444" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '플라워 킬링 문');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034061&amp;MOVIE_CD_GROUP=20034061" onclick="gaEventLog('PC_메인', '무비차트_예매하기','플라워 킬링 문')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">플라워 킬링 문</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 9.6%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-next" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87440/87440_320.jpg" alt="우리의 하루" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세">-->
                                            <!--<div class='dDay_wrap'><span>1</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 1">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87440" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '우리의 하루');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034057&amp;MOVIE_CD_GROUP=20034057" onclick="gaEventLog('PC_메인', '무비차트_예매하기','우리의 하루')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">우리의 하루</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.3%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87413/87413_320.jpg" alt="문바운드" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세">-->
                                            <!--<div class='dDay_wrap'><span>1</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 1">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87413" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '문바운드');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033956&amp;MOVIE_CD_GROUP=20033956" onclick="gaEventLog('PC_메인', '무비차트_예매하기','문바운드')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">문바운드</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87455/87455_320.jpg" alt="[강연&amp;북토크]스페인, 너는 자유다-손미나 작가" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세">-->
                                            <!--<div class='dDay_wrap'><span>2</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 2">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87455" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '[강연&amp;북토크]스페인, 너는 자유다-손미나 작가');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034167&amp;MOVIE_CD_GROUP=20034167" onclick="gaEventLog('PC_메인', '무비차트_예매하기','[강연&amp;북토크]스페인, 너는 자유다-손미나 작가')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">[강연&amp;북토크]스페인, 너는 자유다-손미나 작가</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87437/87437_320.jpg" alt="[콘서트&amp;다이닝]고흐의 별이 빛나는 밤" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세">-->
                                            <!--<div class='dDay_wrap'><span>3</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 3">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87437" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '[콘서트&amp;다이닝]고흐의 별이 빛나는 밤');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034054&amp;MOVIE_CD_GROUP=20034054" onclick="gaEventLog('PC_메인', '무비차트_예매하기','[콘서트&amp;다이닝]고흐의 별이 빛나는 밤')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">[콘서트&amp;다이닝]고흐의 별이 빛나는 밤</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.1%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87431/87431_320.jpg" alt="제11회 스토리업 쇼츠 섹션1. 우리, 집, 우리" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세">-->
                                            <!--<div class='dDay_wrap'><span>3</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 3">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87431" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '제11회 스토리업 쇼츠 섹션1. 우리, 집, 우리');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034024&amp;MOVIE_CD_GROUP=20034024" onclick="gaEventLog('PC_메인', '무비차트_예매하기','제11회 스토리업 쇼츠 섹션1. 우리, 집, 우리')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">제11회 스토리업 쇼츠 섹션1. 우리, 집, 우리</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87435/87435_320.jpg" alt="제11회 스토리업 쇼츠 섹션2.  대담한 대담-장르 밖의 장르" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age18">18</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/18.png" alt="18세">-->
                                            <!--<div class='dDay_wrap'><span>3</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 3">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87435" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '제11회 스토리업 쇼츠 섹션2.  대담한 대담-장르 밖의 장르');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034034&amp;MOVIE_CD_GROUP=20034034" onclick="gaEventLog('PC_메인', '무비차트_예매하기','제11회 스토리업 쇼츠 섹션2.  대담한 대담-장르 밖의 장르')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">제11회 스토리업 쇼츠 섹션2.  대담한 대담-장르 밖의 장르</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87450/87450_320.jpg" alt="23-24 분데스리가 뷰잉파티 8R 마인츠 vs 바이에른 뮌헨" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세">-->
                                            <!--<div class='dDay_wrap'><span>3</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 3">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87450" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '23-24 분데스리가 뷰잉파티 8R 마인츠 vs 바이에른 뮌헨');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034150&amp;MOVIE_CD_GROUP=20034150" onclick="gaEventLog('PC_메인', '무비차트_예매하기','23-24 분데스리가 뷰잉파티 8R 마인츠 vs 바이에른 뮌헨')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">23-24 분데스리가 뷰잉파티 8R 마인츠 vs 바이에른 뮌헨</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87438/87438_320.jpg" alt="오픈 더 도어" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세">-->
                                            <!--<div class='dDay_wrap'><span>7</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87438" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '오픈 더 도어');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034055&amp;MOVIE_CD_GROUP=20034055" onclick="gaEventLog('PC_메인', '무비차트_예매하기','오픈 더 도어')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">오픈 더 도어</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 98%</span>
                                        <span>예매율 3.1%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87452/87452_320.jpg" alt="더 킬러" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세">-->
                                            <!--<div class='dDay_wrap'><span>7</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87452" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '더 킬러');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">더 킬러</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87433/87433_320.jpg" alt="그대들은 어떻게 살 것인가" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세">-->
                                            <!--<div class='dDay_wrap'><span>7</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/imax_white.png" alt="imax"></i>
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87433" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '그대들은 어떻게 살 것인가');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034177&amp;MOVIE_CD_GROUP=20034026" onclick="gaEventLog('PC_메인', '무비차트_예매하기','그대들은 어떻게 살 것인가')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">그대들은 어떻게 살 것인가</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 27.2%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87410/87410_320.jpg" alt="용감한 시민" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세">-->
                                            <!--<div class='dDay_wrap'><span>7</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87410" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '용감한 시민');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033948&amp;MOVIE_CD_GROUP=20033948" onclick="gaEventLog('PC_메인', '무비차트_예매하기','용감한 시민')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">용감한 시민</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 7.8%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87332/87332_320.jpg" alt="너와 나" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세">-->
                                            <!--<div class='dDay_wrap'><span>7</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87332" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '너와 나');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">너와 나</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 0.2%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87458/87458_320.jpg" alt="두 사람을 위한 식탁" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세">-->
                                            <!--<div class='dDay_wrap'><span>7</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87458" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '두 사람을 위한 식탁');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">두 사람을 위한 식탁</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87409/87409_320.jpg" alt="시수" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age18">18</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/18.png" alt="18세">-->
                                            <!--<div class='dDay_wrap'><span>7</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 7">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87409" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '시수');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">시수</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> 99%</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87411/87411_320.jpg" alt="빌리와 용감한 녀석들-황금 달걀 구조대" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세">-->
                                            <!--<div class='dDay_wrap'><span>8</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 8">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87411" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '빌리와 용감한 녀석들-황금 달걀 구조대');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">빌리와 용감한 녀석들-황금 달걀 구조대</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87344/87344_320.jpg" alt="[Whisky Master Class]나만의 위스키 취향" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age18">18</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/18.png" alt="18세">-->
                                            <!--<div class='dDay_wrap'><span>9</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 9">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87344" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '[Whisky Master Class]나만의 위스키 취향');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20033735&amp;MOVIE_CD_GROUP=20033735" onclick="gaEventLog('PC_메인', '무비차트_예매하기','[Whisky Master Class]나만의 위스키 취향')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">[Whisky Master Class]나만의 위스키 취향</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87456/87456_320.jpg" alt="[클래스&amp;브런치]Design Me, 퍼스널 컬러와 향" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세">-->
                                            <!--<div class='dDay_wrap'><span>11</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 11">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87456" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '[클래스&amp;브런치]Design Me, 퍼스널 컬러와 향');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034168&amp;MOVIE_CD_GROUP=20034168" onclick="gaEventLog('PC_메인', '무비차트_예매하기','[클래스&amp;브런치]Design Me, 퍼스널 컬러와 향')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">[클래스&amp;브런치]Design Me, 퍼스널 컬러와 향</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87449/87449_320.jpg" alt="[사이다경제] 금융 교육의 시작, 온 가족 경제독립" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc ageAll">All</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/All.png" alt="All세">-->
                                            <!--<div class='dDay_wrap'><span>13</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 13">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87449" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '[사이다경제] 금융 교육의 시작, 온 가족 경제독립');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034130&amp;MOVIE_CD_GROUP=20034130" onclick="gaEventLog('PC_메인', '무비차트_예매하기','[사이다경제] 금융 교육의 시작, 온 가족 경제독립')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">[사이다경제] 금융 교육의 시작, 온 가족 경제독립</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87556/87556_320.jpg" alt="스트릿 우먼 파이터2 파이널" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!--<img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세">-->
                                            <!--<div class='dDay_wrap'><span>13</span></div> -->
                                            <i class="cgvIcon etc ageDay" data-before-text="D - 13">D Day</i>
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87556" onclick="gaEventLog('PC_메인', '상영예정작_영화상세', '스트릿 우먼 파이터2 파이널');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">스트릿 우먼 파이터2 파이널</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg"> ?</span>
                                        <span>예매율 0.0%</span>
                                    </div>
                                </div>
                                

                        </div>

                        <div class="swiper-button-next" tabindex="0" role="button" aria-label="다음 슬라이드" aria-disabled="false"></div>
                        <div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="이전 슬라이드" aria-disabled="true"></div>
                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>

                </div>
            </div>
<!-- E > 무비차트 | 상영예정작 -->
<!-- S > 특별관 -->
            <div class="specialHall_wrap">
                <div class="contents">
                    <div class="specialHall_title_wrap">
                        <h3>특별관</h3>
                        <a href="http://192.168.145/HCY_CINEMA/user/home/special.jsp" id="btn_allView_Special" class="btn_allView">전체보기</a>
                    </div>
                    <div class="specialHall_content">
                        <a href="http://192.168.145/HCY_CINEMA/user/home/suiteCinema.jsp" id="ctl00_PlaceHolderContent_specialHall_link" class="specialHall_link"><div class="img_wrap" data-scale="false"><img src="https://img.cgv.co.kr//Front/Main/2021/1209/16390080561620.png" id="ctl00_PlaceHolderContent_specialHall_img" alt="SUITE CINEMA"></div></a>
                        
                        <ul class="specialHall_list">
                            
                            <li class="active">
                                <a href="http://192.168.145/HCY_CINEMA/user/home/suiteCinema.jsp">
                                    <strong>SUITE CINEMA</strong>
                                    <div class="specialHall_hashTag_wrap">
                                        <span class="specialHall_hashTag">#호텔 컨셉의 프리미엄관</span>                                        
                                    </div>
                                </a>
                            </li>
                            
                            <li>
                                <a href="http://192.168.145/HCY_CINEMA/user/home/cineLivingRomm.jsp">
                                    <strong>CINE &amp; LIVINGROOM</strong>
                                    <div class="specialHall_hashTag_wrap">
                                        <span class="specialHall_hashTag">#신개념 소셜 상영관</span>                                        
                                    </div>
                                </a>
                            </li>
                            
                            <li>
                                <a href="http://192.168.145/HCY_CINEMA/user/home/fourDX.jsp">
                                    <strong>4DX</strong>
                                    <div class="specialHall_hashTag_wrap">
                                        <span class="specialHall_hashTag">#모션시트 #오감체험</span>                                        
                                    </div>
                                </a>
                            </li>
                            
                            <li>
                                <a href="http://192.168.145/HCY_CINEMA/user/home/cineDeChef.jsp">
                                    <strong>CINE de CHEF</strong>
                                    <div class="specialHall_hashTag_wrap">
                                        <span class="specialHall_hashTag">#쉐프가 있는 영화관</span>                                        
                                    </div>
                                </a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
<!-- E > 특별관 -->
<!-- S > 공지사항 & 고객센터 -->
            <div class="noticeClient_wrap">
                <div class="contents">
                    <div class="noticeClient_container" style="justify-content: center;float: none;height: 190px">
                        <div class="noticeClient_content">
                            
                            <div id="ctl00_PlaceHolderContent_notice_wrap" class="notice_wrap">
                                <strong>공지사항</strong>
                                
                                    <a href="/support/news/detail-view.aspx?idx=7982" class="btn_link">[시스템 점검]북앤라이프 도서문화상품권 시스템 점검</a>
                                
                                <a href="http://www.cgv.co.kr/support/news/default.aspx" id="notice_more" class="btn_more">더보기</a>
                            </div>

                            <div class="client_wrap">
                                <dl class="client_list">
                                    <dt><strong>고객센터</strong></dt>
                                    <dd>
                                        <strong>1544-1122</strong>
                                        <span>고객센터 운영시간 (평일 09:00~18:00)
                                        <p>업무시간 외 자동응답 안내 가능합니다.</p>
                                    </span></dd>
                                </dl>
                                <!-- <div class="client_btn_wrap" id="client_btn_wrap" style="justify-content: center;">
                                    <a href="http://www.cgv.co.kr/support/faq/default.aspx">FAQ</a>
                                    <a href="http://www.cgv.co.kr/support/qna/default.aspx">1:1 문의</a>
                                    <a href="http://www.cgv.co.kr/support/lost/default.aspx">분실물 문의</a>//
                                    <a href="http://www.cgv.co.kr/support/lease/default.aspx">대관/단체 문의</a>
                                </div> -->
                            </div>
                        </div>

                        
                    </div>
                    <div class="noticeClient_banner_wrap">

                        <!-- <div class="event_list_wrap"> -->
                        <div class="swiper noticeClient_banner_list swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                                <div class="swiper-slide swiper-slide-active" id="divSpecialDiscountData" style="display: none;">
                                    <a id="bannerType1" href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=36641&amp;menu=006">
                                        <img src="about:blank" alt="카카오페이카드" onerror="onerror=null;javacript:;error_specialDiscountData();">
                                    </a>
                                </div>
                               
                                <div class="swiper-slide swiper-slide-next" style="width: 211px;"> <!--211x238-->
                                    <iframe src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Branding" width="211" height="238" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Branding" id="Branding"></iframe>
                                </div>
                            </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                        <a href="#none" class="btn_noticeClientBannerControl active" style="display: none;">playStop</a>
                    </div>
                </div>
            </div>
<!-- E > 공지사항 & 고객센터 -->

<script id="temp_popup" type="text/x-jquery-tmpl">
<div class="layer-contents" id="wrap_main_notice" ">
<!-- 메인팝업 -->
    <div class="wrap-noti-main" id="mainNotice">
        <div class="noti-main">
			<strong class="hidden">공지사항</strong>
            <div class="slider" id="mainNoticeSlider">
                <button type="button" class="btn-play">자동 넘기기 시작</button>
                
                    {{each List}}
			            {{html Contents}}
                    {{/each}}
                      
                <button type="button" class="btn-prev">이전 페이지 이동</button>
				<!-- strong 에 현재 보이는 index, span 에 총 length -->
                <div class="noti-num">
                    <strong>1</strong><span>/${List.length}</span>
                </div>
                <button type="button" class="btn-next">다음 페이지 이동</button>
            </div>
        </div>
        <div class="noti-footer">
            <span class="check"><input id="open_today" type="checkbox" /><label for="open_today">오늘 하루 그만 보기</label></span>
            <button class="btn-close" type="button"><span class="hidden">공지사항</span>닫기</button>
        </div>
    </div><!-- .wrap-noti-main -->
<!-- 메인팝업끝 -->
</div>
</script>

<script type="text/javascript">
    //<![CDATA[
     //CGV 공지 팝업 주석처리
    //function getCookie(name) {
    //    var nameOfCookie = name + "=";
    //    var x = 0;
    //    while (x <= document.cookie.length) {
    //        var y = (x + nameOfCookie.length);
    //        if (document.cookie.substring(x, y) == nameOfCookie) {
    //            if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
    //                endOfCookie = document.cookie.length;
    //            return unescape(document.cookie.substring(y, endOfCookie));
    //        }
    //        x = document.cookie.indexOf(" ", x) + 1;
    //        if (x == 0)
    //            break;
    //    }
    //    return "";
    //}    
    //if (getCookie("cgv_notice") != "done") {
    //    var spcwin = window.open('/popup/1411_personal_popup_1107_v2.html', 'cgv_notice', "height=414,width=280,menubar=no,scrollbars=no,resizeable=no,toolbar=no,left=355,top=100")
    //    spcwin.focus();        
    //}       

    //oms 
    if ("http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=36641&menu=006" == "" || "" == "") { error_specialDiscountData(); }

    //배너이미지가 깨질경우 oms등록 안보이게 처리
    function error_specialDiscountData() {
        $(".noticeClient_banner_list > .swiper-wrapper > .swiper-slide:eq(0)").hide();
        $(".btn_noticeClientBannerControl").click();
        $(".btn_noticeClientBannerControl").hide(); //시작중지 버튼
    }

    (function ($) {
        $(function () {
            var popupData = { 'List': []}; //cgv 공지사항
            var userPopupData= []; //고객개인화 처리

            function getCookie(cName) {
                cName = cName + '=';
                var cookieData = document.cookie;
                var start = cookieData.indexOf(cName);
                var cValue = '';
                if (start != -1) {
                    start += cName.length;
                    var end = cookieData.indexOf(';', start);
                    if (end == -1) end = cookieData.length;
                    cValue = cookieData.substring(start, end);
                }
                return unescape(cValue);
            }

            function setCookie(name, value, expiredays) {
                var todayDate = new Date();
                todayDate.setDate(todayDate.getDate() + expiredays);
                document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
            }

            function setCookie_Main(name, value) {
                var todayDate = new Date();

                todayDate.setSeconds(59);
                todayDate.setMinutes(59);
                todayDate.setHours(23);

                document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
            }

            function openPopup() {
                var cookie = getCookie("mainpopup");

                if (!popupData || !popupData.List || popupData.List.length < 1 || cookie == "true")
                    return;

                /* 전체 template */
                var $std = $('.skipnaiv'),
				options = {
				    '$target': $std,
				    'html': $("#temp_popup").tmpl(popupData)
				};
                app.instWin.add(options);
                /* 위치잡는 스크립트 */
                //var offsetLeft = $('#contaniner').offset().left;
                //$std.next('.layer-wrap').css('left', offsetLeft + 30);

                /* 슬라이더 */
                var popsliderOptions = {
                    //2014.09.15 디마팀 방재현님 요청으로 2초로 (수정 default : 4초), 이지용님 요청으로 3초로 재수정
                    'term'      : 3000,
                    'effect': 'none',
                    'auto': true,
                    callback: function (_index) {
                        $('.noti-num strong').text(_index + 1);
                    }
                };
                $('#mainNoticeSlider').visualMotion(popsliderOptions);
            }

            openPopup();

            //layer 팝업공지 닫기클릭
            $('#open_today').on('click', function () {
                var isChecked = $("#open_today").is(":checked");

                if (isChecked) {
                    setCookie_Main("mainpopup", "true");

                    $('.layer-wrap').remove();
                }

            });

            function OpenSystemPopup() {
                if (userPopupData && userPopupData.length > 0) {
                    for (var i=0;i<userPopupData.length;i++) {
                        var item = userPopupData[i];
                        var popupName = item['CookieName'];

                        if (getCookie(popupName) == 'done') { return; }

                        var option = 'width=' + item['Width'] + ',height=' + item['Height'] + ',toolbar=no,scrollbars=no,status=0,top=' + item['Y'] + ',left=' + item['X'];
                        var url = item['IsUrl'] == 'n' ? '/user/popup/personal-system.aspx?idx=' + item['IDX'] : item['Contents'];

                        var userPopup = window.open(url, popupName, option);
                        userPopup.focus();
                    }
                }
            }
            var uAgent = navigator.userAgent;  
            
            if( uAgent.indexOf("NT 5.1") != -1 ){           
                $.fn.openPopup('pop_supportOS');
            }else if (uAgent.indexOf("MSIE 6") > 0 || uAgent.indexOf("MSIE 7") > 0 || uAgent.indexOf("MSIE 8") > 0 ){       
                $.fn.openPopup('pop_supportBrower');  // IE버전     
            }
         
            OpenSystemPopup();

            /*******************************
            //메인 GA 에널리스틱스 로그 - myilsan 20220113
            *******************************/
            //현재상영작,상영예정작 tab이동
            $(".movieChartBeScreen_btn_wrap > .tabBtn_wrap > h3 > a").on({
                click: function() {
                    gaEventLog('PC_메인', this.text, '');
                }
            });
            $("#btn_allView_Movie").on({
                click: function () {

                    var action = $(".movieChartBeScreen_btn_wrap > .tabBtn_wrap > h3 > .active")[0].innerText;
                     gaEventLog('PC_메인', action +" 더보기", '');
                }
            });
            $("#btn_allView_Event").on({
                click: function () {
                     gaEventLog('PC_메인', "이벤트 더보기", '');
                }
            });
            $("#btn_allView_Special").on({
                click: function () {
                     gaEventLog('PC_메인', "특별관 더보기", '');
                }
            });

            //특별관 이미지 선택
            $(".specialHall_link").on({
                click: function () {
                    var label = $(this).find("img")[0].alt;
                    gaEventLog('PC_메인', "특별관", label);
                }
            });
            //특별관 택스트 선택
            $(".specialHall_list > li > a").on({
                click: function () {
                    gaEventLog('PC_메인', "특별관", this.children[0].innerText);
                }
            });
            

            //기프트 카드 더보기
            $(".giftcon_list > dt > a").on({
                click: function () {
                    var action = $(this).attr('alt');
                    gaEventLog('PC_메인', action + " 더보기", '');
                }
            });
            //공지사항 더보기
            $("#notice_more").on({
                click: function () {
                    gaEventLog('PC_메인', '공지사항_더보기', '');
                }
            });

            //기프트 카드 상품선택
            $(".giftcon_list > dd > a").on({
                click: function () {
                    var label = $(this).find('.giftcon_info_wrap > span')[0].innerText;
                    gaEventLog('PC_메인', "상품상세", label);
                }
            });
            //공지사항 클릭
            $(".notice_wrap > .btn_link").on({
                click: function () {
                    gaEventLog('PC_메인', '공지사항', '');
                }
            });
            //FAQ, 1:1문의, 분실물 문의, 대관/단체 문의 클릭
            $("#client_btn_wrap >  a").on({
                click: function () {
                    gaEventLog('PC_메인', this.text, '');
                }
            });
            //하단배너 1
            $("#bannerType1").on({
                click: function () {
                    gaEventLog('PC_메인', '하단배너1', '');
                }
            });
            //하단 iframe 클릭 체크 로직 - 짜증나 ㅋㅋ
            var iframeObject = { adIframeMouseOver: false }
            $("#Branding").bind({
                mouseover: function () {
                    iframeObject.adIframeMouseOver = true;
                }
            });
            $("#Branding").bind({
                mouseout: function () {
                    iframeObject.adIframeMouseOver = false;
                }
            });
            $(window).blur(function () {
                if (iframeObject.adIframeMouseOver) {
                    gaEventLog('PC_메인', '하단배너2', '');
                }
            });
            // end - 하단 iframe 클릭 체크 로직 - 짜증나 ㅋㅋ
            
        });
    })(jQuery);
//]]>
</script>


            
            <!--/ Contents End -->
		
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
     
        <a href="http://192.168.10.145/HCY_CINEMA/user/ticketing/mainTicketing.jsp" class="btn_fixedTicketing">예매하기</a>
        
        <a href="#none" class="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동"></a>
    </div>
    
    <!-- E 예매하기 및 TOP Fixed 버튼 -->
	
    <!-- S Footer -->
    <jsp:include page="../include/footer.jsp"/>
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

<script id="temp_popup_movie_player_movie_info" type="text/x-jquery-tmpl">
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

<script id="temp_popup_movie_player_relation_movie_item" type="text/x-jquery-tmpl">
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
	
    function goFamilySite() {
        var famulySiteURL = $(familysite).val();
        if (famulySiteURL != "") {
            var win = window.open(famulySiteURL, 'winFamilySite')
            win.focus();
        }
    }
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
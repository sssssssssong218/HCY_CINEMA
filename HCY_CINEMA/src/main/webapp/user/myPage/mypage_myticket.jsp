<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="No-Cache">
    <meta http-equiv="imagetoolbar" content="no">
    <meta name="viewport" content="width=1024">
    <meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작">
    <meta name="description" content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다.">
    <meta property="og:site_name" content="영화 그 이상의 감동. CGV">
    <meta id="ctl00_ctl00_og_title" property="og:title" content="나의 예매내역 < My CGV | 영화 그 이상의 감동. CGV">
    
    
    <meta id="ctl00_ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png">
    <link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon">
    <title id="ctl00_ctl00_headerTitle">나의 예매내역 &lt; My CGV | 영화 그 이상의 감동. CGV</title>
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

     <!-- 2023.03.27 홈페이지 스토어 영역 內 배너 영역 미노출의 件 -->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/giftstore.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/commonstore.js"></script>
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/giftstore/giftstore.css"> 

    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css">
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>

    <!-- 각페이지 Header Start--> 
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">
    <!--통합결제-->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/css/mypagenew.css">

    <!--/각페이지 Header End--> 
    <script type="text/javascript">
        //<![CDATA[
        _TRK_CP = "/My CGV/나의 예매내역";

        app.config('staticDomain', 'https://img.cgv.co.kr/R2014/')
            .config('imageDomain', 'https://img.cgv.co.kr')
            .config('isLogin', 'True');

        
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
    

    
<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/system.packed.js"></script><script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/system.packed.js"></script></head>
<body class="" cz-shortcut-listen="true" style="">

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>    
<div id="cgvwrap">
    
    
        
	
      <!-- S Header
        Description
        - class 'nav' 에 class 'active' 추가시 서브메뉴노출
        - class 'nav' 에 class 'fixed' 추가시 상단고정되며 스타일 변경됨
     -->
	<div class="header">			
            <!-- 서비스 메뉴 --> 
            
<div class="header_content">
    <div class="contents">
        <h1 onclick=""><a href="/"><img src="https://img.cgv.co.kr/R2014/images/common/logo/logoRed.png" alt="CGV"></a><span>CULTUREPLEX</span></h1>
        <ul class="memberInfo_wrap">
            <!-- Advertisement -->
            
			<div class="ad-partner">
                <a href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=31426&amp;menu=006">
                    <img src="https://img.cgv.co.kr/WingBanner/2023/0208/16758461047540.png" alt="현대M포인트" onerror="this.onerror=null;javascript:;$('.ad-partner').hide();">
                </a>					
			</div>
            
            <!-- /Advertisement -->

            
            <li><a href="/user/login/logout.aspx" class="logout" title="로그아웃"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="로그아웃"><span>로그아웃</span></a></li>
            
            
            <li><a href="/user/mycgv/"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY CGV"><span>MY CGV</span></a></li>
            <li><a href="/support/default.aspx"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginCustomer.png" alt="고객센터"><span>고객센터</span></a></li>
        </ul>
    </div>
</div>

<script>
    //GA Analytics TopMenu 영역 LOG
    //빨강 CGV클릭
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
        location = "/search/?query=" + escape($objKeyword.val());
    }

   

    //상단 키워드 광고 (S)
    function AdSearchExt(txt, SearchText) {
        $('#header_keyword').attr('placeholder', txt);
        $('#header_ad_keyword').val(SearchText);
    }

    function hdIcoSet(left, sh) { }
    //상단 키워드 광고 (E)

    //상단광고닫기
    function hideCgvTopAd() {
        $(".cgv-ad-wrap").hide();
        $('#wrap_main_notice').parent('div').css('top', 280);
    }

    //비즈스프링 클릭로그
    function setClickLog(title) {
        // eval("try{trk_clickTrace('EVT', '" + title + "')}catch(_e){}");
    }

</script>
<div class="nav fixed" style="left: 0px;">
    <div class="contents">
        <h1><a href="/" tabindex="-1"><img src="https://img.cgv.co.kr/R2014/images/common/logo/logoWhite.png" alt="CGV"></a></h1>
        <ul class="nav_menu">
            <li>
                <h2><a href="/movies/?lt=1&amp;ft=0">영화</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/movies/?lt=1&amp;ft=0" tabindex="-1">영화</a></h2></dt>
                    <dd><h3><a href="/movies/?lt=1&amp;ft=0">무비차트</a></h3></dd>
                    <dd><h3><a href="/arthouse/">아트하우스</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/detailViewUnited.aspx?seq=30717">ICECON</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="/theaters/">극장</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/theaters/" tabindex="-1">극장</a></h2></dt>
                    <dd><h3><a href="/theaters/">CGV 극장</a></h3></dd>
                    <dd><h3><a href="/theaters/special/defaultNew.aspx">특별관</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="/ticket/"><strong>예매</strong></a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/ticket/" tabindex="-1">예매</a></h2></dt>
                    <dd><h3><a href="/ticket/">빠른예매</a></h3></dd>
                    <dd><h3><a href="/reserve/show-times/">상영스케줄</a></h3></dd>
                    <dd><h3><a href="/ticket/eng/newdefault.aspx">English Ticketing</a></h3></dd>
                    <dd><h3><a href="/reserve/show-times/eng/">English Schedule</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="/culture-event/popcorn-store/">스토어</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/culture-event/popcorn-store/" tabindex="-1">스토어</a></h2></dt>
                    
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=1">패키지</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=2">영화관람권</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=3">기프트카드</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=4">콤보</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=5">팝콘</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=6">음료</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=7">스낵</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=10">플레이존</a></h3></dd>
                        
                    <!-- 2023.05.15 씨네샵 URL 변경 요청 -->
                    <dd><h3><a href="https://www.cineshop.co.kr" class="arrowR" target="_blank">씨네샵</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_이벤트','')"><a href="/culture-event/event/defaultNew.aspx">이벤트</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/culture-event/event/defaultNew.aspx?mCode=001" tabindex="-1">이벤트</a></h2></dt>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=001">SPECIAL</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=004">영화/예매</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=008">멤버십/CLUB</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=005">CGV 극장별</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=006">제휴할인</a></h3></dd>
                    <dd><h3><a href="/user/mycgv/event/result_list.aspx">당첨자 발표</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/end-list.aspx">종료된 이벤트</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_해택','')"><a href="/discount/discountlist.aspx">혜택</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/discount/discountlist.aspx" tabindex="-1">혜택</a></h2></dt>
                    <dd><h3><a href="/discount/discountlist.aspx">CGV 할인정보</a></h3></dd>
                    <dd><h3><a href="https://www.cgv.co.kr/user/memberShip/ClubService.aspx">CLUB 서비스</a></h3></dd>
                    <dd><h3><a href="/user/vip-lounge/">VIP 라운지</a></h3></dd>
                </dl>
            </li>
        </ul>
        <div class="totalSearch_wrap">
            <label for="totalSearch">
                <input type="text" id="header_keyword" value="" placeholder="키리에의 노래">
                <input type="hidden" id="header_ad_keyword" name="header_ad_keyword" value="키리에의 노래">
            </label>
            <button type="button" class="btn_totalSearch" id="btn_header_search">검색</button>
            <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>
            <!--<div class="totalSearchAutocomplete_wrap">
                <dl class="totalSearchAutocomplete_list">
                    <dt>영화</dt>
                    <dd><a href="#none"><strong>전지</strong>적 작가시점</a></dd>
                    <dd><a href="#none">내언니 <strong>전지</strong>현과 나</a></dd>
                    <dd><a href="#none">수호<strong>전지</strong> 영웅본색</a></dd>
                </dl>
                <dl class="totalSearchAutocomplete_list">
                    <dt>인물</dt>
                    <dd><a href="#none"><strong>전지</strong>현</a></dd>
                    <dd><a href="#none"><strong>전지</strong>희</a></dd>
                    <dd><a href="#none">이<strong>전지</strong></a></dd>
                </dl>
                <a href="#none" class="btn_totalSearchAutocomplete_close">닫기</a>
            </div>//-->
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
			
    <script type="text/javascript">
    //<![CDATA[
        (function ($) {
            $(function () {

                //특별관 >


                //동성로타운
                $('.special1_pop').on('click', function () {
                    openDownTown();
                    return false;
                });



                function openDownTown() {
                    //var win = window.open('http://section.cgv.co.kr/event/2016/0419_dongsungro_town/pop_service.aspx', 'winDownTown', 'left=0,top=0,width=670,height=800,toolbar=no,scrollbars=yes');
                    //win.focus();
                }
            });
        })(jQuery);
    //]]>
</script>


<div class="cols-content" id="menu">
    <div class="col-aside">
		<div class="skipnaiv">
			<a href="#mycgv_contents" id="skipMycgvMenu">MYCGV 서브메뉴 건너띄기</a>
		</div>
	    <h2>MY CGV 서브메뉴</h2>
	    <div class="snb">
	        <ul>
	            
	            <li class="on">
                    <a href="/user/mycgv/reserve/?g=1" title="현재 선택">나의 예매내역 <i></i></a>
                    
                </li>
	            
	            
                

                


	            
	            <li>
                    <a href="/user/mycgv/myinfo/?g=1">회원정보<i></i></a>
	                <ul>

                         <li>
                            <a href="/user/mycgv/myinfo/edit-myinfo-cjone.aspx?g=1">회원정보 수정</a>
                        <li>
                            <a href="/user/mycgv/myinfo/edit-myinfo-cjone.aspx?g=1">비밀번호 변경</a>
                        </li></li>

						

	                    
	               
	                    
	                    
                        
	                </ul>
	            </li>
                 
	            
                         
	           <!-- <li class="my-event"><a href="/user/mycgv/event/?g=1">나의 참여 이벤트</a></li> -->
	        </ul>
	        
            
	    </div>
    </div>
	<div class="col-detail" id="mycgv_contents">
	    
    <script type="text/javascript">
        //<![CDATA[

        var myVar;
        jQuery(document).ready(function () {
            myVar = setInterval(function () { checkCookieExp() }, 1000 * 10);

            //2023.06 영화 소득공제 적용 여부 추가
            $(".btn_incomeDeduction").on({
                click:function(e){
                    let currentTarget = e.currentTarget;
                    let isActive = $(currentTarget).hasClass('active');

                    if(isActive){
                        $(this).next().slideUp(function(){
                            $(currentTarget).removeClass('active');
                        });
                    }else{
                        $(this).next().slideDown(function(){
                            $(currentTarget).addClass('active');
                        });
                    }
                }
            });
        });

        function checkCookieExp() {
            //alert("도는건가");
            $.ajax({
                type: "POST",
                url: "/common/ajax/loginExpireCheck.aspx/expireCheck",
                data: "{ pageSize : 20 }",
                contentType: "application/json; charset=utf-8",
                dataType: "json",

                success: function (data) {
                    var rst = $.parseJSON(data.d);
                    rst = Number(rst) + 2;
                    if (rst > 1 && rst < 62) {
                        //alert("크다");
                        jQuery(".logpopup").removeClass("on").removeClass("off");
                        jQuery(".logpopup").addClass("on");
                        $('#expTime').text(rst);
                        clearInterval(myVar);
                        timerMyVar = setInterval(function () { expTimeValue() }, 1000);

                    } else {
                        jQuery(".logpopup").removeClass("on").removeClass("off");
                        jQuery(".logpopup").addClass("off");
                    }
                },
                error: function (request, error) {
                    //alert("error:" + error);
                    clearInterval(myVar);
                }
            });


            // 로그인 연장 확인 클릭 시
            //clearInterval(myVar);
        }
        function expTimeValue() {

            if (Number($('#expTime').text()) <= 0) {
                clearInterval(timerMyVar);
                window.location.href = "http://www.cgv.co.kr/user/login/logoutAuto.aspx";
            }
            else {
                $('#expTime').text($('#expTime').text() - 1);
            }
        }

        //팝업 닫기 
        jQuery(document).ready(function () {
            $('.pop_corp_session .btn-close').click(function () {
                $('.pop_corp_session').removeClass('on');
            });
        });

        //팝업 닫기 
        jQuery(document).ready(function () {
            $('.photi_agree .btn-close').click(function () {
                $('.layer-wrap.photi_agree').hide();
            });
        });

        //팝업 창 가운데로 뜨도록  
        function fnOpenChapter() {
            var obj = $('#layer-wrap');
            var iHeight = (document.body.clientHeight / 2) - obj.height() / 2 + document.body.scrollTop;
            var iWidth = (document.body.clientWidth / 2) - obj.width() / 2 + document.body.scrollLeft;

            obj.css({
                position: 'absolute'
                    , display: 'block'
                    , top: iHeight
                    , left: iWidth
            });
        }
        //]]>
</script>
<div class="tit-mycgv type2">
	<h3>나의 예매내역</h3>
	<p>지난 <em>1개월</em>까지의 예매내역을 확인하실 수 있으며, 영수증은 <em>신용카드 결제 내역</em>만 출력 가능합니다.</p>
	<a href="/user/movielog/watched.aspx" class="round inblack"><span>내가 본 영화</span></a>
</div>
  <input type="hidden" id="isIPIN" name="isIPIN" value="BP60aVR+lMjMwh1ja1I78YaRB8l/4pRYXrivtpf39DD7acKx19F8Ttm/YqbPXKMGU6cMYkJBBYge8tBTsexLwg==">
<!-- 팝업시작 -->
        <!-- 팝업 노출 시 .layer-wrap 에 클래스 .off는 없애고 .on 추가해주세요.-->
        <form name="aspnetForm" method="post" action="./?g=1" id="aspnetForm" novalidate="novalidate">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJODQ1Nzk2MzI4ZGQv40Foy6da6u7lTIRJJxR6XZ6+BA==">
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="34AE05C7">
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAMkon52rGeBaJUfEYQTt2RbAAaiyC+ogOIlg3pscMtiP2lKUwCIH8TI/sjrTPJzW35UrzSCpZkrtHGUaSyyHN8ZXfWJzg==">
</div>
            <div class="layer-wrap pop_corp_session logpopup off">
                <div class="pop_wrap">
                    <h1>자동 로그아웃 안내</h1>
                    <button type="button" class="btn-close">자동 로그아웃 안내 팝업 닫기</button>
                    <div class="pop-contents">
                        <div class="sect-corp-session">
                            <div class="cf ss_con_wrap">
                                <h5>자동 로그아웃 남은 시간 : <span class="col_red"><em><span id="expTime"></span></em>초</span></h5>
                                <p>로그인 시간을 연장하시려면 <br>로그인 연장 버튼을 클릭해주세요.</p>
                            </div>
                            <div class="cf ss_btn_wrap">
                                <a id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton1" class="round inblack" href="javascript:__doPostBack('ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton1','')"><span>로그인 연장</span></a>
                                <a id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton2" class="round gray" href="javascript:__doPostBack('ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton2','')"><span>로그아웃</span></a>
                            </div>
                        </div>
                    </div>                
                </div>
            </div>
        </form>        
        <!-- 팝업끝 -->
        <!--포토티켓 수집 동의-->
        <div class="layer-wrap photi_agree" id="agree" style="display:none">
            <div class="popwrap">
                <h1>선택 입력(수집) 항목</h1>                
                <button type="button" class="btn-close">개인정보 수집 및 활용 동의 닫기</button>    
                <div class="pop-contents">
                    <div class="tbl-breakdown-re pop">
                        <form novalidate="novalidate">
                            <fieldset>            
                                <legend>선택 입력(수집) 항목</legend>                
                                <table summary="개인정보 수집 및 활용 동의 표">
                                    <caption>개인정보 수집 및 활용 동의</caption>
                                    <colgroup>
                                        <col class="col1">
                                        <col class="col2">
                                        <col class="col3">
                                        <col class="col4">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">항목</th>
                                            <th scope="col">이용목적</th>
                                            <th scope="col">보유기간</th>
                                            <th scope="col">동의여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">본인 사진 및 이미지</th>
                                            <td>·포토티켓 서비스 이용</td>
                                            <td>약권 철회 후 1주일 까지</td>
                                            <td>                        
                                                <div>
                                                    <input type="radio" id="agree1" name="agree_photo" value="Y">
                                                    <label for="agree1">동의함</label>
                                                </div>
                                                <div>
                                                    <input type="radio" id="agree2" name="agree_photo" value="N">
                                                    <label for="agree2">동의안함</label>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <p class="marginT10">※ 동의를 거부하실 권리가 있으며, 이 경우 포토티켓 서비스는 이용하실 수 없습니다.<br>단, 동의 철회시에도 기존 이용 내역은 조회가 가능합니다.</p>
                                <div class="set-btn">
                                    <button type="submit" class="round inred" id="btnPhoto"><span>확인</span></button>
                                </div>
                            </fieldset>
                        </form>
                    </div>                    
                </div>                            
            </div>
    </div>

  <div style="display:none;">



     <input type="hidden" id="status1" name="status1" value="">
     <input type="hidden" id="message1" name="message1" value="">
     <input type="hidden" id="reserveNo1" name="reserveNo1" value="">
     <input type="hidden" id="customNo1" name="customNo1" value="">
     <input type="hidden" id="saleNo1" name="saleNo1" value="">
</div>
        <!--// 포토티켓 수집 동의-->
<div class="cols-mycgv-booking">

	<div class="sect-register booking">
		<p>
			<strong>현장에서 발권하실 경우 꼭 <em>예매번호</em>를 확인하세요.</strong>
			<span>티켓판매기에서 예매번호를 입력하면 티켓을 발급받을 수 있습니다.</span>
		</p>
	</div>

    
            <div class="lst-item">
                <div class="box-set-info">
                    <div class="box-number">
                        <em>예매번호</em>
                        <strong>0088-<i>1020-3585-097</i></strong>
                    </div>
                                    
                    <!-- 
                        Description js 20190904
                        PC홈페이지 추가
                        s:나의예매내역 출력 수정
                    -->  
                    <div class="box-info">
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=87444">
                                <span class="thumb-image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87444/87444_126.jpg" alt="플라워 킬링 문 포스터" onerror="errorImage(this)">
						            <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                    <i class="cgvIcon etc age18">18</i>
                                    <!-- <span class="ico-grade 18">
							            18
						            </span> -->
                                </span>
                            </a>
                        </div>
                                        
                        <div class="detail-area">
                            <div class="reservation-info-wrap">
                                <h2 class="box-contents artHouse">
                                    <a href="/movies/detail-view/?midx=87444" class="res-title">플라워 킬링 문</a>

                                    

                                     

                                    <span class="res-price">10,000원</span>
                                </h2>
                                <ul class="reservation-mv-info">
                                    <li>
                                        <dl>
                                            <dt>관람극장</dt>
                                            <dd>CGV 송파
												
												<a href="javascript:theaterMove('0088');">[극장정보]</a>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>관람인원</dt>
                                            <dd>  일반 1</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>관람일시</dt>
                                            <dd class="txt-red">2023.10.24(화) 09:40</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>관람좌석</dt>
                                            <dd>I 10</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>상영관</dt>
                                            <dd>2관 (Laser)</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>매수</dt>
                                            <dd>1매</dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>

                            <div class="reservation-info-wrap store-history" style="display: none;">
                                <h2>
                                    <span class="res-title">
                                    
                                         
                                        <button type="button" class="all-goods-btn" title="상품모두 열기/닫기" onclick="fn_SnackVisible(this, '0088202310203585092')">
                                            <span>전체상품보기버튼</span>
                                        </button>
                                    </span>
                                    <span class="res-price">
                                        원</span>
                                </h2>
                                <ul class="store-goods-list" id="divSnackList0088202310203585092">                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="resevation-payment-info">
                        <h2>결제내역</h2>
                        <div class="resevation-payment">
                            <p class="resevation-payment-total">
                                <span class="totel-title">총 결제금액</span>
                                <span class="res-price">
                                    10,000원</span>
                            </p>
                            <p class="resevation-payment-part"><span>신용카드</span><span class="part-price">10,000원</span></p><div class="income-deduction_wrap"><a href="#none" class="btn_incomeDeduction">* 영화관람료 소득공제 대상 <i class="cgvIcon system arrow_up">ARROW</i></a><div class="income-deduction-content"><p>본 콘텐츠는 영화관람료 소득공제 대상 상품입니다.</p><p>문화비소득공제는 자동 적용되며, 결제완료 후 변경이 불가합니다.</p><ol>    <li>        <strong>1. 영화 관람료 소득공제란?</strong>        <p> 2023년 7월 1일 결제분 부터 영화 관람료에 대해 문화비 소득공제가 적용됩니다. </p>        <ul>            <li> 총급여 7천만 원 이하 근로자 중 신용카드 등 사용액이 총급여액의 25 % 가 넘는 근로소득자를 대상으로 적용됩니다.</li>            <li>공제율은 30%, 공제한도는 전통시장 사용분, 대중교통 사용분, 문화비 사용분에 대한 소득공제를 합해 총 300만원 입니다.</li>        </ul>    </li>    <li>        <strong>2. 영화 관람료 소득공제 대상</strong>        <ul>            <li>영화 및 공연상품 (단, 영화와 매점(패스트오더) 상품 통합결제 시 대상 제외 / 스포츠 중계, 게임 중계, 강연 등 일부 콘텐츠 제외)</li>        </ul>    </li>    <li>    <strong>3. 영화 관람료 소득공제 제외 대상</strong>        <ul>            <li>매점(패스트오더), 씨네샵, 포토티켓 등 영화와 무관한 상품 제외</li>            <li>비상설상영관 등 일부 상영관 제외<!-- li-->        </li></ul>    </li>    <li>    <strong>4. 영화 관람료 소득공제 가능 결제수단</strong>        <ul>            <li>카드결제: 신용카드(법인카드 불가, 개인카드에 한함)</li>            <li>현금결제: 관람권, 포인트 등 현금영수증 처리가 가능한 결제수단</li>            <li>간편결제: 네이버페이, 카카오페이, Payco, 토스페이</li>            <li>휴대폰결제</li>        </ul>    </li><li>    <strong>5. 영화  관람료 소득공제 제외 결제수단</strong>        <ul>            <li>현금영수증 처리가 불가한 제휴 결제수단</li>            <li>그 외 OK캐쉬백 등 일부 결제수단</li>        </ul>    </li></ol></div></div>
                        </div>
                    </div>
                    <div class="set-btn">
                        <input type="hidden" class="reserve-no" name="reserve-no" value="4CynVp/9b5jZt+EfOwYhZwCG1L+OfVZjdw/x6vgmpqw=">
                        <div class="col-edit"></div><div class="col-print">   <button type="button" data-status="94" onclick="noshowYN('N', '20231024', '00', '01', '5345.93412003', '', '' )" class="round black cancel"><span>예매취소</span></button></div>
                    </div>
                    <!-- 
                        e:나의예매내역 출력 수정
                    -->  
                </div>
            </div>
        
    
</div>
<!-- TODAY BEST 무비차트 -->

<!-- //TODAY BEST 무비차트 -->

<!-- CGV 예매 관련 정책 안내 Box Type -->
<div class="sect-box-descri">
	<h4>CGV 예매 관련 정책 안내</h4>
	<!-- Box Moudle -->
	<div class="box-polaroid">
	    <div class="box-inner">
	        <ul>
	            <li>
	            	<dl>
	            		<dt>이용안내</dt>
	            		<dd>
	            			<ul>
	            				<li>예매 변경은 불가능하며, 취소 후 재 예매를 하셔야만 합니다.</li>
	            				<li>영수증은 상영 시간 전까지 마이페이지에서 출력하실 수 있습니다. 단, 신용카드로 예매하신 경우만 한합니다.</li>
	            				<li>상영 시간 이후 관람하신 영화의 영수증 출력을 원하실 경우, 1234-5678로 문의 주시기 바랍니다.</li>
	            				<li>취소하신 내역이 나타나지 않거나 궁금하신 사항이 있으시면, 고객센터로 문의해 주시기 바랍니다.</li>
	            			</ul>
	            		</dd>
	            	</dl>
	            </li>
	            <li>
	            	<dl>
	            		<dt>티켓 교환방법</dt>
	            		<dd>
	            			<ul>
	            				<li>
	            					<p><strong>티켓판매기(ATM)에서 발권하실 경우</strong><br>예매번호 또는 고객인증번호 (법정생년월일 6자리 + 휴대폰번호 뒷 7~8자리)를 입력하시면 티켓을 편하게 발권하실 수 있습니다.</p>
	            				</li>
	            				<li>
	            					<p><strong>매표소에서 발권하실 경우</strong><br>티켓교환권을 출력하여 매표소에 방문하시면 티켓으로 교환하실 수 있습니다.<br>
		            				(티켓교환권 출력이 어려운 경우, 예매번호와 신분증을 지참하시면 매표소에서 티켓을 수령하실 수 있습니다.)</p>
	            				</li>
	            			</ul>
	            		</dd>
	            	</dl>
	            </li>
	            <li>
	            	<dl>
	            		<dt>예매 취소 안내</dt>
	            		<dd>
	            			<ul>
                                
                                <li>
                                    <p><strong>신용카드</strong><br> 결제 후 3일 이내 취소 시 승인 취소 가능, 3일 이후 매입 취소시 영업일 기준 3~5일 소요</p>
                                </li>
                                <li>
                                    <p><strong>체크카드</strong><br>결제 후 3일 이내 취소 시 당일 카드사에서 환불처리. 3일 이후 매입 취소 시 카드사에 따라 3~10일 이내 카드사에서 환불</p>
                                </li>
                                <li>
                                    <p><strong>휴대폰 결제</strong><br> 
                                        결제 일자 기준 당월(1~말일)취소만 가능. 익월 취소 관련 문의는 HCY고객센터(1234-5678) 연락 요망<br>
                                        예매취소 후 당일 환불이 원칙이나 현장 취소 시 경우에 따라 익일 처리 될 수 있음.</p>
                                </li>
                                <li>
                                    <p><strong>카카오페이</strong><br>
                                        카카오페이머니나 카카오포인트를 사용하신 경우 각각의 잔액으로 원복되며, 카드 결제를 하신 경우는 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p>
                                </li>
                                <li>
                                    <p><strong>PAYCO</strong><br>
                                        PAYCO 쿠폰/포인트를 사용하신 경우 각각의 쿠폰/포인트로 원복되며 쿠폰의 경우 조건에 따라 재사용이 불가 할 수 있습니다. 카드 결제금액은&nbsp;카드사 정책에 따라 승인취소가 진행되며&nbsp;3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p>
                                </li>
                                <li>
                                    <p><strong>스마일페이</strong><br> 
                                        스마일캐시를 사용하신 경우 스마일캐시로 원복되며, 카드 결제금액은 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입취소 시 영업일 기준 3~10일 소요됩니다.</p>
                                </li>
                                <li>
                                    <p><strong>NAVER Pay</strong><br>
                                        NAVER Pay 포인트를 사용하신 경우 NAVER Pay 포인트로 원복되며, 카드사 결제를 하신 경우는 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p>
                                </li>
                                <li>
                                    <p><strong>카카오톡 선물하기 복합상품</strong><br>
                                        카카오톡 선물하기 복합상품 (2인 PKG / 1인 PKG)은 매점쿠폰 사용 시, 예매 티켓 환불 불가.<br>
                                        ※ 단, 매점 쿠폰 미 사용 시, 예매 티켓 환불 가능하며 재 예매 시, 새로운 매점 쿠폰 발급.</p>                                        
                                </li>
                                <li>
                                    <p><strong>계좌이체</strong><br> 
                                        1. 예매일 이후 7일 이내 취소 시<br>
                                        - 자동 환불 은행: 취소 후 즉시 처리가능<br>
                                        - 조흥, 신한, 외한, 한미, 우리, 우체국, 전북, 경남, 광주, 대구, 새마을, 제주<br>
                                        - 우리은행의 경우 당일 취소분만 즉시 처리 가능<br>
                                        - 수동 환불 은행: 농협(취소 후 2~3일 이내 입금), 부산/제일/우리(취소 후 3~5일 이내 입금)<br><br>

                                        2. 예매 7일 이후~상영시간 30분 전 취소 시(단, 일부 당일 취소 불가 행사의 경우 전일 취소 시)<br>
                                        - 환불은 환불 요청일로부터 7일 이상 소요됨<br><br>

                                        ※ 기타 환불 관련 문의는 HCY고객센터 1234-5678로 연락바랍니다.
                                    </p>
                                </li>
	            			</ul>
	            		</dd>
	            	</dl>
	            </li>

	            <li>
	            	<dl>
	            		<dt>환불 규정 안내</dt>
	            		<dd>
	            			<ul>
	            				<li>
	            					<p><strong>현장 취소를 하는 경우</strong><br>상영시간 이전까지만 가능하며, 상영시간 이후 취소나 환불은 되지 않습니다.</p>
	            									
	            				</li>
	            				<li>
	            					<p>
                                        <strong>홈페이지에서 예매 취소할 경우</strong><br>
                                        부분 취소는 불가능합니다. (ex. 4장을 인터넷으로 예매한 경우 4장 모두 취소만 가능)<br>
                                        홈페이지 예매 취소는 상영시간 20분전까지 가능합니다.<br>
                                        
                                        상영시간 이후 취소나 환불은 되지 않습니다</p>	            					
	            				</li>
                                <li>
                                    <p>
                                        <strong>모바일 앱/웹(m.hcy.co.kr)에서 예매 취소할 경우</strong><br>
                                        부분 취소는 불가합니다.(ex. 4장을 인터넷으로 예매한 경우 4장 모두 취소만 가능)<br> 
                                        모바일 앱/웹 예매 취소는 상영시간 15분전까지 가능합니다.<br>
                                         
                                        상영시간 이후 취소나 환불은 되지 않습니다.
                                    </p>
                                </li>
                                <li>
                                    <p><strong>단, 일부 행사의 경우 행사 당일 취소, 변경 불가 합니다.</strong></p>
                                </li>
	            			</ul>
	            		</dd>
	            	</dl>
	            </li>
	        </ul>
	    </div>
    </div>
</div>
<form name="targetform" id="targetform" method="post" novalidate="novalidate">
	<input type="hidden" name="reverse_no" id="reverse_no">
	<input type="hidden" name="theater_code" id="theater_code">
</form>

<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
<script type="text/javascript">
//<![CDATA[

    var nowDate = "20231020";
    var noshoMovie="";
    var movieViewDate="";
    var snackCancelDate="";
    var prdName="";

    var hotdeal="00";
	var moviescreenlavel = "00";

	//2020.09.23
	//씨네드쉐프 용산, 센텀, 압구정 페이지이동 
	function theaterMove(theaterCodeN) {

		if (theaterCodeN == "P013") {
			location.href="http://www.cgv.co.kr/theaters/special/show-times.aspx?regioncode=103&theatercode=0013";
		}
		else if (theaterCodeN == "P004") {
			location.href="http://www.cgv.co.kr/theaters/special/show-times.aspx?regioncode=103&theatercode=0089";
		}
		else if (theaterCodeN == "P001") {
			location.href="http://www.cgv.co.kr/theaters/special/show-times.aspx?regioncode=103&theatercode=0040";
		}
		else {
			location.href="http://www.cgv.co.kr/theaters/?theaterCode=" + theaterCodeN;
		}
	}
   //2019.12.10
   //매점상품 정보 조회
   function fn_SnackVisible(obj, reservationNo)
   {
        var showtarget = $(obj).parents(".store-history");
        if (!showtarget.hasClass("__showall")) {
            showtarget.children(".store-goods-list").stop().slideDown(300);
            
            fn_ShowSnackInfo(reservationNo, $(obj).parents(".store-history"));
        }
        else {
            showtarget.children(".store-goods-list").stop().slideUp(300);
            showtarget.removeClass("__showall");
        }
    }

    
   //2019.12.10
   //매점상품 정보 조회
   function fn_ShowSnackInfo(reservationNo, showtarget) {
        $.ajax({
            type: "POST",
            url: '/common/ajax/snack.aspx/GetReservationSnackInfo',
            data: "{ reservationNo :'" + reservationNo + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: 'json',
            success: function (result) {                
                $("#divSnackList" + reservationNo).html(result.d);

                showtarget.addClass("__showall");
            },
            error: function(result)
            {
                alert(result);
            }
        });
   }

    function noshowYN(N, D, H, L, T, C, P) {
    
        noshoMovie =N;
        movieViewDate=D;
        hotdeal = H;
        moviescreenlavel = L;
        movieplaytime= T;
        snackCancelDate = C; //매점취소일자 2019-12-10
        prdName = P;         //매점상품명 2019-12-10
    }


     function hotdealYN(H)
     {
       // if(H =="01"){
        if(H =="01" || H =="03" ){
           alert('핫딜이 종료하여 영화 상영이 확정된 후부터\n\n포토플레이 제작이 가능합니다. ');
           return false;
         }

    }
    

    (function ($) {
        $(function () {          
            //visualMotion.
            var sliderOptions = { 'effect': 'none', 'auto': true };
            $('#slider').visualMotion(sliderOptions);

            $('.receipt').on('click', function () {
                var shopId = $(this).attr("data2");
                var url = 'https://cjpay.cjsystems.co.kr/cjs/pg/adj/receipt.fo?SHOP_SYS_NO=&SHOP_ID=' + shopId + '&PAY_GRP_ID=0001&PG_CTRL_CD_P=' + $(this).attr("data");
                var win = window.open(url, "receipt", "left=0,top=o,width=440,height=800,toolbar=no,scrollbars=no");
                win.focus();
            });

            $('.hometicket').on('click', function () {
                var url = 'http://ticket.cgv.co.kr/CGV2011/RIA/home_ticket.aspx?booking_no=' + $(this).attr("data") + '&isMember=Y' + '&userPIN=' + "0VM2fHyAOui%2fiDLcjkUj%2fLYlF6OX8xuRks39zvyCw9I%2bWr8BxtyUladHjLMux5kDiUG2XCMzoE7YkWS11AlMVBuDsaUfVc85tyevha4%2f3xsnYh%2fAO%2f1%2fYYHH%2bRSSMAY5";
                // var url = 'http://ticket.cgv.co.kr/CGV2011/RIA/home_ticket.aspx?booking_no=' + $(this).attr("data"); 
                var win = window.open(url, "hometicket", "left=0,top=o,width=640,height=897,toolbar=no,scrollbars=no");

                win.focus();
            });

            // 2015-11-19 hayoto 상영시간 이후 예매정보 출력 메시지
            $('.hometicket_END').on('click', function () {
                if (!confirm('상영시간이 지난 영화입니다. \n예매정보를 출력하시겠습니까?'))
                    return false;

                var url = 'http://ticket.cgv.co.kr/CGV2011/RIA/home_ticket.aspx?booking_no=' + $(this).attr("data");
                var win = window.open(url, "hometicket", "left=0,top=o,width=640,height=897,toolbar=no,scrollbars=no");
                win.focus();
            });

            $('.sendsmspopup').on('click', function () {
                var reserveNo = $(this).parents('.set-btn').find('.reserve-no').val();

                var $targetFrm = $('#targetform');
                $targetFrm.find('#reverse_no').val(reserveNo);
                $targetFrm.attr('target', 'sendsms');
                $targetFrm.attr('action', '/user/popup/send-sms.aspx');

                var win = window.open('about:blank', "sendsms", "left=0,top=o,width=664,height=300,toolbar=no,scrollbars=no");
                if (win) {
                    $targetFrm.submit();
                    win.focus();
                } else {
                    alert('팝업이 허용되어 있지 않습니다.');
                }

                return false;
            });

            // 2015-11-19 hayoto 상영시간 이후 문자 보내기 메시지
            $('.sendsmspopup_END').on('click', function () {
                if (!confirm('상영시간이 지난 영화입니다. \n‘문자 보내기’서비스를 이용하시겠습니까?'))
                    return false;

                var reserveNo = $(this).parents('.set-btn').find('.reserve-no').val();

                var $targetFrm = $('#targetform');
                $targetFrm.find('#reverse_no').val(reserveNo);
                $targetFrm.attr('target', 'sendsms');
                $targetFrm.attr('action', '/user/popup/send-sms.aspx');

                var win = window.open('about:blank', "sendsms", "left=0,top=o,width=664,height=300,toolbar=no,scrollbars=no");
                if (win) {
                    $targetFrm.submit();
                    win.focus();
                } else {
                    alert('팝업이 허용되어 있지 않습니다.');
                }

                return false;
            });



            //상영시간 20분~30분
            //2019.12.10 통합결제 수정
            $('.cancel').on('click', function () {
                var photoTicketStatus = $(this).attr('data-status');
                var msg = '';

				var chk30 = false; // 30분 취소 불가
				var chk60 = false; // 60분 취소 불가 
                var chk120 = false; // 120분 취소 불가
                //자동차상영관 : 30 120분으로 변경 2020/08/30 - minmmm2
                if (moviescreenlavel == '30') chk120 = true; // 30 자동차극장 

				if (moviescreenlavel == '24' || moviescreenlavel == '26') chk30 = true; // 24 : 씨네포래, 26 : 씨네앤리빙룸
				if (moviescreenlavel == '32') chk60 = true;
                var chk30 = false; // 30분 취소 불가 


                if (moviescreenlavel == '24' || moviescreenlavel == '26') chk30 = true; // 24 : 씨네포래, 26 : 씨네앤리빙룸

                if(chk30 && movieplaytime <= 30){
                   alert("영화상영 시간 기준 30분 전까지 온라인 예매 취소가 가능하며,\n\n 이후에는 현장에서 취소 하셔야 합니다. (영화 상영 후 취소 불가)");
                   return false; 
				}     

				if(chk60 && movieplaytime <= 60){
                   alert("영화상영 시간 기준 1시간 전까지 온라인 예매 취소가 가능하며,\n\n 이후에는 현장에서 취소 하셔야 합니다. (영화 상영 후 취소 불가)");
                   return false; 
                }     

                if(chk120 && movieplaytime <= 120){
                   alert("영화상영 시간 기준 2시간 전까지 온라인 예매 취소가 가능하며,\n\n 이후에는 현장에서 취소 하셔야 합니다. (영화 상영 후 취소 불가)");
                   return false; 
                }

                if(hotdeal == 'A1' ){
                   alert("핫딜이 종료된 영화의 예매취소는 불가합니다.\n\n(핫딜 실패 영화는 1시간 내 자동 취소됩니다)");
                   return false; 
                }      

                if(hotdeal == '02'){
                   alert("핫딜에 성공하여 상영이 확정된 영화로 예매 취소가 불가합니다.");
                   return false; 

                }              
                else if(hotdeal== '01'){
                    if (!confirm('핫딜영화 예매를 취소하시겠습니까?\n\n ※ 핫딜영화 예매 취소는 핫딜 종료일까지 가능하며,\n\n핫딜 종료 후 영화 상영 확정 시 예매 취소가 불가합니다.')) {
                        return false;
                    }
                }                  
                
                if(noshoMovie =='Y'){
                    if(nowDate >= movieViewDate){
                        alert('※ 본 행사는 진행 당일 취소, 변경이 불가합니다.');
                        return false;
                    }else{
                        msg ="예매를 취소하시겠습니까?\n\n※ 본 행사는 진행 당일 취소, 변경이 불가합니다.";
                    }
                }else{                  

					if (photoTicketStatus == '98' || photoTicketStatus == '96') {
						if (chk30 || chk60) {
                             msg = '예매를 취소하시겠습니까?\n포토플레이을 만들었을 경우 함께 취소됩니다.';
                        }else{
                             msg = '예매를 취소하시겠습니까?\n포토플레이을 만들었을 경우 함께 취소됩니다.\n\n※ 인터넷 예매 취소는 상영시간 20분 전까지 가능하며, \n예매 가능은 상영시간 30분 전까지 가능합니다.';
						}

                    }else{
						if (chk30) {
							msg = '예매를 취소하시겠습니까?\n\n※ 인터넷 예매 취소는 상영시간 30분 전까지 가능합니다.';
						} else if (chk60) {
                            msg = '예매를 취소하시겠습니까?\n\n※ 인터넷 예매 취소는 상영시간 1시간 전까지 가능합니다.';
                        } else if (chk120) {
							msg = '예매를 취소하시겠습니까?\n\n※ 인터넷 예매 취소는 상영시간 2시간 전까지 가능합니다.';
						} else {
                            //2019.12.10 통합결제
                            if(prdName == "" || snackCancelDate != "") {
                                //영화 상영시간 20분 이전 구매한 매점 상품이 없는 경우(또는 매점 상품 부분 취소된 경우)
                                msg = '예매를 취소하시겠습니까?\n\n※ 인터넷 예매 취소는 상영시간 20분 전까지 가능하며, \n예매 가능은 상영시간 30분 전까지 가능합니다.';
                            }
                            else if(prdName != "" && snackCancelDate == "") {
                                //영화 상영시간 20분 이전 구매한 매점 상품이 있는 경우
                                msg = '예매를 취소하시겠습니까?\n함께 구매하신 매점 상품도 취소됩니다.\n\n※ 인터넷 예매 취소는 상영시간 20분 전까지 가능하며, \n예매 가능은 상영시간 30분 전까지 가능합니다.';
                            }
                        }
                    }
                }

                if (!confirm(msg))
                    return false;

                CancelReserve($(this));
            });

            // 2015-11-19 hayoto 상영시작 20분 전부터 상영시간 전까지
            $('.cancel_A20').on('click', function () {
                if(noshoMovie =='Y'){
                    alert('※ 본 행사는 진행 당일 취소, 변경이 불가합니다.');
                }else{
                    alert("상영시작시간 20분전 영화는 \n취소하실 수 없습니다.\n \n※ 홈페이지 예매 취소는 상영 시작시간 20분전까지 가능합니다.");
                }
            });

            // 2015-11-19 hayoto 상영이 시작한 후부터 12시간 후까지
            $('.cancel_END').on('click', function () {
                if(noshoMovie =='Y'){
                    alert('상영시간이 지난 영화입니다. \n \n ※ 본 행사는 진행 당일 취소, 변경이 불가합니다.');
                }else{
                    alert("상영시간이 지난 영화입니다. \n \n ※ 상영 시작시간이 지난 영화로 취소가 불가 합니다.");
                }
            });


            $('#btnPhoto').on('click', function () {
                if ($('input:radio[name="agree_photo"]:checked').val() == "Y") {

                    alert("포토플레이 본인 사진 및 이미지 수집설정이\n완료되었습니다.");
                    getAgree();
                    return true;
                }
                else {

                    if (confirm("동의하지 않으실 경우,  포토플레이을 이용하실 수 없습니다.\n계속하시겠습니까?\n단, 동의 철회시에도 기존 이용 내역은 조회가 가능합니다.")) {
                        $('#agree').hide();
                        return false;
                    }
                    else {
                        return false;
                    }
                }

            });



            function getAgree() {

                var usercode = $("#isIPIN").val();

                var status = $('#status1').val();
                var message = $('#message1').val();
                var reserveNo = $('#reserveNo1').val();
                var customNo = $('#customNo1').val();
                var saleNo = $('#saleNo1').val();


                var agreeflag = "1";
                $.support.cors = true;

                /

            function CancelReserve(obj) {
                var reserveNo = obj.parents('.set-btn').find('.reserve-no').val();

                var url = '/common/ajax/user.aspx/CancelReserveByMember';
                var data = { 'reserveNo': reserveNo };
                var callback = function (result) {
                    obj.attr('disabled', false);
                    $('.loading').remove();
                    if (result == null || result["resultCode"] == null)
                        return;

                    var resultCode = result["resultCode"];
                    var resultMessage = result["resultData"];


                    switch (resultCode) {
                        case "-10":
                            alert('선물 된 내역이 있는 티켓으로 홈페이지 취소가 불가합니다. 모바일을 통해 선물 회수 후 취소를 진행해주세요.');
                            break;
                        case "-9":
                            alert('매점 상품을 수령하였으므로 예매 취소가 불가합니다.');
                            break;
                        case "-8":
                            alert('잘못된 경로로 접근하였습니다.\n확인 후 다시 진행해 주세요.');
                            break;
                        case "-1":
                            alert('이미 취소되었거나 존재하지 않는 예매번호입니다.\n확인 후 다시 진행해 주세요.');
                            break;
                        case "-2":
                            alert('예매취소 가능시간이 종료되었습니다.\n자세한 문의는 고객센터 1544-1122를 통하여 진행 가능합니다.');
                            break;
                        case "0":
                            alert('취소처리가 실패하였습니다.\n(' + resultMessage + ')');
                            break;
                        case "1":
                            if ($('.cols-mycgv-booking > .lst-item').length < 2) {
                                obj.parents('.lst-item').remove();
                                $('.cols-mycgv-booking .info-log').after('<div class="lst-item"><div class="box-set-info nodata">고객님의 최근 예매내역이 존재하지 않습니다.</div></div>');
                            }
                            else {
                                obj.parents('.lst-item').remove();
                            }

                            var options = { '$target': null, 'type': 'center', 'position': 'position', 'mask': true };
                            app.htmlLoad2(options, app.config('html').reservation_cancel);

                            break;
                    }
                };
                app.loading().show({ 'target': obj.parents('.lst-item'), 'circleType': 'large' });
                obj.attr('disabled', true);

                app.ajax().set({ dataType: 'json', url: url, data: JSON.stringify(data), contentType: "application/json; charset=utf-8", successHandler: callback });
            }

            var map = null;
            var myVar;

            function openMakePhotoTicketPopup(reserveNo, customNo, saleNo, theaterCode, multiplexCode, movieplayDate, movieplayTurn, cgvCode) {
                var url = 'http://phototicket.cgv.co.kr/Popup/Editor/photoeditor.aspx';

                // TODO : 라이브 소스로 수정예정.
                var mapForm = document.createElement("form");
                mapForm.target = "MakePhotoTicket";
                mapForm.method = "POST";
                mapForm.action = url;

                var mapInput = document.createElement("input");
                mapInput.type = "text";
                mapInput.name = "ReserveNo";
                mapInput.value = reserveNo;
                mapForm.appendChild(mapInput);

                var mapInput1 = document.createElement("input");
                mapInput1.type = "text";
                mapInput1.name = "memberreserveno";
                mapInput1.value = customNo;
                mapForm.appendChild(mapInput1);

                var mapInput2 = document.createElement("input");
                mapInput2.type = "text";
                mapInput2.name = "SaleNo";
                mapInput2.value = saleNo;
                mapForm.appendChild(mapInput2);
                //****
                var mapInput3 = document.createElement("input");
                mapInput3.type = "text";
                mapInput3.name = "CinemaCode";
                mapInput3.value = theaterCode;
                mapForm.appendChild(mapInput3);

                var mapInput4 = document.createElement("input");
                mapInput4.type = "text";
                mapInput4.name = "ScreenCode";
                mapInput4.value = multiplexCode;
                mapForm.appendChild(mapInput4);

                var mapInput5 = document.createElement("input");
                mapInput5.type = "text";
                mapInput5.name = "ScreenDate";
                mapInput5.value = movieplayDate;
                mapForm.appendChild(mapInput5);

                var mapInput6 = document.createElement("input");
                mapInput6.type = "text";
                mapInput6.name = "ScreenNumber";
                mapInput6.value = movieplayTurn;
                mapForm.appendChild(mapInput6);

                var mapInput7 = document.createElement("input");
                mapInput7.type = "text";
                mapInput7.name = "MovieCode";
                mapInput7.value = cgvCode;
                mapForm.appendChild(mapInput7);

                //2015.10.02 추가
                var mapInput8 = document.createElement("input");
                mapInput8.type = "text";
                mapInput8.name = "ipin";
                mapInput8.value = encodeURIComponent("BP60aVR+lMjMwh1ja1I78YaRB8l/4pRYXrivtpf39DD7acKx19F8Ttm/YqbPXKMGU6cMYkJBBYge8tBTsexLwg==");
                mapForm.appendChild(mapInput8);

                var mapInput9 = document.createElement("input");
                mapInput9.type = "text";
                mapInput9.name = "memberid";
                mapInput9.value = "gentlebr2z";
                mapForm.appendChild(mapInput9);

                var mapInput10 = document.createElement("input");
                mapInput10.type = "text";
                mapInput10.name = "infotype";
                mapInput10.value = "R";
                mapForm.appendChild(mapInput10);
                //***


                document.body.appendChild(mapForm);

                map = window.open('about:blank', 'MakePhotoTicket', 'width=950, height=650, left=50%, top=50%, toolbars=no, scrollbars=no, menubar=no, resizable=no,');

                if (map) {
                    mapForm.submit();
                    myVar = setInterval(function () { myTimer() }, 1000);
                } else {
                    alert('팝업이 허용되어 있지 않습니다.');
                }
            }

            function myTimer() {
                if (map == null || map == "undefined" || map.closed) {
                    clearInterval(myVar);
                    document.location.reload();
                }
            }

        });
    })(jQuery);

//]]>
</script>

	</div>
</div>
<script id="temp_view_usergrade" type="text/x-jquery-tmpl">

<div class="popwrap" style="width:330px;margin-top:-500px;margin-left:-165px">

						<h1>VIP 등급 이력</h1>
						<div class="pop-contents">
						<!-- Contents Addon -->
							<div class="sect-my-grade">
								<p><strong>강다연</strong> 고객님의 연도별 고객 등급 이력입니다.</p>
								<div class="grade-lst-light scrollbox">
									<table summary="연도별 VIP 세부 등급 이력" id="mytable">
										<caption>VIP 등급 이력 리스트</caption>
										<colgroup>
											<col width="50%">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">승급 년/월별</th>
												<th scope="col">등급</th>
											</tr>
										</thead>
										<tbody>
											
										</tbody>
									</table>
								</div>
								<ul class="tb-desclist">
									<li>- 고객님의 등급은 당해년도 VIP 규정에 따라 부여된 등급입니다</li>
									<li>- 연속 VIP는 전년도와 등급 갱신월이 일치해야 인정됩니다<br />
									(예. 17년 4월 RVIP의 경우, 18년 4월 RVIP 갱신 시에만 2년 연속 RVIP로 인정되며, 2017년 5월 RVIP 승급 시 17년 5월에 1년 차 RVIP로 인정)</li>
									<li>- 등급이 하락된 경우 하락된 등급의 1년 차로 인정됩니다<br />
									(예. 17년 4월 SVIP의 경우 18년 4월 VVIP로 등급 하락 시 VVIP 1년 차로 인정)</li>
								</ul>

							
							</div>
						<!-- //Contents Addon -->
						</div>
						<button type="button" class="btn-close">MY 지난 등급 이력 팝업 닫기</button>
					</div>

</script>
<script type="text/javascript">
    //<![CDATA[
    (function ($) {
        $(function () {

            $('#go_edit_page').on('click', function () {
                var win = window.open("/user/popup/edit-profile.aspx", "profile", "left=0,top=o,width=445,height=440,toolbar=no,scrollbars=no");
                win.focus();
            });

            $('#btn_set_my_favorite').on('click', function () {
                var win = window.open("/user/popup/favoriteTheaters.aspx?ismycgv=true", "url", "left=0,top=o,width=645,height=370,toolbar=no,scrollbars=no");
                win.focus();
            });

            $('#view_usergrade').on('click', function () {
                GetUserGradeList(this);
                return false;
            });

            function GetUserGradeList(_this) {

                var url = '/common/ajax/user.aspx/GetUserGradeList_2017';
                var data = null;
                var callback = function (result) {
                    app.log(result);

                    var $std = $(_this),
                    options = {
                        '$target': $std,
                        'html': $('#temp_view_usergrade').html(),
                        'position': 'absolute',
                        'mask': 'none'
                    };
                    app.instWin.add(options);

                    var $tbody = $('#mytable > tbody:last'),
                        $tr1 = $('#tempUserGradeTbodyTr1')
                    //  $tr2 = $('#tempUserGradeTbodyTr2');
                    $.each(result, function (i, v) {

                        $tbody.append("<tr><th scope='row'>" + v.YearMonthSub + "년" + v.MonthSub + "월" + "</th><td>" + v.GradeCode + "</td></tr>");

                    });
                }
                app.ajax().get({ dataType: 'json', url: url, data: data, contentType: "application/json; charset=utf-8", successHandler: callback });
            }
            //개인화영역스킵
            $('#skipPersoninfo').on('click', function () {
                var $ctn = $('#menu');
                $ctn.attr({
                    tabIndex: -1
                }).focus();
                return false;
            });
            //mycgv 메뉴스킵
            $('#skipMycgvMenu').on('click', function () {
                var $ctn = $('#mycgv_contents');
                $ctn.attr({
                    tabIndex: -1
                }).focus();
                return false;
            });

            //my cgv 상단영역 skip처리
            var isGoContainer = "True";
            if (isGoContainer == "True") {
                location.href = location.href + "#contaniner";
            }

        });
    })(jQuery);
    //]]>
</script>
</div>

            
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
    <div class="fixedBtn_wrap topBtn">
     
        <a href="/ticket/" class="btn_fixedTicketing">예매하기</a>
        
        <a href="#none" class="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동"></a>
    </div>
    
    <!-- E 예매하기 및 TOP Fixed 버튼 -->
	
    <!-- S Footer -->
    <footer>
		<!-- footer_area (s) -->
		
<div id="BottomWrapper" class="sect-ad">
    <iframe src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Bottom" width="100%" height="240" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
</div>
<ul class="policy_list">
    <li><a href="http://corp.cgv.co.kr/company/" target="_blank">회사소개</a></li>
    <li><a href="http://corp.cgv.co.kr/company/sustainabilityStrategy/strategy.aspx" target="_blank">지속가능경영</a></li>
    <li><a href="http://corp.cgv.co.kr/company/ir/financial/financial_list.aspx" target="_blank">IR</a></li>
    <li><a href="http://corp.cgv.co.kr/company/recruit/step/default.aspx" target="_blank">채용정보</a></li>
    <li><a href="http://corp.cgv.co.kr/company/advertize/ad_Default.aspx" target="_blank">광고/제휴/출점문의</a></li>
    <li><a href="http://www.cgv.co.kr/rules/service.aspx">이용약관</a></li>
    <li><a href="http://www.cgv.co.kr/rules/organized.aspx">편성기준</a></li>
    <li><a href="http://www.cgv.co.kr/rules/privacy.aspx"><strong>개인정보처리방침</strong></a></li>
    <li><a href="http://www.cgv.co.kr/rules/disclaimer.aspx">법적고지</a></li>
    <li><a href="http://www.cgv.co.kr/rules/emreject.aspx">이메일주소무단수집거부</a></li>
    <li><a href="http://corp.cgv.co.kr/company/ethicalManagement/ceoMessage.aspx" target="_blank">윤리경영</a></li>
    <li><a href="/company/cyberAudit.aspx" class="empha-red">사이버감사실</a></li>
</ul>
<article class="company_info_wrap">
    <section class="company_info">
        <address>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
        <dl class="company_info_list">
            <dt>대표이사</dt>
            <dd>허민회</dd>
            <dt>사업자등록번호</dt>
            <dd>104-81-45690</dd>
            <dt>통신판매업신고번호</dt>
            <dd>2017-서울용산-0662 <a href="#none" onclick="goFtc()" class="btn_goFtc">사업자정보확인</a><a></a></dd>
        </dl>
        <dl class="company_info_list">
            <dt>호스팅사업자</dt>
            <dd>CJ올리브네트웍스</dd>
            <dt>개인정보보호 책임자</dt>
            <dd>도형구</dd>
            <dt>대표이메일</dt>
            <dd>cjcgvmaster@cj.net</dd>
            
        </dl>
        <p class="copyright">© CJ CGV. All Rights Reserved</p>
    </section>
    <section class="familysite_wrap">
        <label for="familysite">CJ그룹 계열사 바로가기</label>
        <select id="familysite">
            <option value="" class="familysiteTitle">계열사 바로가기</option>
            <optgroup label="CJ그룹">
<option value="http://www.cj.net/">CJ주식회사</option>
</optgroup><optgroup label="식품 &amp; 식품서비스">
<option value="https://www.cj.co.kr/kr/index">CJ제일제당</option>
<option value="https://www.cjfoodville.co.kr/main.asp">CJ푸드빌</option>
<option value="http://www.cjfreshway.com/index.jsp">CJ프레시웨이</option>
</optgroup><optgroup label="생명공학">
<option value="https://www.cj.co.kr/kr/about/business/bio">CJ제일제당 BIO사업부문</option>
<option value="https://www.cj.co.kr/kr/about/business/bio">CJ Feed&amp;Card</option>
</optgroup><optgroup label="물류 &amp; 신유통">
<option value="https://www.cjlogistics.com/ko/main">CJ대한통운</option>
<option value="http://www.cjenc.co.kr/kr/Default.asp">CJ대한통운 건설부문</option>
<option value="https://www.oliveyoung.co.kr/store/company/brandStory.do">CJ올리브영</option>
<option value="https://www.cjolivenetworks.co.kr:449/">CJ올리브네트웍스</option>
<option value="https://www.cjoshopping.com:9002/index.asp">CJ ENM 커머스부문</option>
</optgroup><optgroup label="엔터테인먼트 &amp; 미디어">
<option value="https://www.cjenm.com/ko/">CJ ENM 엔터테인먼트부문</option>
<option value="http://corp.cgv.co.kr/">CJ CGV</option>
</optgroup>

        </select>
        <a href="#none" class="btn_familysite" onclick="goFamilySite()">GO</a>
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

        <div class="adFloat" style="display:block">

            <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Popicon" width="154" height="182" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" allowtransparency="true" id="ad_float1" title="광고-셰이프 오브 워터 사랑의 모양 " style="display: none;"></iframe>
        </div>
        <script type="text/javascript">            OpenAD();</script>
        <!-- //Float Ad -->
	</footer>
	<!-- E Footer -->

    <!-- Aside Banner :  -->
    <!--
	<div id="ctl00_ctl00_sect_person_right" class="sect-aside-banner" style="padding:0; margin:0; position:fixed; z-index:1;display:none">
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
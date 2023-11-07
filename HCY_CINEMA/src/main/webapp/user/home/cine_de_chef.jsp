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
    <meta name="keywords" content="HCY, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Hcy hcy, 예매, 상영작">
    <meta name="description" content="HCY는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. HCY홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다.">
    <meta property="og:site_name" content="영화 그 이상의 감동. HCY">
    <meta id="ctl00_og_title" property="og:title" content="HCY | 영화 그 이상의 감동. HCY">
    
    
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/Theater/Theater/2014/1211/CGVgangnam.jpg">
    <link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="http://localhost/HCY_CINEMA/common/images/favicon.png" type="image/x-icon">
    <title id="ctl00_headerTitle">HCY극장 &lt; 특별관</title>
    <link rel="shortcut icon" type="image/x-icon" href="http://localhost/HCY_CINEMA/common/images/favicon.png">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css">
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css">
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css">
    <link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css">    
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css">
    
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-SSGE1ZCJKG&amp;cx=c&amp;_slc=1"></script><script type="text/javascript" async="" src="http://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="http://www.googletagmanager.com/gtag/js?id=G-559DE9WSKZ&amp;l=dataLayer&amp;cx=c"></script><script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NNNFR3"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script type="text/javascript" src="/common/js/extraTheaters.js"></script>
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
    

    <!--/각페이지 Header End--> 
    <script type="text/javascript">
        //<![CDATA[
        _TRK_CP = "/극장/CGV극장";

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

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>    
<div id="cgvwrap">
    
    
    <div class="cgv-ad-wrap" id="cgv_main_ad">
        <div id="TopBarWrapper" class="sect-head-ad">
            <div class="top_extend_ad_wrap">
                <div class="adreduce" id="adReduce">                    
                    <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@TopBar_EX" width="100%" height="80" title="" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner"></iframe>
                </div> 
                <div class="adextend" id="adExtend"></div>
            </div><!-- //.top_extend_ad_wrap -->
        </div>    
    </div>    
	
      <!-- S Header
        Description
        - class 'nav' 에 class 'active' 추가시 서브메뉴노출
        - class 'nav' 에 class 'fixed' 추가시 상단고정되며 스타일 변경됨
     -->
	<c:import url="../include/headerContents.jsp"/>
	<!-- E Header -->
<style>
#contaniner .contents{height: auto;}
</style>
<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

		<!-- Contents Area -->
		 <div id="contents" class="">
        
            
            <!-- Contents Start -->
			
            
            <!--/ Contents End -->
		 </div>
<!-- S Contaniner -->
<div id="contaniner">

        <!-- 상단 띠베너-->
        <article class="special_detail_top">  <div class="contents">      <div class="img_wrap" data-scale="false">          <img src="http://img.cgv.co.kr/WebApp/contents/specialTheater/list1/16844574779050.png" alt="쉐프가 있는 영화관" onerror="errorImage(this)">      </div>      <strong class="special_detail_title">CINE de CHEF</strong>      <span class="special_detail_subTitle">쉐프가 있는 영화관<span>  </span></span></div></article>
        <!-- BI 리스트-->
        <!-- 유닛관리-->
        <article class="specialtheater_detail_edit_wrap"><div class="contents cdc"><strong class="specialtheater_detail_edit_title tAlignC">For Your Very Special Moment</strong> <span class="specialtheater_detail_edit_context tAlignC"> 미국의 신문왕 윌리엄 랜돌프 허스트는 가장 소중한 손님을 모실 때,<br>
그의 개인 전용 영화관에서 최고의 쉐프들이 준비하는 만찬과 함께 영화의 즐거움을 나누었다고 합니다.<br>
이제 씨네드쉐프가 50년 전 그 곳에 명사들이 경험했던 특별한 초대의 시간에 진정한 품격을 더합니다.<br>
꿈이 현실로 이루어지는 씨네드쉐프에서 소중한 분들과 함께 최고의 가치를 경험하십시오. </span> <strong class="specialtheater_detail_edit_title_kr borderT">씨네드쉐프 압구정</strong> <span class="specialtheater_detail_edit_context">서로 다른 컨셉의 프리미엄 상영관과 밝고 부드러운 인테리어로 구성된 70여석의 레스토랑, 그리고 소규모 모임을 원하는 고객들을 위한 4개의 전용 공간으로 구성되어 있습니다.</span>
<div class="specialtheater_detail_theaterInfo_wrap">
<div class="specialtheater_detail_theaterInfo_img_wrap"><img alt="씨네드쉐프 압구정 사진1" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_00.jpg"> <img alt="씨네드쉐프 압구정 사진2" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_01.jpg"></div>
</div>
<strong class="specialtheater_detail_edit_title_kr">씨네드쉐프 용산</strong> <span class="specialtheater_detail_edit_context">수준급 쉐프의 크리에이티브가 돋보이는 '모던 유러피안 올데이 다이닝' 레스토랑 및 미국 3대 스페셜티 커피 '인텔리젠시아'를 즐길 수 있는 카페를 통해 당신에게 특별한 순간을 선사합니다.</span>

<div class="specialtheater_detail_theaterInfo_wrap">
<div class="specialtheater_detail_theaterInfo_img_wrap"><img alt="씨네드쉐프 용산 사진1" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_10.jpg"> <img alt="씨네드쉐프 용산 사진2" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_11.jpg"></div>
</div>
<strong class="specialtheater_detail_edit_title_kr">씨네드쉐프 센텀시티</strong> <span class="specialtheater_detail_edit_context">200석 규모의 탁 트인 공간에 미니멀하고 심플하면서도 품격있는 인테리어가 돋보이는 레스토랑, 그리고 2개의 상영관과 독립된 다이닝 룸으로 구성되어 있습니다.</span>

<div class="specialtheater_detail_theaterInfo_wrap">
<div class="specialtheater_detail_theaterInfo_img_wrap"><img alt="씨네드쉐프 센텀시티 사진1" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_20.jpg"> <img alt="씨네드쉐프 센텀시티 사진2" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_21.jpg"></div>
</div>
<strong class="specialtheater_detail_edit_title_kr">씨네드쉐프 X 템퍼(TEMPUR)</strong> <span class="specialtheater_detail_edit_context">NASA(미 항공 우주국)의 비행사 보호용 소재로 유명한 프리미엄 매트리스&amp;베개 브랜드 ‘템퍼’와의 콜라보레이션으로 탄생한 세계 최초 리클라이닝 침대 영화관. 전 좌석에 머리, 상체, 다리의 각도가 자유자재로 조절되는 리클라이닝 전동 침대를 도입하여, 인체에 무리가 없는 최적의 편안함을 제공합니다.</span> <img alt="씨네드쉐프 X 템퍼(TEMPUR) 사진1" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_3.jpg"> <strong class="specialtheater_detail_edit_title_kr">씨네드쉐프 X 스트레스리스(STRESSLESS)</strong> <span class="specialtheater_detail_edit_context"> 노르웨이 라이프스타일로 탄생한 세계 최상의 편안함, 스트레스리스 STRESSLESS®는 직관적인 브랜드 이름이 담고 있는 의미 그대로 '스트레스 없는 편안함'을 선사하는 북유럽 대표 친환경 가구회사 EKORNES(에코르네스)의 프리미엄 리클라이너 브랜드입니다.<br>
이제 씨네드쉐프에서 행복지수 1위 노르웨이의 삶과 철학을 담은 스트레스리스와 함께 명품 휴식을 경험하십시오. </span> <img alt="씨네드쉐프 X 스트레스리스(STRESSLESS) 사진1" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_4.jpg"></div></article>
        <article class="specialtheater_detail_edit_wrap"><div class="contents cdc">
<section class="specialtheater_detail_edit_rentalInfo_wrap"><strong class="specialtheater_detail_title">대관안내</strong> <span class="specialtheater_detail_edit_context">기업체 초청 VIP 시사회 및 행사, 브랜드 발표 및 제품 시연 등의 프레젠테이션, 전시회, 패션쇼, 프라이빗파티, 사내 문화행사, 기자 간담회 등 대관 목적과 인원에 따라 최적의 메뉴 및 서비스 구성을 맞춤 상담 해 드립니다.</span>
<ul class="specialtheater_detail_edit_rentalInfo_tabTitle" data-type="cgvTab">
	<li class="active"><a href="#none">씨네드쉐프 압구정</a></li>
	<li><a href="#none">씨네드쉐프 용산</a></li>
	<li><a href="#none">씨네드쉐프 센텀시티</a></li>
</ul>

<ul class="specialtheater_detail_edit_rentalInfo_tabContent" data-type="cgvTabContent"><!-- D 씨네드쉐프 압구정 -->
	<li class="active">
	<div class="rentalInfo_tabContent_title">공간 구성</div>

	<table class="specialtheater_tableStyle">
		<colgroup>
			<col style="width:19.3%">
			<col style="width:80.7%">
		</colgroup>
		<tbody>
			<tr>
				<th class="tAlignL" scope="row">다이닝 홀</th>
				<td class="tAlignL">46석 규모의 메인 홀</td>
			</tr>
			<tr>
				<th class="tAlignL" scope="row">프라이빗 룸</th>
				<td class="tAlignL">각 4~10석 규모의 4개의 프라이빗 룸</td>
			</tr>
		</tbody>
	</table>

	<div class="rentalInfo_tabContent_title">대관 상품
	<div class="rentalInfo_tabContent_title_btnR_wrap"><a href="http://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/brochure/[CINE de CHEF] GUIDE BOOK_apgujeong.pdf" target="_blank"><i class="cgvIcon system pdf">pdf</i>E-BROCHURE</a></div>
	</div>

	<table class="specialtheater_tableStyle">
		<colgroup>
			<col style="width:19.3%">
			<col style="width:28.83%">
			<col style="width:17.25%">
			<col style="width:16.25%">
			<col style="width:18.37%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">구분</th>
				<th scope="col">상품/메뉴</th>
				<th scope="col">가격</th>
				<th scope="col">수용인원</th>
				<th scope="col">비고</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>템퍼 시네마</td>
				<td>상영/기타행사 (1회 2시간 기준)</td>
				<td>1회 / 150만원</td>
				<td>30인</td>
				<td rowspan="2">상영관 메뉴 별도</td>
			</tr>
			<tr>
				<td>스트레스리스 시네마</td>
				<td>상영/기타행사 (1회 2시간 기준)</td>
				<td>1회 / 207만원</td>
				<td>46인</td>
			</tr>
			<tr>
				<td rowspan="2">레스토랑</td>
				<td>런치</td>
				<td>1회 / 5만원 부터</td>
				<td rowspan="2">최대 76인</td>
				<td rowspan="2">코스메뉴 별도협의<br>
				(음료, 주류 별도)</td>
			</tr>
			<tr>
				<td class="borderL">디너</td>
				<td>1회 / 7만원 부터</td>
			</tr>
			<tr>
				<td>부대서비스</td>
				<td colspan="4">상영관 빔 프로젝트, 노트북, 포디움, 마이크, 레이저포인터 등</td>
			</tr>
		</tbody>
	</table>

	<div class="rentalInfo_tabContent_title">이용 안내</div>

	<ul class="cdcc_inner_list">
		<li>기업체 VIP 초청 행사, 제품 발표, 전시회, 패션쇼, 프라이빗 파티, 사내문화행사, 기자 간담회 등 다양한 대관 상품 기획이 가능합니다.</li>
		<li>상영관과 레스토랑 동시에 대관 가능하며 행사 성격에 맞게 메뉴 구성이 가능합니다.</li>
		<li>행사 성격 및 상품에 따라 가격은 변동될 수 있습니다.</li>
		<li>씨네드쉐프 압구정 이용시 발렛주차가 가능합니다.(단 발렛 서비스비는 별도입니다.)</li>
	</ul>

	<div class="btnB_wrap"><a class="btn_receptionInquiries" href="http://www.cgv.co.kr/support/lease/default.aspx">대관문의접수</a></div>

	<div class="cdc_address">02.3446.0541-2 /
	<address>서울시 강남구 신사동 602번지 신관 B5F</address>
	</div>
	</li>
	<!-- D 씨네드쉐프 용산 -->
	<li>
	<div class="rentalInfo_tabContent_title">공간 구성</div>

	<table class="specialtheater_tableStyle">
		<colgroup>
			<col style="width:19.3%">
			<col style="width:80.7%">
		</colgroup>
		<tbody>
			<tr>
				<th class="tAlignL" scope="row">다이닝 홀</th>
				<td class="tAlignL">74석 규모의 메인 홀</td>
			</tr>
			<tr>
				<th class="tAlignL" scope="row">프라이빗 룸</th>
				<td class="tAlignL">각 10석 규모의 2개 프라이빗 룸<br>
				2개의 룸은 개별 또는 통합 사용 가능 (최대 20석)</td>
			</tr>
		</tbody>
	</table>

	<div class="rentalInfo_tabContent_title">대관 상품
	<div class="rentalInfo_tabContent_title_btnR_wrap"><a href="http://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/brochure/[CINE de CHEF] GUIDE BOOK_yongsan.pdf" target="_blank"><i class="cgvIcon system pdf">pdf</i>E-BROCHURE</a></div>
	</div>

	<table class="specialtheater_tableStyle">
		<colgroup>
			<col style="width:19.3%">
			<col style="width:28.83%">
			<col style="width:17.25%">
			<col style="width:16.25%">
			<col style="width:18.37%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">구분</th>
				<th scope="col">상품/메뉴</th>
				<th scope="col">가격</th>
				<th scope="col">수용인원</th>
				<th scope="col">비고</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>템퍼 시네마</td>
				<td rowspan="2">상영/기타행사 (1회 2시간 기준)</td>
				<td>1회 / 250만원</td>
				<td>50인</td>
				<td rowspan="2">상영관 메뉴 별도</td>
			</tr>
			<tr>
				<td>스트레스리스 시네마</td>
				<td>1회 / 280만원</td>
				<td>64인</td>
			</tr>
			<tr>
				<td rowspan="2">레스토랑</td>
				<td>런치</td>
				<td>1회 / 5만원 부터</td>
				<td rowspan="2">최대 110인</td>
				<td rowspan="2">코스메뉴 별도협의<br>
				(음료, 주류 별도)</td>
			</tr>
			<tr>
				<td class="borderL">디너</td>
				<td>1회 / 7만원 부터</td>
			</tr>
			<tr>
				<td>부대서비스</td>
				<td colspan="4">상영관/레스토랑 빔프로젝트, 노트북, 포디움, 마이크, 레이저포인터 등</td>
			</tr>
		</tbody>
	</table>

	<div class="rentalInfo_tabContent_title">이용 안내</div>

	<ul class="cdcc_inner_list">
		<li>기업체 VIP 초청 행사, 제품 발표, 전시회, 패션쇼, 프라이빗 파티, 사내문화행사, 기자 간담회 등</li>
		<li>다양한 대관 상품 기획이 가능합니다.</li>
		<li>상영관과 레스토랑 동시에 대관 가능하며 행사 성격에 맞게 메뉴 구성이 가능합니다.</li>
		<li>행사 성격 및 상품에 따라 가격은 변동될 수 있습니다.</li>
		<li>씨네드쉐프 용산아이파크몰 이용 시 5시간까지 무료주차 가능합니다.</li>
	</ul>

	<div class="btnB_wrap"><a class="btn_receptionInquiries" href="http://www.cgv.co.kr/support/lease/default.aspx">대관문의접수</a></div>

	<div class="cdc_address">02.2012.3793 /
	<address>서울시 용산구 한강대로 23길 55 아이파크몰 동관 6층</address>
	</div>
	</li>
	<!-- D 씨네드쉐프 센텀시티 -->
	<li>
	<div class="rentalInfo_tabContent_title">공간 구성</div>

	<table class="specialtheater_tableStyle">
		<colgroup>
			<col style="width:19.3%">
			<col style="width:80.7%">
		</colgroup>
		<tbody>
			<tr>
				<th class="tAlignL" scope="row">다이닝 홀</th>
				<td class="tAlignL">140석 규모의 메인 홀</td>
			</tr>
			<tr>
				<th class="tAlignL" scope="row">프라이빗 룸</th>
				<td class="tAlignL">각 12석 규모의 5개 프라이빗 룸<br>
				3개의 룸은 개별 또는 통합 사용 가능 (12~36석)</td>
			</tr>
		</tbody>
	</table>

	<div class="rentalInfo_tabContent_title">대관 상품
	<div class="rentalInfo_tabContent_title_btnR_wrap"><a href="http://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/brochure/[CINE de CHEF] GUIDE BOOK_centum.pdf" target="_blank"><i class="cgvIcon system pdf">pdf</i>E-BROCHURE</a></div>
	</div>

	<table class="specialtheater_tableStyle">
		<colgroup>
			<col style="width:19.3%">
			<col style="width:28.83%">
			<col style="width:17.25%">
			<col style="width:16.25%">
			<col style="width:18.37%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">구분</th>
				<th scope="col">상품/메뉴</th>
				<th scope="col">가격</th>
				<th scope="col">수용인원</th>
				<th scope="col">비고</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>템퍼 시네마</td>
				<td rowspan="2">상영/기타행사 (1회 2시간 30분 기준)</td>
				<td>1회 / 145만원</td>
				<td>30인</td>
				<td rowspan="2">상영관 메뉴 별도</td>
			</tr>
			<tr>
				<td>스트레스리스 시네마</td>
				<td>1회 / 250만원</td>
				<td>60인</td>
			</tr>
			<tr>
				<td rowspan="2">레스토랑</td>
				<td>런치</td>
				<td>1회 / 6만원 부터</td>
				<td>다이닝 홀 140인</td>
				<td rowspan="2">코스메뉴 별도협의<br>
				(음료, 주류 별도)</td>
			</tr>
			<tr>
				<td class="borderL">디너</td>
				<td>1회 / 7만원 부터</td>
				<td>프라이빗 룸 최대 12~36인</td>
			</tr>
			<tr>
				<td>부대서비스</td>
				<td colspan="4">상영관/레스토랑 빔프로젝트, 노트북, 포디움, 마이크, 레이저포인터 등</td>
			</tr>
		</tbody>
	</table>

	<div class="rentalInfo_tabContent_title">이용 안내</div>

	<ul class="cdcc_inner_list">
		<li>기업체 VIP 초청 행사, 제품 발표, 전시회, 패션쇼, 프라이빗 파티, 사내문화행사, 기자 간담회, 하우스 웨딩 등 다양한 대관 상품 기획이 가능합니다.</li>
		<li>상영관과 레스토랑 동시에 대관 가능하며 행사 성격에 맞게 메뉴 구성이 가능합니다.</li>
		<li>행사 성격 및 상품에 따라 가격은 변동될 수 있습니다.</li>
		<li>씨네드쉐프 센텀시티 이용시 4시간까지 무료 주차가 가능합니다.(신세계백화점 주차장 이용)</li>
	</ul>

	<div class="btnB_wrap"><a class="btn_receptionInquiries" href="http://www.cgv.co.kr/support/lease/default.aspx">대관문의접수</a></div>

	<div class="cdc_address">051.745.2880-1 /
	<address>부산시 해운대구 센텀남대로 35 (우동, 신세계백화점 서관 5F)</address>
	</div>
	</li>
</ul>
</section>

<section class="specialtheater_detail_edit_usedInfo_wrap"><strong class="specialtheater_detail_title">이용안내</strong>

<div class="specialtheater_detail_edit_usedInfo_title"><strong>Fine Dining</strong> 특별호텔 출신의 수석 쉐프가 선보이는 French &amp; Italian Cuisine</div>

<div class="specialtheater_detail_edit_usedInfo_menu_wrap">
<div class="cdc_menu"><img alt="씨네드쉐프 압구정" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_apgujeong.png">
<div class="cdc_store_wrap">
<p class="cdc_store_title"><strong>씨네드쉐프 압구정</strong>French &amp; Italian Cuisine</p>

<dl class="cdc_store_info_list1 type1">
	<dt>상층</dt>
	<dd>4개의 Private Room (4~10인석)</dd>
	<dt>하층</dt>
	<dd>50석 규모의 스타일리시한 메인 홀</dd>
	<dd class="full"><a href="http://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/menu/cinedechefApgujungMenu_InfoDown.pdf" target="_blank"><i class="cgvIcon system pdf">pdf</i>일반메뉴보기</a> <a href="http://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/menu/CinedechefApgujungWineInfoDown.pdf" target="_blank"><i class="cgvIcon system pdf">pdf</i>와인메뉴보기</a></dd>
</dl>

<dl class="cdc_store_info_list2">
	<dt>위치</dt>
	<dd>서울시 강남구 압구정로 30길 45</dd>
	<dt>문의 및 예약</dt>
	<dd>02-3446-0541~2<br>
	(AM 10:00 ~ PM 09:00)</dd>
	<dt>주차</dt>
	<dd>영화 또는 식사 이용 시 3시간 무료<br>
	영화와 식사 함께 이용 시 5시간 무료<br>
	(단, 발렛서비스비 별도)</dd>
</dl>
</div>
</div>

<div class="cdc_menu"><img alt="씨네드쉐프 센텀시티" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_centum.png">
<div class="cdc_store_wrap">
<p class="cdc_store_title"><strong>씨네드쉐프 센텀시티</strong>French &amp; Italian Cuisine</p>

<dl class="cdc_store_info_list1">
	<dt>HALL</dt>
	<dd>140석 규모의 메인 홀</dd>
	<dt>ROOM</dt>
	<dd>각 12석 규모의 5개 프라이빗 룸,<br>
	3개 룸은 개별 또는 통합 사용 가능 (12~36인석)</dd>
	<dd class="full"><a href="http://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/menu/CinedechefCentumMenu_InfoDown.pdf" target="_blank"><i class="cgvIcon system pdf">pdf</i>일반메뉴보기</a> <a href="http://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/menu/CinedechefCentumWineInfoDown.pdf" target="_blank"><i class="cgvIcon system pdf">pdf</i>와인메뉴보기</a></dd>
</dl>

<dl class="cdc_store_info_list2">
	<dt>위치</dt>
	<dd>부산시 해운대구 센텀남대로 35<br>
	(우동, 신세계백화점 5F)</dd>
	<dt>문의 및 예약</dt>
	<dd>051-745-2880~1<br>
	(AM 11:00 ~ PM 09:00)<br>
	PM 08:00 라스트오더</dd>
	<dt>주차</dt>
	<dd>티켓 또는 영수증 소지 후,<br>
	신세계백화점 주차장 입구<br>
	무인 주차 정산기를 통한 사전 정산 진행<br>
	영화 또는 식사 이용 시 3시간 무료<br>
	영화와 식사 함께 이용 시 6시간 무료</dd>
</dl>
</div>
</div>

<div class="cdc_menu"><img alt="씨네드쉐프 용산아이파크몰" src="https://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/specialtheater_cdc_yongsan.png">
<div class="cdc_store_wrap">
<p class="cdc_store_title"><strong>씨네드쉐프 용산아이파크몰</strong>Contemporary All Day Dining</p>

<dl class="cdc_store_info_list1">
	<dt>HALL</dt>
	<dd>74석 규모의 메인 홀</dd>
	<dt>ROOM</dt>
	<dd class="letter">각 10석, 8석 규모의 2개 프라이빗 룸, 2개 룸 통합 사용 가능 (최대 20석)
	<p>* CAFE 및 BAR 좌석 보유 (각 9석, 8석)</p>
	</dd>
	<dd class="full"><a href="http://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/menu/CinedechefyongsanMenu_InfoDown.pdf" target="_blank"><i class="cgvIcon system pdf">pdf</i>일반메뉴보기</a> <a href="http://img.cgv.co.kr/resource_pc/images/specialtheater/cinedechef/menu/CinedechefyongsanWineInfoDown.pdf" target="_blank"><i class="cgvIcon system pdf">pdf</i>와인메뉴보기</a></dd>
</dl>

<dl class="cdc_store_info_list2">
	<dt>위치</dt>
	<dd>서울시 용산구 한강대로 23길 55,<br>
	아이파크몰 6층</dd>
	<dt>문의 및 예약</dt>
	<dd>02-2012-3793~4<br>
	(주중: AM 10:30 ~ PM 09:00<br>
	주말: AM 10:00 ~ PM 09:00)</dd>
	<dt>주차</dt>
	<dd>영화 이용 시 3시간 무료<br>
	식사 이용 시 2시간 무료<br>
	영화와 식사 함께 이용 시 5시간 무료<br>
	(달 주차장 4F, 5F 이용)</dd>
</dl>
</div>
</div>
</div>

<div class="rentalInfo_tabContent_title">이용 안내</div>

<ul class="cdcc_inner_list">
	<li>영화 관람료에는 식사가 포함되어 있지 않습니다.</li>
	<li>영화관람 시, 선택 가능한 다양한 웰컴 음료와 간단한 스낵이 제공됩니다.</li>
	<li>HCY 적립은 영화는 결제 금액의 5%, 식사는 결제 금액의 0.1%가 적립됩니다.</li>
	<li>영화는 HCY홈페이지와 모바일 앱을 통해 예매가 가능하며, 식사는 전화 예약 후 이용 가능합니다.</li>
</ul>
</section>
</div></article>

    </div>
    <!--/각페이지 Header End--> 
    <script type="text/javascript">
        $(document).ready(function () {
            var idx = "17";
            var biIdx = "2";
            

            $('.nav_menu > li > h2 > a').on({
                mouseenter:function(e){
                    var target = e.target;
                    $(target).parents('.nav_menu').find('.nav_overMenu').slideDown(function(){
                        $('.nav').addClass('active');  
                    });
                },
                click:function(e){
                    var target = e.target;
                    if(!$('.nav').hasClass('active')){
                        $(this).trigger('mouseenter');
                    }else{
                        $('.nav').trigger('mouseleave');
                    }
                }
            });

            $('.nav').on({
                mouseleave:function(e){
                    $(this).find('.nav_overMenu').slideUp(200, function(){
                        $('.nav').removeClass('active');
                    });
                }
            });

            $('.totalSearch_wrap input[type=text]').on({
                focusin:function(){
                    $('.totalSearch_wrap').addClass("active");
                }   
            });

            $('.btn_totalSearchAutocomplete_close').on({
                click:function(){
                    $('.totalSearch_wrap').removeClass("active");
                },
                focusout:function(e){
                //     $('.totalSearch_wrap').removeClass("active");
                
                }
            });

            $(this).on({
                scroll:function(e){
/* S GNB fixed */
                    var headerOffsetT = $('.header').offset().top;
                    var headerOuterH = $('.header').outerHeight(true);
                    var fixedHeaderPosY = headerOffsetT + headerOuterH;
                    var scrollT = $(this).scrollTop();
                    var scrollL = $(this).scrollLeft();

                    if(scrollT >= fixedHeaderPosY){
                        $('.nav').addClass('fixed');
                        $('.fixedBtn_wrap').addClass('topBtn');
                    }else{
                        $('.nav').removeClass('fixed');
                        $('.fixedBtn_wrap').removeClass('topBtn');
                    }

/* S > GNB fixed 좌우 스크롤
    Description
    - GNB가 fixed 되었을때 좌우 스크롤 되게 처리
*/
                    if($('.nav').hasClass('fixed')){
                        $('.nav').css({'left': -1 * scrollL})
                    }else{
                        $('.nav').css({'left':0})
                    }
/* E > GNB fixed 좌우 스크롤 */
/* S GNB fixed */
                }
            });

            $('.btn_gotoTop').on({
                click:function(){
                    $('html, body').stop().animate({
                        scrollTop: '0'
                    }, 400);
                }
            });

            
            var EVENT_MAX_LENGTH = 7;
            var eventSwiperLength = $('.specialtheater_title_list').find('.swiper-slide').length;
            
            if(eventSwiperLength > EVENT_MAX_LENGTH){
                var eventSwiper = new Swiper(".specialtheater_title_list", {
                    //loop:true,
                    slidesPerView: 'auto',
                    spaceBetween: 40,
                    slidesPerGroup: 7,
                    initialSlide :biIdx,              
                    loopFillGroupWithBlank: true,
                    navigation: {
                        nextEl: ".swiper-button-next",
                        prevEl: ".swiper-button-prev",
                    },
                    a11y: {
                        prevSlideMessage: '이전 슬라이드',
                        nextSlideMessage: '다음 슬라이드',
                    },
                });
            }else{
                $('.specialtheater_title_list').addClass('noneSlider');
            }


            function openFullscreen( el ) {
                if (el.requestFullscreen) {
                    el.requestFullscreen();
                } else if (el.webkitRequestFullscreen) { /* Safari */
                    el.webkitRequestFullscreen();
                } else if (el.msRequestFullscreen) { /* IE11 */
                    el.msRequestFullscreen();
                }
            }

            
            var MOVIE_MAX_LENGTH = 3;
            var movieSwiperLength = $('.specialMovie_detail_inner_list').find('.swiper-slide').length;

            if(movieSwiperLength > MOVIE_MAX_LENGTH){
                var movieChartSwiper = new Swiper(".specialMovie_detail_inner_list", {
                    slidesPerView: '3',
                    spaceBetween: 70,
                    slidesPerGroup: 3,
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
            }else{
                $('.specialMovie_detail_inner_list').addClass('noneSlider');
            }

            var EVENT_MAX_LENGTH = 3;
            var eventSwiperLength = $('.specialtheater_detail_event_list').find('.swiper-slide').length;
            
            if(eventSwiperLength > EVENT_MAX_LENGTH){
            

                var specialtheaterEventSwiper = new Swiper(".specialtheater_detail_event_list", {
                // autoplay: {
                //     delay: 2500,
                //     disableOnInteraction:false,
                // },
                slidesPerView: 3,
                spaceBetween: 24,
                //   slidesPerGroup: 3,
                loopFillGroupWithBlank: true,
                navigation: {
                    nextEl: ".event-button-next",
                    prevEl: ".event-button-prev",
                },
                a11y: {
                    prevSlideMessage: '이전 슬라이드',
                    nextSlideMessage: '다음 슬라이드',
                    slideLabelMessage: '총 {{slidesLength}}장의 슬라이드 중 {{index}}번 슬라이드 입니다.',
                },
                });
            }else{
                $('.specialtheater_detail_event_list').addClass('noneSlider');
            }

            $("[data-module-type='tab']").on({
                click:function(e){
                    var target = e.target;
                    var currentTarget = e.currentTarget;
                    var tagName = $(target)[0].tagName;

                    if(tagName == 'A'){
                        var activeIdx = $(target).parent('.specialtheater_detail_title').index();
                        $(target).addClass('active').parent('.specialtheater_detail_title').siblings().children('a').removeClass('active');
                        $(currentTarget).next('.tabContent_wrap').find('> div').eq(activeIdx).addClass('active').siblings().removeClass('active');
                    }
                }
            });

            
            var options = {}
            if(jQuery('.specialtheater_list .swiper-slide').length > 1){
                options = {
                    speed: 600,
                    parallax: true,
                    loop: true,
                    pagination: {
                        el: ".swiper-pagination",
                        type: "fraction",
                    },
                    navigation: {
                        nextEl: ".specialtheater_list-next",
                        prevEl: ".specialtheater_list-prev",
                    },
                    a11y: {
                        prevSlideMessage: '이전 슬라이드',
                        nextSlideMessage: '다음 슬라이드',
                        slideLabelMessage: '총 {{slidesLength}}장의 슬라이드 중 {{index}}번 슬라이드 입니다.',
                    },
                    on: {
                        init:function(){
                            var _this = this;

                            $(this.el).find('.swiper-slide .video_wrap video').on({
                                timeupdate:function(e){
                                    var currentTarget = e.currentTarget
                                    var currentTime = currentTarget.currentTime;
                                    var totalTime = currentTarget.duration;

                                    var per = currentTime / totalTime * 100;

                                    $(currentTarget).siblings('.timeLine_wrap').children('span').css({'width': per + '%'});
                                },
                                ended:function(e){
                                    var currentTarget = e.currentTarget;
                                    $(currentTarget).siblings('.video_controller_wrap').children('.btn_playStop').removeClass('active');
                                }
                            });

                            $('.video_controller_wrap').on({
                                click:function(e){
                                    var target = e.target;
                                    var btnType = $(target).data('btnType');

                                    if($(target)[0].tagName == 'A'){
                                        var isHasAcitve = $(target).hasClass('active');
                                        
                                        var vidObj = $(target).closest('.video_wrap').children('video');
                                        var vidObjHtml = vidObj.get(0);

                                        switch(btnType){
                                            case 'play':
                                                (isHasAcitve)?$(target).removeClass('active'):$(target).addClass('active');

                                                if(isHasAcitve){
                                                    $(target).text('Pause')
                                                    vidObjHtml.pause();
                                                }else{
                                                    $(target).text('Play');
                                                    vidObjHtml.play();
                                                }
                                            break;
                                            case 'sound':
                                                (isHasAcitve)?$(target).removeClass('active'):$(target).addClass('active');

                                                if(isHasAcitve){
                                                    $(target).text("Sound Off");
                                                    vidObjHtml.muted = true;
                                                }else{
                                                    $(target).text("Sound On");
                                                    vidObjHtml.muted = false;
                                                }
                                            break;
                                            case 'screen':
                                                openFullscreen( vidObjHtml );

                                                vidObj.on({
                                                    'fullscreenchange mozfullscreenchange webkitfullscreenchange msfullscreenchange':function(e){
                                                        var currentVidObj = $(e.target);
                                                        var isFullScreen = document.fullscreen;

                                                        if(document.fullscreen){ // fullscreen on
                                                        }else{  // fullscreen off 
                                                            var isMute = currentVidObj.get(0).muted;
                                                            var isPaused = currentVidObj.get(0).paused;

                                                            currentVidObj.off('fullscreenchange');

                                                            var btnSoundObj = $(this).siblings('.video_controller_wrap').children('.btn_soundOnOff');
                                                            var btnPlayObj = $(this).siblings('.video_controller_wrap').children('.btn_playStop');

                                                            if(isMute){
                                                                btnSoundObj.text("Sound Off");
                                                                btnSoundObj.removeClass('active');
                                                            }else{
                                                                btnSoundObj.text("Sound On");
                                                                btnSoundObj.addClass('active');
                                                            }

                                                            if(isPaused){
                                                                btnPlayObj.text('Pause');
                                                                btnPlayObj.removeClass('active');
                                                            }else{
                                                                btnPlayObj.text('Play');
                                                                btnPlayObj.addClass('active');
                                                            }
                                                        }
                                                    }
                                                });
                                            break;
                                        }
                                    }
                                }
                            });


                            if($(this.el).find('.swiper-slide-active').children().get(0).tagName == 'VIDEO'){
                                $(this.el).find('.swiper-slide-active').children('.video_wrap').children('video').get(0).onended = function(){
                                    _this.slideNext();
                                }
                            }
                        },
                        slideChange:function(){
                            var targetVideo = $(this.el).find('.swiper-slide').eq(this.realIndex).children('.video_wrap').children().get(0);
                            currentTheaterIdx = this.realIndex + 1;
                        }
                    }
                }
            }else{
                $('.specialtheater_list .specialtheater_list-prev, .specialtheater_list .specialtheater_list-next').hide(); 
                $('.specialtheater_list .swiper-wrapper').addClass( "disabled" );
                options = {
                    slidesPerView: 1,
                    centeredSlides: true,
                    spaceBetween: 0,
                    grabCursor: true,
                    pagination: {
                        el: '.ticket_pagination',
                        clickable: true,
                    },
                    loop:false,
                    autoplay: false,
                    on: {
                        init:function(){
                            var _this = this;

                            $(this.el).find('.swiper-slide .video_wrap video').on({
                                timeupdate:function(e){
                                    var currentTarget = e.currentTarget
                                    var currentTime = currentTarget.currentTime;
                                    var totalTime = currentTarget.duration;

                                    var per = currentTime / totalTime * 100;

                                    $(currentTarget).siblings('.timeLine_wrap').children('span').css({'width': per + '%'});
                                },
                                ended:function(e){
                                    var currentTarget = e.currentTarget;
                                    $(currentTarget).siblings('.video_controller_wrap').children('.btn_playStop').removeClass('active');
                                }
                            });

                            $('.video_controller_wrap').on({
                                click:function(e){
                                    var target = e.target;
                                    var btnType = $(target).data('btnType');

                                    if($(target)[0].tagName == 'A'){
                                        var isHasAcitve = $(target).hasClass('active');
                                        
                                        var vidObj = $(target).closest('.video_wrap').children('video');
                                        var vidObjHtml = vidObj.get(0);

                                        switch(btnType){
                                            case 'play':
                                                (isHasAcitve)?$(target).removeClass('active'):$(target).addClass('active');

                                                if(isHasAcitve){
                                                    $(target).text('Pause')
                                                    vidObjHtml.pause();
                                                }else{
                                                    $(target).text('Play');
                                                    vidObjHtml.play();
                                                }
                                            break;
                                            case 'sound':
                                                (isHasAcitve)?$(target).removeClass('active'):$(target).addClass('active');

                                                if(isHasAcitve){
                                                    $(target).text("Sound Off");
                                                    vidObjHtml.muted = true;
                                                }else{
                                                    $(target).text("Sound On");
                                                    vidObjHtml.muted = false;
                                                }
                                            break;
                                            case 'screen':
                                                openFullscreen( vidObjHtml );

                                                vidObj.on({
                                                    'fullscreenchange mozfullscreenchange webkitfullscreenchange msfullscreenchange':function(e){
                                                        var currentVidObj = $(e.target);
                                                        var isFullScreen = document.fullscreen;

                                                        if(document.fullscreen){ // fullscreen on
                                                        }else{  // fullscreen off 
                                                            var isMute = currentVidObj.get(0).muted;
                                                            var isPaused = currentVidObj.get(0).paused;

                                                            currentVidObj.off('fullscreenchange');

                                                            var btnSoundObj = $(this).siblings('.video_controller_wrap').children('.btn_soundOnOff');
                                                            var btnPlayObj = $(this).siblings('.video_controller_wrap').children('.btn_playStop');

                                                            if(isMute){
                                                                btnSoundObj.text("Sound Off");
                                                                btnSoundObj.removeClass('active');
                                                            }else{
                                                                btnSoundObj.text("Sound On");
                                                                btnSoundObj.addClass('active');
                                                            }

                                                            if(isPaused){
                                                                btnPlayObj.text('Pause');
                                                                btnPlayObj.removeClass('active');
                                                            }else{
                                                                btnPlayObj.text('Play');
                                                                btnPlayObj.addClass('active');
                                                            }
                                                        }
                                                    }
                                                });
                                            break;
                                        }
                                    }
                                }
                            });


                            if($(this.el).find('.swiper-slide-active').children().get(0).tagName == 'VIDEO'){
                                $(this.el).find('.swiper-slide-active').children('.video_wrap').children('video').get(0).onended = function(){
                                    _this.slideNext();
                                }
                            }
                        },
                        slideChange:function(){
                            var targetVideo = $(this.el).find('.swiper-slide').eq(this.realIndex).children('.video_wrap').children().get(0);
                            currentTheaterIdx = this.realIndex + 1;
                        }
                    }
                }
            }

            var specialtheaterListSwiper = new Swiper(".specialtheater_list", options);


        });
    </script>

		<!-- /Contents Area -->
	</div>
    
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
     
        <a href="http://localhost/HCY_CINEMA/user/ticketing/ticketing_main.jsp" class="btn_fixedTicketing">예매하기</a>
        
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

</body>
</html>
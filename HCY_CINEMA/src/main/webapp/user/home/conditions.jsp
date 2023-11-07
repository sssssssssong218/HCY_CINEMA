<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
    <meta id="ctl00_og_title" property="og:title" content="비밀번호 변경 < 로그인 | 영화 그 이상의 감동. HCY">
    
    
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png">
    <link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="http://localhost/HCY_CINEMA/common/images/favicon.png" type="image/x-icon">
    <title id="ctl00_headerTitle">개인정보 처리 방침 | 영화 그 이상의 감동. HCY</title>
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
    
    <!-- <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-SSGE1ZCJKG&amp;cx=c&amp;_slc=1"></script><script type="text/javascript" async="" src="http://www.googletagmanager.com/gtag/js?id=G-559DE9WSKZ&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="http://www.google-analytics.com/analytics.js"></script><script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NNNFR3"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script type="text/javascript" src="/common/js/extraTheaters.js"></script> -->
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
        _TRK_CP = "/회원서비스/로그인/비밀번호 변경";

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
    

    
<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/system.packed.js"></script><script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/system.packed.js"></script></head>
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
	
<jsp:include page="../include/headerContents.jsp"/>

	<!-- Contaniner -->
<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

		<!-- Contents Area -->
		 <div id="contents" class="">
        
            
            <!-- Contents Start -->
			

<div class="sect-rules">
    <h3> HCY CINEMA 이용약관 <span>  (v2.2) 2021/01/01개정</span></h3>
    <p>HCY CINEMA는 회원 여러분께서 사이트를 이용함에 있어 불미스러운 일을 방지하고 사전에 명확한 관계 정책을 수립하기 위해<br> 아래와 같은 이용약관을 규정하고 있습니다.</p>

    <!-- <button class="round black" style="float:right" id="print" type="button"><span>인쇄하기</span></button> -->
    
    <!-- 개인정보 처리방침 내용 -->
	<div class="edit_box" id="privateview"><article class="terms_link_list_wrap terms_wrap">
<h1>아래 항목을 선택 시 해당 내용으로 이동합니다.</h1>

<ol>
	<li><a href="#idx1">목적</a></li>
	<li><a href="#idx2">용어의 정의</a></li>
	<li><a href="#idx3">약관의 게시 및 개정</a></li>
	<li><a href="#idx4">HCY 서비스 이용약관과의 관계 등</a></li>
	<li><a href="#idx5">HCY CINEMA 회원 가입</a></li>
	<li><a href="#idx6">만 14세 미만 미성년자에 대한 특칙</a></li>
	<li><a href="#idx7">회원 정보의 변경</a></li>
	<li><a href="#idx8">회원 특전</a></li>
	<li><a href="#idx9">HCY CINEMA의 의무</a></li>
	<li><a href="#idx10">회원의 의무</a></li>
	<li><a href="#idx11">제재</a></li>
	<li><a href="#idx12">회원 탈퇴</a></li>
	<li><a href="#idx13">재가입의 제한</a></li>
	<li><a href="#idx14">HCY 포인트</a></li>
	<li><a href="#idx15">전자 예매권 및 전자 영수증 등</a></li>
	<li><a href="#idx16">개인정보 보호</a></li>
	<li><a href="#idx17">서비스에 대한 안내, 고충처리 및 분쟁해결 등</a></li>
	<li><a href="#idx18">이용자의 폭언 등 금지</a></li>
	<li><a href="#idx19">서비스 제공의 중지</a></li>
	<li><a href="#idx20">광고 등</a></li>
	<li><a href="#idx21">게시물</a></li>
	<li><a href="#idx22">손해배상</a></li>
	<li><a href="#idx23">HCY CINEMA의 면책</a></li>
	<li><a href="#idx24">통지 및 공지</a></li>
	<li><a href="#idx25">준거법 및 관할법원</a></li>
</ol>
</article>

<article class="terms_contents_wrap terms_wrap"><strong class="h0Style">- 제1장 총칙 -</strong>

<h1 id="idx1">제1조 목적</h1>

<p>본 약관은 에이치씨와이씨네마 주식회사(이하 "HCY CINEMA"라 합니다)가 제공하는 서비스 및 상품의 이용에 관한 제반 사항을 규정하는 것을 목적으로 합니다.</p>

<h1 id="idx2">제2조 용어의 정의</h1>

<p>본 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다.</p>

<ol class="terms_list_circleNum">
	<li>
	<ol class="noneSpace">
		<li>
		<h3>"서비스"라 함은 HCY CINEMA가 홈페이지 또는 어플리케이션, HCY의 영화상영관 및 여러 시설(로비, 부대시설 등 포함) 등을 통해 제공하는 영화 예매 서비스, 영화 관람 서비스, 상품 판매 서비스 및 기타 각종 서비스 및 안내, 정보제공 서비스 등을 말합니다.</h3>
		</li>
		<li>
		<h3>"이용자"라 함은 본 약관에 따라 HCY가 제공하는 서비스를 제공받는 회원 및 비회원을 말합니다.</h3>
		</li>
		<li>
		<h3>"HCY 회원"이라 함은 HCY 이용약관 가입 절차에 따라 HCY에 가입하여 정상적으로 HCY 서비스를 이용할 수 있는 권한을 부여 받은 고객을 말합니다. HCY 회원에 대한 자세한 정의 및 내용은 HCY 이용 약관에 따릅니다.</h3>
		<li>
		<h3>"회원"이라 함은 HCY 회원 중 HCY CINEMA에 개인정보를 제공하고 본 약관에 동의하여 회원등록을 한 자로서 HCY CINEMA가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.</h3>
		</li>
		<li>
		<h3>"비회원"이라 함은 HCY CINEMA 회원에 가입하지 않고 HCY CINEMA가 제공하는 서비스를 이용하는 자를 말합니다.</h3>
		</li>
		<li>
		<h3>"아이디(ID)"라 함은 회원의 식별과 서비스 이용을 위하여 회원이 정하고 회사가 승인하는 문자와 숫자의 조합을 의미합니다.</h3>
		</li>
		<li>
		<h3>"비밀번호"라 함은 회원이 등록한 아이디(ID)와 일치된 회원임을 확인하고 회원 자신의 개인정보를 보호하기 위하여 회원이 정한 문자, 숫자, 기호의 조합을 말합니다.</h3>
		</li>
		<li>
		<h3>"게시물"이라 함은 회사 또는 회원이 HCY CINEMA 홈페이지를 이용함에 있어서 게시한 부호, 문자, 음성, 음향, 화상, 동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.</h3>
		</li>
		<li>
		<h3>"매크로 프로그램"이란 지정된 명령을 수행하는 단순·반복적 작업을 자동화하여 처리하는 프로그램 등 통상적, 정상적인 사용 방법이 아닌 일체의 부정 사용 방법을 말합니다.</h3>
		</li>
	</ol>
	</li>
</ol>

<h1 id="idx3">제3조 약관의 게시 및 개정</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA는 본 약관의 내용을 이용자가 쉽게 확인할 수 있도록 HCY CINEMA 홈페이지(www.cgv.co.kr)에 게시하거나 연결화면을 제공하는 방법으로 게시하고 있습니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 본 약관에 명시되지 않은 서비스에 대한 내용을 HCY CINEMA 홈페이지 또는 어플리케이션을 통하여 공지합니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 「약관의 규제에 관한 법률」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「소비자기본법」 등 관련법령을 위반하지 않는 범위에서 이 약관을 개정할 수 있습니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA가 약관을 개정할 경우에는 개정약관의 내용과 시행일자를 명시하고, 그 시행일로부터 최소 7일 전 공지합니다. 단, 회원 자격의 제한, 회원 탈퇴 등 이용자에게 불리하거나 중대한 사항의 변경의 경우 최소 30일 전에 공지합니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA가 약관을 개정할 경우에는 개정 약관 공지 후 개정 약관의 적용에 대한 회원의 동의 여부를 확인합니다. 개정약관 공지 시 회원이 동의 또는 거부의 의사표시를 하지 않으면 승낙한 것으로 간주하겠다는 내용도 함께 공지한 경우에는 회원이 약관 시행일까지 명시적인 거부의사를 표시하지 않는다면 개정약관에 동의한 것으로 봅니다.</h2>
	</li>
	<li>
	<h2>회원이 개정 약관의 적용에 동의하지 않는 경우 HCY CINEMA 또는 회원은 서비스 이용 계약을 해지할 수 있습니다.</h2>
	</li>
</ol>

<h1 id="idx4">제4조 HCY 서비스 이용약관과의 관계 등</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY과 관련한 사항(HCY 회원가입, HCY 포인트 적립·사용, HCY 서비스 종료, HCY 약관의 개정 등)은 모두 「HCY 서비스 이용약관」에 따릅니다. 단, HCY과 관련하여 본 약관에서 특별히 규정하고 있는 내용은 본 약관이 우선 적용됩니다.</h2>
	<li>
	<h2>본 약관에 명시되지 않은 사항은 관련 법령 규정에 따릅니다.</h2>
	</li>
</ol>
<strong class="h0Style">- 제2장 HCY CINEMA 회원 -</strong>

<h1 id="idx5">제5조 HCY CINEMA 회원 가입</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>이용자는 HCY에서 정한 방법에 따라 HCY회원 가입 후 본 약관 및 개인 정보 제공에 대한 동의하는 의사표시를 함으로써 회원가입을 신청합니다.</h2>
	</li>
	<li>
	<h2>제1항 이용자의 신청에 대해 HCY CINEMA가 회원가입을 승낙함으로써 회원 가입이 완료됩니다. 단, 다음 각 호의 어느 하나에 해당하는 경우 이용자의 회원 가입 신청에 대해 승낙하지 않을 수 있습니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>가입신청자가 본 약관 제11조에 따른 제재를 받은 적이 있는 경우</h3>
		</li>
		<li>
		<h3>실명이 아니거나 타인의 명의를 이용하는 경우</h3>
		</li>
		<li>
		<h3>회원 가입을 위하여 필요한 사항을 미기재 또는 허위기재하는 경우</h3>
		</li>
		<li>
		<h3>이용자의 부정한 목적으로 가입신청을 한 경우 및 기타 사회통념상 회원 가입이 부적절하다고 판단되는 경우</h3>
		</li>
	</ol>
	</li>
	<li>
	<h2>제2항 단서에 따라 발생한 불이익에 대해서는 이용자가 모든 책임을 지며, HCY CINEMA는 책임을 지지 않습니다.</h2>
	</li>
</ol>

<h1 id="idx6">제6조 만 14세 미만 미성년자에 대한 특칙</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>만 14세 미만 미성년자는 부모 등 법정대리인의 동의 없이 회원가입을 할 수 없습니다.</h2>
	</li>
	<li>
	<h2>만 14세 미만 미성년자의 법정대리인은 아동에 대한 개인정보의 열람, 정정, 갱신을 요청하거나 회원가입에 대한 동의를 철회할 수 있습니다. 이 경우 HCY CINEMA는 지체없이 필요한 조치를 취합니다.</h2>
	</li>
</ol>

<h1 id="idx7">제7조 회원 정보의 변경</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>회원은 언제든지 자신의 개인정보를 열람, 수정할 수 있습니다. 이 경우 회원은 온라인으로 수정을 하거나 기타 방법으로 HCY CINEMA에 대하여 그 변경사항을 알려야 합니다.</h2>
	</li>
	<li>
	<h2>만 14세 미만 미성년자의 법정대리인은 아동에 대한 개인정보의 열람, 정정, 갱신을 요청하거나 회원가입에 대한 동의를 철회할 수 있습니다. 이 경우 HCY CINEMA는 지체없이 필요한 조치를 취합니다.</h2>
	</li>
</ol>

<h1 id="idx8">제8조 회원 특전</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA는 회원 중 HCY CINEMA가 정한 기준에 따라 회원에게 특별한 혜택을 부여할 수 있습니다. 구체적인 기준, 혜택 등에 관하여는 HCY CINEMA 홈페이지 또는 어플리케이션을 통하여 공지합니다.</h2>
	</li>
	<li>
	<h2>해당 기준, 혜택 등은 HCY CINEMA 정책에 따라 변경 등이 가능하며 이 경우 HCY CINEMA 홈페이지 또는 어플리케이션을 통하여 공지합니다.</h2>
	</li>
</ol>

<h1 id="idx9">제9조 HCY CINEMA의 의무</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA는 이용자가 편리하게 서비스를 이용할 수 있도록 최선을 다합니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 본 약관에서 정한 바에 따라 계속적이고 안정적인 서비스의 제공을 위하여 지속적으로 노력합니다. 다만, 전시, 사변, 천재지변, 감염병, 비상사태, 기술적 결함, 정전, 서비스 설비의 장애, 서비스 이용의 폭주, 기타 불가항력적 사유 또는 그 밖에 부득이한 경우 서비스를 일시 중단하거나 중지할 수 있습니다.</h2>
	</li>
</ol>

<h1 id="idx10">제10조 회원의 의무</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>회원은 본 약관에서 규정하는 사항과 개별 안내, 공지 등을 통하여 HCY CINEMA가 안내·공지하는 사항을 준수하여야 합니다.</h2>
	</li>
	<li>
	<h2>회원의 ID와 비밀번호에 관한 모든 관리 책임은 회원에게 있습니다. 회원에게 부여된 ID와 비밀번호의 관리소홀, 부정 사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.</h2>
	</li>
	<li>
	<h2>회원은 자신의 ID나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우 즉시 HCY CINEMA에 신고하여야 합니다. 해당 신고를 하지 않아 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.</h2>
	</li>
	<li>
	<h2>회원은 다음 각 호에 해당하는 행위를 하여서는 아니됩니다. 해당 행위로 인하여 발생한 회원 본인 또는 제3자의 손해에 대하여는 해당 행위를 한 회원이 모든 책임을 지며 HCY CINEMA는 책임을 지지 않습니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>타인의 개인정보, ID 또는 비밀번호를 도용하는 행위</h3>
		</li>
		<li>
		<h3>가입 시 허위 내용을 기재하거나 잘못 기재하는 행위</h3>
		</li>
		<li>
		<h3>회원 본인 외 제3자에게 서비스의 이용 권한, 기타 이용 계약상 지위를 양도, 증여, 담보 제공하는 행위</h3>
		</li>
		<li>
		<h3>서비스를 이용하여 영업활동을 하는 행위</h3>
		</li>
		<li>
		<h3>서비스 운영을 고의로 방해하는 행위</h3>
		</li>
		<li>
		<h3>HCY CINEMA의 영화상영관, 홈페이지, 어플리케이션 및 HCY CINEMA지정 위탁판매업자를 통한 영화 티켓 구입 외의 방법으로 영화 관람 티켓을 구매하는 행위</h3>
		</li>
		<li>
		<h3>매크로 프로그램을 사용하여 영화관람 티켓 구매 서비스를 이용하는 행위</h3>
		</li>
		<li>
		<h3>매크로 프로그램을 사용하여 HCY 포인트 부정적립 등 재산상 이익을 취득하는 행위</h3>
		</li>
		<li>
		<h3>매크로 프로그램을 사용하여 HCY CINEMA 홈페이지, 어플리케이션, SNS에 게시글(댓글을 포함한다)을 올리는 행위</h3>
		</li>
		<li>
		<h3>영화 티켓을 재판매하는 행위</h3>
		</li>
		<li>
		<h3>무단으로 관람하는 행위 등 정당한 대가를 지불하지 아니하고 서비스를 이용하는 행위</h3>
		</li>
		<li>
		<h3>다른 사람의 티켓, 영수증을 습득하여 포인트를 적립하거나 기타 HCY CINEMA나 HCY에서 정한 방법이 아닌 방법으로 포인트를 적립 또는 사용하는 행위</h3>
		</li>
		<li>
		<h3>포인트 적립이나 영리의 목적으로 영화 예매를 한 다음 다른 사람에게 대가를 받고 양도하거나 포인트를 적립 또는 사용하는 행위</h3>
		</li>
		<li>
		<h3>서비스의 안정적 운영을 방해할 목적으로 다량의 정보를 전송하는 행위</h3>
		</li>
		<li>
		<h3>광고성 정보를 게시, 전송하는 행위</h3>
		</li>
		<li>
		<h3>도박 사이트, 음란 사이트를 링크하거나 음란물, 기타 공공질서 및 미풍양속에 저해되는 내용을 게재하거나 유포하는 행위</h3>
		</li>
		<li>
		<h3>HCY CINEMA 또는 제3자의 지적재산권을 침해하는 행위</h3>
		</li>
		<li>
		<h3>서비스를 이용하여 얻은 정보를 HCY CINEMA의 사전 승낙 없이 복제 또는 유통시키거나, 출판 및 방송 등에 이용하거나, 기타 제3자에게 제공하는 행위</h3>
		</li>
		<li>
		<h3>제3자의 프라이버시를 침해하는 행위</h3>
		</li>
		<li>
		<h3>서비스 이용과 관련한 불법 행위</h3>
		</li>
		<li>
		<h3>기타 관계 법령, 공공질서 및 미풍양속에 저해되는 행위</h3>
		</li>
	</ol>
	</li>
</ol>

<h1 id="idx11">제11조 제재</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>회원이 제10조 제4항 각 호에 해당하는 행위를 하는 경우 HCY CINEMA는 사전통지 없이 서비스 이용 및 HCY 포인트 적립, 사용 등을 일시적으로 제한, 정지할 수 있습니다.</h2>
	</li>
	<li>
	<h2>회원이 제10조 제4항 각 호의 행위를 하는 경우 HCY CINEMA는 제1항의 제재 외에 다음 각 호와 같은 조치를 할 수 있습니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>회원에게 제10조 제4항 각 호의 행위에 대한 소명 요청</h3>
		</li>
		<li>
		<h3>제1호에 따른 회원의 소명 내용에 대한 사실 확인 및 검토, 판단</h3>
		</li>
		<li>
		<h3>회원의 소명 내용 및 해당 사안에 대한 객관적 자료를 종합적으로 판단한 후 사안에 따라 다음 각 목에 따른 제재 부과(병과 가능)</h3>

		<ol>
			<li>
			<h4 data-list-text="가">회원 자격 정지 (로그인 제한에 따라 포인트 사용 및 적립이 제한됨)</h4>
			</li>
			<li>
			<h4 data-list-text="나">회원 탈퇴</h4>
			</li>
			<li>
			<h4 data-list-text="다">부정 적립된 HCY 포인트 말소</h4>
			</li>
			<li>
			<h4 data-list-text="라">기타 HCY 포인트 부정 사용 및 적립 등으로 HCY CINEMA에게 발생한 손해 배상 청구</h4>
			</li>
		</ol>
		</li>
	</ol>
	</li>
	<li>
	<h2>HCY CINEMA는 본 조에 따른 조치와 별개로 민·형사 등의 법적인 조치를 취할 수 있습니다.</h2>
	</li>
	<li>
	<h2>본 조 제1항 및 제2항의 HCY CINEMA 조치에 대하여 회원은 이의신청을 할 수 있으며, HCY CINEMA가 회원의 이의가 정당하다고 인정하는 경우 HCY CINEMA는 해당 회원의 조치를 철회합니다.</h2>
	</li>
</ol>

<h1 id="idx12">제12조 회원 탈퇴</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>회원은 언제든지 탈퇴 신청을 할 수 있으며, 이 경우 HCY CINEMA는 회원 탈퇴를 처리합니다. HCY 회원 자격 유지 및 기타 HCY 제휴사와의 서비스는 HCY 이용약관을 따릅니다.</h2>
	<li>
	<h2>회원이 사망한 경우 HCY CINEMA는 해당 회원에 대해 탈퇴 처리합니다.</h2>
	</li>
	<li>
	<h2>HCY 회원 탈퇴 또는 HCY 회원 자격 상실이 된 경우 자동으로 HCY CINEMA에서 회원 탈퇴 됩니다.</h2>
	</li>
</ol>

<h1 id="idx13">제13조 재가입의 제한</h1>

<p>회원이 자발적으로 탈퇴하거나 제11조에 따라 회원자격이 상실된 회원의 경우 서비스 부정 이용 및 추가적인 피해 방지를 위하여 탈퇴 또는 상실된 날로부터 1개월 간 회원 가입이 불가합니다.</p>
<strong class="h0Style">- 제3장 HCY 포인트 -</strong>

<h1 id="idx14">제14조 HCY 포인트</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA는 HCY의 제휴사로, HCY 회원은 HCY 이용약관에서 정한 바에 따라 HCY 포인트의 적립, 사용이 가능합니다.</h2>
	<li>
	<h2>HCY CINEMA는 HCY CINEMA 서비스 이용 시 HCY 포인트의 적립, 사용, 제한 등과 관련한 제반 사항을 HCY CINEMA 홈페이지 또는 어플리케이션을 통하여 공지합니다.</h2>
	</li>
	<li>
	<h2>HCY 포인트와 관련한 제반 사항은 HCY 및 HCY CINEMA의 영업 정책, 제휴 업체의 사정, 경제사정의 변동 등에 따라 변경 내지 폐지될 수 있으며, 이 경우 HCY CINEMA는 해당 내용을 사전에 공지합니다.</h2>
	</li>
</ol>
<strong class="h0Style">- 제4장 환경 보호, 개인정보 보호 -</strong>

<h1 id="idx15">제15조 전자 예매권 및 전자 영수증 등</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA는 환경보호, 개인정보 보호 등을 위하여 영화 예매권 및 상품 등 구매 영수증을 전자로 제공하는 것을 원칙으로 합니다. 전자 예매권 및 전자 영수증은 지류 예매권, 지류 영수증과 같은 효력(구매 사실의 입증, 교환·반품 등 증빙)을 가지며 회원 또는 비회원은 HCY CINEMA 홈페이지 또는 어플리케이션을 통해 본인의 예매권 및 구매 영수증을 확인할 수 있습니다.</h2>
	</li>
	<li>
	<h2>제1항에도 불구하고 이용자가 지류 영수증의 발급을 요청하는 경우 또는 HCY CINEMA정책에 따라 HCY CINEMA는 지류 영수증을 제공할 수 있습니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 다음 각 호의 어느 하나에 해당하는 경우 전자 예매권 및 전자 영수증 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다. 이 경우 HCY CINEMA는 지류 영수증을 발급합니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등이 발생한 경우</h3>
		</li>
		<li>
		<h3>전자 예매권, 전자 영수증 서비스 제공을 위한 설비의 보수 등 공사를 하는 경우</h3>
		</li>
		<li>
		<h3>정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우</h3>
		</li>
		<li>
		<h3>전자 예매권, 전자 영수증 서비스 제공업자와의 계약종료 등 HCY CINEMA의 제반사정으로 전자 예매권 및 전자 영수증 서비스를 유지할 수 없는 경우</h3>
		</li>
		<li>
		<h3>회원이 부정한 방법 등으로 전자 예매권, 전자 영수증 발급을 요청하는 경우</h3>
		</li>
		<li>
		<h3>회원의 사정으로 신용카드회사 내지 기타 결제기관의 결제 승인이 거절되는 경우</h3>
		</li>
		<li>
		<h3>전시, 사변, 천재지변, 감염병, 비상사태 또는 기타 불가항력적 사유가 있는 경우</h3>
		</li>
	</ol>
	</li>
	<li>
	<h2>HCY CINEMA는 12개월 이내 사용 내역에 대해서 전자 예매권 및 전자 영수증을 제공합니다. 이 기간 이전 내역에 대해 영수증을 원하시는 이용자는 HCY CINEMA 홈페이지 또는 고객센터를 통해 요청하셔야 합니다.</h2>
	</li>
</ol>

<h1 id="idx16">제16조 개인정보 보호</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA는 개인정보 보호 관련 법령에서 정한 바에 따라 개인정보를 수집, 이용, 관리 등을 합니다.</h2>
	</li>
	<li>
	<h2>개인정보 수집, 이용, 관리 등에 관한 자세한 사항은 개인정보 처리방침에 따릅니다.</h2>
</ol>
<strong class="h0Style">- 제5장 소비자 분쟁해결, 손해배상 등 -</strong>

<h1 id="idx17">제17조 서비스에 대한 안내, 고충처리 및 분쟁해결 등</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA는 각 서비스 이용에 필요한 사항에 대해 개별 사항 마다 적절한 방법으로 공지합니다.</h2>
	</li>
	<li>
	<h2>이용자는 각 서비스 이용 시 제1항에 따라 HCY CINEMA가 공지하는 사항을 충분히 숙지하신 후 서비스를 이용하여야 합니다. 이를 숙지하지 않아 발생한 불이익에 대해 HCY CINEMA는 책임을 지지 않습니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 이용자의 편의를 고려하여 이용자의 의견이나 불만을 제시하는 방법을 HCY CINEMA 홈페이지에서 안내합니다. HCY CINEMA는 이러한 이용자의 의견이나 불만을 처리하기 위한 전담조직을 운영합니다.</h2>
	<span class="linkTo">-&nbsp;&nbsp;&nbsp;HCY CINEMA고객센터: 1544-1122</span></li>
	<li>
	<h2>HCY CINEMA는 소비자 분쟁이 발생한 경우 개별 서비스 정책, 관련 법령(「영화 및 비디오물의 진흥에 관한 법률」 등) 및 「소비자분쟁해결기준」, 「영화관람 표준약관」, 「신유형 상품권 표준약관」, 「지류형 상품권 표준약관」 등에 따라 분쟁을 해결합니다.</h2>
	</li>
</ol>

<h1 id="idx18">제18조 이용자의 폭언 등 금지</h1>

<p>이용자는 HCY CINEMA 임직원, HCY CINEMA 협력회사의 임직원에 대해 폭언, 폭행, 그 밖에 적정 범위를 벗어난 신체적·정신적 고통을 유발하는 행위를 하여서는 아니됩니다. 해당 행위가 발생할 경우 HCY CINEMA는 「산업안전보건법」을 비롯하여 관계 법령에 따라 모든 조치를 취할 수 있습니다.</p>

<h1 id="idx19">제19조 서비스 제공의 중지</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA는 다음 각 호 중 어느 하나에 해당하는 경우 서비스의 전부 또는 일부의 제공을 중지할 수 있습니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>서비스 제공에 필요한 설비의 보수 등 공사로 부득이한 경우</h3>
		</li>
		<li>
		<h3>「전기통신사업법」에 따른 기간통신사업자가 전기통신 서비스를 중지하는 경우</h3>
		</li>
		<li>
		<h3>기술적 결함, 정전, 서비스 설비의 장애, 서비스 이용의 폭주 또는 기타 사유 등으로 정상적인 서비스 이용에 지장이 있는 경우</h3>
		</li>
		<li>
		<h3>전시, 사변, 천재지변, 감염병, 비상사태 또는 기타 불가항력적 사유가 있는 경우</h3>
		</li>
	</ol>
	</li>
	<li>
	<h2>HCY CINEMA는 제1항에 따라 서비스의 이용이 제한되거나 중지된 때에는 그 사유 및 중지기간 등을 회원에게 안내합니다.</h2>
	</li>
</ol>

<h1 id="idx20">제20조 광고 등</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA가 이용자에게 제공하는 서비스의 투자기반 일부는 광고게재를 통한 수익으로부터 나옵니다. HCY CINEMA의 서비스를 이용하고자 하는 자는 서비스 이용 시 노출되는 광고게재에 대해 동의하는 것으로 간주됩니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 이용자에게 혜택안내 수신동의를 얻어 영리목적의 광고성 e-mail 및 SMS, DM을 발송하거나 별도의 안내 권유 전화를 할 수 있으며 이용자가 수신거부의사를 표시할 경우 이를 중지합니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 HCY CINEMA의 영화상영관, 홈페이지, 어플리케이션, SNS 상에 게재되어 있거나 이를 통한 광고주의 판촉활동에 이용자가 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다.</h2>
	</li>
</ol>

<h1 id="idx21">제21조 게시물</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA의 홈페이지, 어플리케이션, SNS 등에 게시한 게시물(댓글, 관람평 등 포함, 이하 동일합니다)의 내용에 대한 권리와 책임은 게시자에게 있습니다.</h2>
	</li>
	<li>
	<h2>이용자는 위 제1항의 게시물을 HCY CINEMA의 사전 허락 없이 수집, 이용, 배포 등을 할 수 없습니다.</h2>
	</li>
	<li>
	<h2>이용자는 HCY CINEMA의 홈페이지, 어플리케이션, SNS 등에 다음 각 호에 해당하는 내용을 작성, 게시 등을 할 수 없으며, 다음 각 호에 해당하는 경우 HCY CINEMA는 사전 통지 없이 해당 게시물을 삭제할 수 있습니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>욕설 등과 같은 비속어, 타인을 비방하거나 명예를 훼손하는 내용, 모욕을 주는 내용 등이 들어간 게시물</h3>
		</li>
		<li>
		<h3>음란물, 음란물 광고, 음란사이트 링크 등 공공질서 및 미풍양속에 위반되는 게시물</h3>
		</li>
		<li>
		<h3>범죄적 행위에 결부된다고 인정되는 내용 등 기타 관계법령에 위반되는 게시물</h3>
		</li>
		<li>
		<h3>HCY CINEMA 및 제3자의 저작권 등 권리를 침해하는 게시물</h3>
		</li>
		<li>
		<h3>HCY CINEMA가 정한 게시기간이나 용량을 초과하는 게시물</h3>
		</li>
		<li>
		<h3>HCY CINEMA의 사전 승인을 받지 않은 일체의 광고 게시물</h3>
		</li>
		<li>
		<h3>기타 HCY CINEMA의 서비스 내지 게시판 등의 목적, 취지, 성격에 부합하지 않는 게시물</h3>
		</li>
	</ol>
	</li>
</ol>

<h1 id="idx22">제22조 손해배상</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA가 고의 또는 중과실로 이용자에게 손해를 끼친 경우, HCY CINEMA는 해당 손해를 배상합니다. 단, 손해배상액은 서비스 이용료를 기준으로 합니다.</h2>
	</li>
	<li>
	<h2>이용자가 본 약관 또는 법령 등을 위반하여 HCY CINEMA에 손해를 끼친 경우, 이용자는 HCY CINEMA에 대하여 그 손해를 배상할 책임이 있습니다.</h2>
	</li>
</ol>

<h1 id="idx23">제23조 HCY CINEMA의 면책</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>전시, 사변, 천재지변, 감염병, 비상사태, 기술적 결함, 정전, 서비스 설비의 장애, 서비스 이용의 폭주 기타 불가항력적 사유 등으로 서비스를 제공할 수 없는 경우에는 책임이 면제됩니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 이용자의 귀책사유로 인한 서비스의 중지, 이용장애 및 계약해지에 대하여 책임이 면제됩니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 기간통신 사업자가 전기통신서비스를 중지하거나 정상적으로 제공하지 아니하여 이용자에게 손해가 발생한 경우에 대해서 HCY CINEMA의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 사전에 공지된 서비스 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 서비스가 중지되거나 장애가 발생한 경우에 대해서 HCY CINEMA의 고의 또는 중대한 과실이 없는 한 책임이 면책됩니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 이용자의 컴퓨터, 휴대폰 등 전자기기의 환경으로 인하여 발생하는 제반 문제 또는 HCY CINEMA의 고의 또는 중대한 과실이 없는 네트워크 환경으로 인하여 발생하는 문제에 대해서 책임이 면제됩니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 이용자 또는 제3자가 서비스 내, 웹사이트 또는 어플리케이션 상에 게시 또는 전송한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 대해서는 HCY CINEMA의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 이용자 상호간 또는 이용자와 제3자간에 서비스를 매개로 발생한 분쟁에 대해 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA가 제공하는 서비스 중 무료인 서비스 이용과 관련하여 이용자에게 발생한 어떠한 손해에 관하여도 책임을 지지 않습니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA가 제공하는 서비스 중 일부의 서비스는 다른 사업자가 제공하는 서비스를 통하여 제공될 수 있으며, HCY CINEMA는 다른 사업자가 제공하는 서비스로 인하여 발생한 손해 등에 대해서는 HCY CINEMA의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 이용자의 컴퓨터, 휴대폰 등 전자기기의 오류에 의한 손해가 발생한 경우 또는 신상정보 및 전자우편주소를 부정확하게 기재하거나 미기재하여 손해가 발생한 경우에 대하여 HCY CINEMA의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 관련 법령, 정부 정책 등에 따라 서비스 또는 서비스 이용시간 등을 제한할 수 있으며, 이러한 제한에 따라 발생하는 서비스 이용 관련 제반사항에 대해서는 책임이 면제됩니다.</h2>
	</li>
</ol>

<h1 id="idx24">제24조 통지 및 공지</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>HCY CINEMA가 회원에게 개별 통지를 하는 경우 회원이 회원가입 시 입력한 전자우편주소 등으로 할 수 있고, 그 전자우편주소 등으로 발송한 때 효력이 발생합니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA는 7일 이상 HCY CINEMA 홈페이지를 통해 공지함으로써 제1항의 통지에 갈음할 수 있습니다.</h2>
	</li>
</ol>

<h1 id="idx25">제25조 준거법 및 관할법원</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>본 약관과 관련한 법률관계에 대해서는 대한민국법률을 적용합니다.</h2>
	</li>
	<li>
	<h2>HCY CINEMA와 이용자 간에 발생한 분쟁으로 소송이 제기되는 경우 대한민국 법원을 관할 법원으로 합니다. 단, 구체적인 관할은 민사소송법상 관할 법원에 따릅니다.</h2>
	</li>
</ol>

<ul class="subTerms_list">
	<li>[부칙] (시행일) 본 약관은 2004년 02월 14일부터 시행합니다.</li>
	<li>[부칙] (2004. 06. 29. 개정) 본 약관은 2004년 6월 29일부터 시행합니다.</li>
	<li>[부칙] (2005. 11. 10. 개정) 본 약관은 2005년 11월 10일부터 시행합니다.</li>
	<li>[부칙] (2006. 04. 01. 개정) 본 약관은 2006년 4월 1일부터 시행합니다.</li>
	<li>[부칙] (2007. 10. 17. 개정) 본 약관은 2007년 10월 17일부터 시행합니다.</li>
	<li>[부칙] (2009. 08. 31. 개정) 본 약관은 2009년 8월 31일부터 시행합니다.</li>
	<li>[부칙] (2010. 09. 02. 개정) 본 약관은 2010년 9월 2일부터 시행합니다.</li>
	<li>[부칙] (2011. 08. 01. 개정) 본 약관은 2011년 8월 1일부터 시행합니다.</li>
	<li>[부칙] (2013. 12. 01. 개정) 본 약관은 2013년 12월 1일부터 시행합니다.</li>
	<li>[부칙] (2014. 08. 01. 개정) 본 약관은 2014년 8월 1일부터 시행합니다.</li>
	<li>[부칙] (2014. 11. 01. 개정) 본 약관은 2014년 11월 1일부터 시행합니다.</li>
	<li>[부칙] (2014. 12. 01. 개정) 본 약관은 2014년 12월 1일부터 시행합니다.</li>
	<li>[부칙] (2015. 08. 10. 개정) 본 약관은 2015년 8월 10일부터 시행합니다.</li>
	<li>[부칙] (2015. 08. 18. 개정) 본 약관은 2015년 8월 18일부터 시행합니다.</li>
	<li>[부칙] (2016. 03. 15. 개정) 본 약관은 2016년 3월 15일부터 시행합니다.</li>
	<li>[부칙] (2016. 09. 30. 개정) 본 약관은 2016년 9월 30일부터 시행합니다.</li>
	<li>[부칙] (2018. 03. 15. 개정) 본 약관은 2018년 3월 15일부터 시행합니다.</li>
	<li>[부칙] (2019. 01. 01. 개정) 본 약관은 2019년 1월 1일부터 시행합니다.</li>
	<li>[부칙] (2019. 09. 01. 개정) 본 약관은 2019년 9월 1일부터 시행합니다.</li>
	<li>[부칙] (2019. 10. 07. 개정) 본 약관은 2019년 10월 7일부터 시행합니다.</li>
	<li>[부칙] (2019. 11. 26. 개정) 본 약관은 2019년 11월 26일부터 시행합니다.</li>
	<li>[부칙] (2021. 01. 01 개정) 본 약관은 2021년 1월 1일부터 시행합니다.</li>
</ul>
</article></div> 
        
    <div class="rules-stit1">
        서비스 이용약관 개정 이력
    </div>

	<ul class="rules-after">
        <li><a href="http://www.cgv.co.kr/rules/service.aspx?idx=44"><span>서비스 이용약관(v2.2)</span><span class="date">2021/01/01개정</span></a></li><a href="http://www.cgv.co.kr/rules/service.aspx?idx=44">
	</a></ul><a href="http://www.cgv.co.kr/rules/service.aspx?idx=44">
</a></div><a href="http://www.cgv.co.kr/rules/service.aspx?idx=44">
<script type="text/javascript">

        $(function () {
        // 개인정보 처리방침 내용
        Privacydetail();
    });

    // 아래 항목을 선택 시 해당 내용으로 이동합니다. 클릭시
    $('.list-rules > ol > li > a').click(function () {
        // CMS등록시 태그 속성이 적용되지 않아, title과 동일한 태그 조회
        var divEl = $('#privateview p:contains("' + $(this).attr("title") + '")');
        var divY = divEl.offset().top;
        $("html").animate({ scrollTop: divY }, 100);
    });

    // 개인정보 처리방침 내용
    function Privacydetail() {
        $.ajax({
            type: "POST",
            url: "/rules/privacy.aspx/GetPrivacydetail",
            data: "{Idx : '44'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var json = $.parseJSON(data.d);
                // 1. 개인정보 처리방침 내용
                $("#privateview").html(json[0].contents);
            },
            error: function (request, error) {
             /*    alert("code:" + request.statusText + request.readyState + "\n" + "error:" + error); */
            }
        });
    }

//<![CDATA[
    (function ($) {
        $(function () {
            var $print = $('#print')
            $($print).on('click', function () {
                window.print();
            });
        });
    })(jQuery);
//]]>
</script>


            
            <!--/ Contents End -->
		 </a></div><a href="http://www.cgv.co.kr/rules/service.aspx?idx=44">
		<!-- /Contents Area -->
	</a></div>


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
                    <img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline2.jpg" alt="HCY 홈페이지는 고객님께서 사용중인 MS Windows XP에서 정상적인 서비스 이용이 어려울 수 있으며, OS업데이트를 권장합니다.">
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
                    <img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline1.jpg" alt="HCY 홈페이지는 Internet Explorer 9이상에서 최적의 서비스 이용이 가능합니다. IE9 이하 브라우저에서 이용 시 정상적인 서비스 이용이 어려울 수 있으며, 브라우저 업그레이드 하시기를 권장합니다.">
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
<jsp:include page="../include/footer.jsp"/>
	<!-- E Footer -->

    <!-- Aside Banner :  -->
    <!--
	<div id="ctl00_sect_person_right" class="sect-aside-banner" style="padding:0; margin:0; position:fixed; z-index:1;display:none">
		<div class="aside-content-top">
			<div class="aside-content-btm">
				<a href="/theaters/"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif" alt="HCY CINEMA THEATER" /></a>
				<a href="/arthouse/"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif" alt="HCY CINEMA arthouse" /></a>
				<a href="/theaters/special/"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif" alt="HCY CINEMA SPECIAL" /></a>

				<a href="/user/mycgv/reserve/" class="required-login" data-url="/user/mycgv/reserve/"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif" alt="HCY CINEMA TICKET INFO" /></a>
				<a href="/discount/discountlist.aspx"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif" alt="HCY CINEMA DISCOUNT INFO" /></a>
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
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
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon">
    <title id="ctl00_headerTitle">개인정보 처리 방침 | 영화 그 이상의 감동. HCY</title>
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
			
<!-- 실컨텐츠 시작 -->
<div class="wrap-login">
            <div class="sect-user">

                <h3>회원가입</h3>
                <p>
                    회원가입 여부를 확인합니다.<br>
                    회원가입 여부는 이름, 법정생년월일, 전화번호를 기준으로 확인합니다.  
                </p>

        <!-- ******************************************** 수정된 부분 시작! ******************************************** -->
                        <div class="cols-enterform find_0826 find_pw_id">
                            <div class="col-confirm">
                               <div class="sect-rules">
    <h3>개인정보 처리방침 <span>  (v8.1) 2023/08/01개정</span></h3>
    <p>씨제이씨지브이(주) 는 회원님의 개인정보를 매우 중요시하며, <strong>정보통신망 이용촉진 및 정보보호 등에 관한 법률,</strong><br>개인정보 보호법 등 관련 법률을 준수하고 있습니다.<br>씨제이씨지브이(주) 는 개인정보 처리방침을 통하여 회원님께서 제공한 개인정보가 어떠한 용도와 방식으로 이용되고 있으며,<br> 개인정보보호를 위해어떠한 조치가 취해지고 있는지 알려드립니다.</p>

    
    <!-- 개인정보 처리방침 내용 -->
	<div class="edit_box" id="privateview"><article class="terms_link_list_wrap terms_wrap">
<h1>아래 항목을 선택 시 해당 내용으로 이동합니다.</h1>

<ol>
	<li><a href="#privacy1">개인정보의 처리목적 및 수집항목</a></li>
	<li><a href="#privacy2">개인정보 수집 방법 및 수집 동의</a></li>
	<li><a href="#privacy3">목적 외 사용 및 제3자에 대한 제공과 그 제공에 대한 동의</a></li>
	<li><a href="#privacy4">개인정보 처리의 위탁</a></li>
	<li><a href="#privacy5">회원의 개인정보보호 책임자</a></li>
	<li><a href="#privacy6">쿠키에 의한 개인정보 수집</a></li>
	<li><a href="#privacy7">정보주체의 권리와 행사 방법</a></li>
	<li><a href="#privacy8">동의철회(회원탈퇴) 방법</a></li>
	<li><a href="#privacy9">개인정보의 파기</a></li>
	<li><a href="#privacy10">만 14세 미만 아동의 개인정보보호</a></li>
	<li><a href="#privacy11">개인정보보호를 위한 기술적, 관리적 대책</a></li>
	<li><a href="#privacy12">가명정보의 처리</a></li>
	<li><a href="#privacy13">개인위치정보의 처리</a></li>
	<li><a href="#privacy14">영상정보처리기기 운영 및 관리 방침</a></li>
	<li><a href="#privacy15">이용자의 권리와 의무</a></li>
	<li><a href="#privacy16">개인정보 침해 관련 상담 및 신고</a></li>
	<li><a href="#privacy17">정책 변경에 따른 공지 의무</a></li>
</ol>
</article>

<article class="terms_contents_wrap terms_wrap">
<h1 id="privacy1">제1조 개인정보의 처리목적 및 수집항목</h1>

<p>씨제이씨지브이㈜는 보다 다양하고 특성화된 고객 서비스 제공을 위하여 다음과 같이 고객 개인의 정보를 처리하고 있습니다.</p>

<ol class="terms_list_circleNum">
	<li>
	<h2>수집하는 개인정보 항목</h2>

	<ol>
		<li>
		<h3>&lt;필수 입력(수집) 항목&gt;</h3>

		<table border="1" cellpadding="1" cellspacing="1">
			<colgroup>
				<col style="width:60%">
				<col style="width:40%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">수집 목적</th>
					<th scope="col">수집 항목</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>ㆍ회원제 서비스 제공을 위한 본인 식별 및 실명 여부 확인</td>
					<td>성명, 아이디, 생년월일, 휴대폰번호, CI(연계정보)</td>
				</tr>
				<tr>
					<td>ㆍ포인트 적립, 사용, 정기결제 상품 결제 알림 등 멤버십 필수 서비스 제공</td>
					<td>성명, 아이디, 생년월일, 휴대폰번호, 성별</td>
				</tr>
				<tr>
					<td>ㆍ고지 사항 전달 및 불만 처리 등을 위한 원활한 의사소통 경로의 확보</td>
					<td>성명, 아이디, 생년월일, 휴대폰번호, 이메일 주소</td>
				</tr>
				<tr>
					<td>ㆍ고객 응대/VOC 처리</td>
					<td>성명, 아이디, 생년월일, 휴대폰번호, 이메일 주소</td>
				</tr>
				<tr>
					<td>ㆍ불량회원 부정 이용 방지 및 비인가 사용 방지</td>
					<td>성명, 아이디</td>
				</tr>
				<tr>
					<td>ㆍ사이트 프로그램 편성을 위한 기초 자료</td>
					<td>성명, 아이디</td>
				</tr>
				<tr>
					<td>ㆍ만 14세 미만 회원의 경우 회원 가입 처리를 위한 법정대리인의 동의 여부 확인 및 추후 법정대리인에 대한 본인 확인</td>
					<td>성명, 아이디, 생년월일, 휴대폰번호, CI(연계정보), 만14세 미만 회원의 법정대리인 성명 및 CI(연계정보)</td>
				</tr>
			</tbody>
		</table>
		</li>
		<li>
		<h3>&lt;필수 입력(수집) 항목&gt; (비회원)</h3>

		<table border="1" cellpadding="1" cellspacing="1">
			<colgroup>
				<col style="width:60%">
				<col style="width:40%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">수집 목적</th>
					<th scope="col">수집 항목</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>ㆍ비회원 예매 서비스 제공<br>
					ㆍ이용자 식별, 요금 정산</td>
					<td>법정생년월일, 휴대폰번호, 비밀번호</td>
				</tr>
				<tr>
					<td>ㆍ비회원 패스트오더 서비스 제공</td>
					<td>휴대폰번호, 비밀번호</td>
				</tr>
			</tbody>
		</table>

		<p>* 비회원 예매 시 수집한 정보는 관람 또는 취소 후 1주일까지 보유</p>

		<p>* 패스트오더 서비스 이용 시 수집한 정보는 주문 전송 후 2년간 보유</p>
		</li>
		<li>
		<h3>&lt;모바일 서비스 이용 시 필수 수집 항목&gt;</h3>

		<table border="1" cellpadding="1" cellspacing="1">
			<colgroup>
				<col style="width:60%">
				<col style="width:40%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">수집 목적</th>
					<th scope="col">수집 항목</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>ㆍ고지사항 전달 및 불만 처리 등을 위한 원활한 의사소통 경로의 확보<br>
					ㆍ개인정보 침해 사고에 대한 대비, 분쟁 조정을 위한 기록 보존</td>
					<td>단말기 모델명, 이동 통신사 정보, 하드웨어 ID</td>
				</tr>
			</tbody>
		</table>
		</li>
		<li>
		<h3>&lt;선택 입력(수집) 항목&gt;</h3>

		<table border="1" cellpadding="1" cellspacing="1">
			<colgroup>
				<col style="width:60%">
				<col style="width:40%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">수집 목적</th>
					<th scope="col">수집 항목</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>ㆍ마케팅, 홍보 등을 위한 고객 분석</td>
					<td>선호 극장(자주 가는 CGV), 주소, 결혼 여부, 선호 장르, 주중 선호 요일, 선호 시간대, 동반 관람인, 총 관람 인원수, 생년월일, 성별, 문자/이메일/앱푸시(알람) 광고 수신 동의 여부</td>
				</tr>
				<tr>
					<td>ㆍ새로운 서비스 및 상품, 이벤트 등의 마케팅 정보 안내</td>
					<td>휴대폰 번호, 이메일 주소, 문자/이메일/앱푸시(알람) 광고 수신동의 여부</td>
				</tr>
				<tr>
					<td>ㆍ경품 배송에 대한 정확한 배송 정보 확보</td>
					<td>휴대폰 번호, 주소, 전화번호(직장 또는 자택), 문자/이메일/앱푸시(알람) 광고 수신동의 여부</td>
				</tr>
				<tr>
					<td>ㆍ신규 서비스 개발 및 맞춤형 서비스 제공(극장 이벤트, 예매오픈 알림 등)</td>
					<td>휴대폰 번호, 선호 극장(자주 가는 CGV), 결혼 여부, 기념일, 선호 장르, 주중 선호 요일, 선호 시간대, 동반 관람인, 총 관람 인원수, 생년월일, 성별, 문자/이메일/앱푸시(알람) 광고 수신동의 여부</td>
				</tr>
				<tr>
					<td>ㆍ통계학적 특성에 따른 맞춤 서비스 제공</td>
					<td>생년월일, 성별, 결혼 여부, 휴대폰 번호, 이메일 주소, 문자/이메일/앱푸시(알람) 광고 수신동의 여부</td>
				</tr>
				<tr>
					<td>ㆍ개인 프로필 설정</td>
					<td>프로필 사진, 닉네임</td>
				</tr>
				<tr>
					<td>ㆍ고지사항 전달 등의 비상 연락</td>
					<td>휴대폰 번호, 이메일 주소, 주소, 전화번호(직장 또는 자택), 문자/이메일/앱푸시(알람) 광고 수신동의 여부</td>
				</tr>
				<tr>
					<td>ㆍ공개된 게시판 서비스의 이미지 등록 및 익명성 보장</td>
					<td>프로필 사진, 닉네임</td>
				</tr>
				<tr>
					<td>ㆍ극장 주요 사항 고지(신규 극장 오픈 및 폐점 안내 등)</td>
					<td>선호 극장(자주 가는 CGV), 주소, 휴대폰 번호, 이메일 주소, 문자/이메일/앱푸시(알람) 광고 수신동의 여부</td>
				</tr>
				<tr>
					<td>ㆍ설문 조사 시 통계분석</td>
					<td>소득 수준, 성별, 나이, 직업, 취미, 결혼 여부, 자녀수, 자녀 나이, 학력, 거주지역(시/도단위), 이용 행태(매표/매점), 서비스 만족도 평가정보(인적/물리적)</td>
				</tr>
			</tbody>
		</table>

		<p>* 선택 항목은 입력하지 않으셔도 서비스 이용에 제한이 없습니다.</p>
		</li>
		<li>
		<h3>&lt;서비스 이용 또는 사업 처리 과정에서 생성/수집되는 정보&gt;</h3>

		<table border="1" cellpadding="1" cellspacing="1">
			<colgroup>
				<col style="width:60%">
				<col style="width:40%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">수집 목적</th>
					<th scope="col">수집 항목</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>ㆍ개인정보 침해 사고에 대한 대비, 분쟁 조정을 위한 기록 보존</td>
					<td>서비스 이용기록, 접속로그, 접속 IP 정보</td>
				</tr>
				<tr>
					<td>ㆍ마케팅, 홍보 등을 위한 고객 분석<br>
					ㆍ신규 서비스 개발 및 맞춤 서비스 제공<br>
					<br>
					*본 처리방침 제7조에 상술</td>
					<td>쿠키 (성명, 아이디, 나이, 회원상태, IPIN, 이메일, 휴대전화 번호, MAC, IP, 단말기 정보 등)</td>
				</tr>
				<tr>
					<td>ㆍ혜택 및 서비스 개발을 위한 통계분석 및 연구조사</td>
					<td>광고식별자 (ADID/IDFA)</td>
				</tr>
				<tr>
					<td>ㆍ상품 구매에 대한 결제</td>
					<td>상품 및 결제 기록</td>
				</tr>
				<tr>
					<td>ㆍ스마트 영수증 서비스 제공을 위한 기록 수집<br>
					ㆍ패스트오더 서비스 및 통합결제 서비스 제공을 위한 기록 수집</td>
					<td>상품 및 결제 정보, 쿠폰 정보, 픽업자 정보</td>
				</tr>
			</tbody>
		</table>
		</li>
		<li>
		<h3>&lt;이용자 동의 후 추가 수집 항목&gt;</h3>

		<table border="1" cellpadding="1" cellspacing="1">
			<colgroup>
				<col style="width:60%">
				<col style="width:40%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">수집 목적</th>
					<th scope="col">수집 항목</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>ㆍ포토플레이(舊 포토티켓) 서비스 이용 시</td>
					<td>본인 사진 및 이미지<br>
					(제작 완료 후 2년까지 보관 후 삭제)</td>
				</tr>
				<tr>
					<td>ㆍ자주 쓰는 신용카드 서비스 이용 시</td>
					<td>신용카드 정보</td>
				</tr>
				<tr>
					<td>ㆍ미소지기 채용 지원 시</td>
					<td>성명, 생년월일, 자택 전화번호, 휴대폰번호, 이메일, 주소, 희망 근무지역, 학력사항, 장애 구분, 보훈대상 구분, 자기소개</td>
				</tr>
				<tr>
					<td>ㆍ광고/제휴/출점 문의 시</td>
					<td>성명, 휴대폰번호, 이메일 주소</td>
				</tr>
				<tr>
					<td>ㆍ위치 정보를 활용한 서비스 및 혜택 안내 동의 시</td>
					<td>단말 제공 위치 정보 API</td>
				</tr>
				<tr>
					<td>ㆍ선물하기 서비스 이용 시(비회원 포함)</td>
					<td>수령인 정보: 성명, 휴대폰번호</td>
				</tr>
				<tr>
					<td>ㆍCGV PLUS 서비스 이용 시</td>
					<td>신용카드 정보, 생년월일, 정기결제일</td>
				</tr>
				<tr>
					<td>ㆍMOINTS 서비스 이용 시</td>
					<td>성명, 아이디, 생년월일, 휴대폰번호, 신용카드 정보</td>
				</tr>
			</tbody>
		</table>

		<p>* 회원가입 시 수집하지 않았던 개인정보를 추가로 수집할 때에 이용자들에게 고지하고 동의를 받는 경우를 말하며, 관련된 각 서비스 이용에 동의하신 경우 필수로 수집됩니다.</p>
		</li>
	</ol>
	<br>
	개인정보의 보유 및 이용기간은 제9조에 상술되어 있습니다.</li>
</ol>

<h1 id="privacy2">제2조 개인정보 수집 방법 및 수집 동의</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>씨제이씨지브이㈜는 서비스 계약의 성립 및 이행에 필요한 최소한의 개인정보를 수집합니다.</h2>
	</li>
	<li>
	<h2>씨제이씨지브이㈜는 이용자의 개인 식별이 가능한 개인정보를 수집하는 때에는 반드시 아래의 적법한 절차에 따라 당해 이용자의 동의를 받습니다.</h2>

	<ol>
		<li>
		<h3>개인정보 수집 방법</h3>
		<span>씨제이씨지브이㈜는 CJ ONE 홈페이지와 CGV 홈페이지 및 모바일, 현장, 로그분석, 쿠키를 통해 회원정보를 수집하고 있습니다.</span></li>
		<li>
		<h3>개인정보 수집에 대한 동의 절차</h3>
		<span>회원의 개인정보 수집과 관련하여 씨제이씨지브이㈜ 및 CJ ONE의 개인정보처리방침 또는 이용약관을 통해 그 내용을 고지하고 있으며, 회원에게 수집하는 개인정보의 항목과 이용목적 및 보유기간, 거부권에 대해 고지 후 회원이 내용에 대해 「동의」 버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다. CGV는 서비스 제공에 반드시 필요한 필수 항목과 부가적인 서비스 제공을 위한 선택 항목을 구분하여 고객 동의를 받고 있으며, 선택 항목은 서비스 내용 및 목적에 따라 별도 동의를 받고 있습니다.</span></li>
	</ol>
	</li>
</ol>

<h1 id="privacy3">제3조 목적 외 사용 및 제3자에 대한 제공과 그 제공에 대한 동의</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>씨제이씨지브이㈜는 회원의 동의가 있거나 관련 법률의 규정에 의한 경우를 제외하고는 어떠한 경우에도 본 개인정보처리방침에서 고지한 범위를 넘어 회원의 개인정보를 이용하거나 제공하지 않습니다.</h2>
	</li>
	<li>
	<h2>본 개인정보처리방침에 의한 회원의 개인정보 제공 및 공유에 추가하여 개인정보를 제공하거나 공유하는 경우에는 사전에 공유하는 자가 누구이며 주된 사업이 무엇인지, 제공 또는 공유되는 개인정보 항목이 무엇인지, 개인정보를 제공하거나 공유하는 목적이 무엇인지, 공유하는 정보의 보유 및 이용기간 등에 대해 이용약관, 개인정보처리방침, 이메일, 서면, 전화 중 하나를 통해 고지한 후 이에 대한 동의를 구합니다.</h2>
	</li>
	<li>
	<h2>다만, 금융 실명 거래 및 비밀 보장에 관한 법률, 신용 정보의 이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법, 소비자보호법, 한국은행법, 형사소송법 등 법률에 특별한 규정이 있는 경우 관련 법률의 규정에 의하여 회원의 동의 없이 개인정보를 제공하는 것이 가능합니다.</h2>
	</li>
	<li>
	<h2>CGV는 아래와 같이 개인정보를 제공하고 있습니다.</h2>

	<table border="1" cellpadding="1" cellspacing="1">
		<colgroup>
			<col style="width:20%">
			<col style="width:30%">
			<col style="width:30%">
			<col style="width:20%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">제공 받는 자</th>
				<th scope="col">제공 목적</th>
				<th scope="col">제공하는 개인정보의 항목</th>
				<th scope="col">보유 및 이용 기간</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>씨제이올리브네트웍스㈜ (CJ ONE 서비스)</td>
				<td>웹사이트 로그인, CJ ONE 포인트 적립 및 사용, 기타 CJ ONE 멤버십 관련 서비스 제공</td>
				<td>CI(연계정보), 회원번호(CJ ONE), 성명, 생년월일, 성별, 아이디, 비밀번호, 휴대폰번호, 이메일 주소, 회원 등급</td>
				<td>CGV 이용약관 철회 또는 CJ ONE 탈퇴 시까지</td>
			</tr>
			<tr>
				<td>훅클라이밍<br>
				더훅클라이밍</td>
				<td>Peakers 클라이밍 매장 위탁 운영을 위한 클라이밍 서비스 이용자 정보 조회 및 신규 등록 관리</td>
				<td>성명, 성별, 생년월일, 휴대폰번호, 주소</td>
				<td>Peakers 클라이밍 이용약관 철회 또는 이용 종료 시까지</td>
			</tr>
			<tr>
				<td>CJ제일제당㈜<br>
				CJ대한통운㈜<br>
				CJ이엔엠㈜<br>
				CJ올리브영㈜<br>
				CJ올리브네트웍스㈜<br>
				CJ푸드빌㈜<br>
				CJ프레시웨이㈜<br>
				티빙㈜</td>
				<td>1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규 상품/서비스 개발<br>
				2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을 통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br>
				3) 상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한 이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
				4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br>
				5) 상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및 우대 혜택 제공 등 마케팅 및 프로모션 목적<br>
				6) 고객 정보 보호 강화를 위한 외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
				7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합, 조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를 통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발</td>
				<td>인적정보[성명, 생년월일, 성별, CI(연계정보) 주소, 이동전화번호, 이메일, 아이디], 기록정보[접속로그(IP 포함), 쿠키, 서비스이용기록(로그인, 동의 여부, 조회 이력 등)], 서비스 이용 내용[구매내역(상품명, 금액 등), 결제정보(수단, 내역, 사용처 등), 상담정보, 프로모션/이벤트 이용 정보, 이용자 입력 정보] 및 위 정보와 CJ계열사 항목 정보를 결합, 분석, 추출하여 생성된 정보</td>
				<td>개인정보 제공 동의 철회 시까지 또는 회원 탈퇴 후 30일까지</td>
			</tr>
		</tbody>
	</table>
	</li>
</ol>

<h1 id="privacy4">제4조 개인정보 처리의 위탁</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>씨제이씨지브이㈜는 개인정보의 처리와 관련하여 아래와 같이 개인정보 처리업무를 위탁하고 있습니다. 관계 법률에 따라 위탁 계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고, 수탁 업체가 개인정보를 위법하게 이용하지 않도록 관리 감독하고 있습니다.</h2>
	</li>
	<li>
	<h2>계약 이행을 위해 필요한 경우가 아닌 다른 여타 목적을 위한 업무 위탁의 경우, 회원님께 수탁자와 위탁 업무에 대해 서면, 이메일, 전화로 고지 또는 홈페이지를 통하여 게재하도록 하겠습니다.</h2>

	<table border="1" cellpadding="1" cellspacing="1">
		<colgroup>
			<col style="width:50%">
			<col style="width:50%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">수탁 업체</th>
				<th scope="col">위탁 업무 내용</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>CJ올리브네트웍스㈜</td>
				<td>시스템 운영 위탁<br>
				CJ옴니서비스 이용약관 및 개인정보 제3자 제공 관련 동의 수령/철회/관리 업무<br>
				개인정보의 가명처리 업무</td>
			</tr>
			<tr>
				<td>디아이웨어(CJ올리브네트웍스㈜ 재위탁 업체)</td>
				<td>극장영업 및 온라인 시스템 운영</td>
			</tr>
			<tr>
				<td>임팩소프트(CJ올리브네트웍스㈜ 재위탁 업체)</td>
				<td>온라인 시스템 운영</td>
			</tr>
			<tr>
				<td>씨에스피아이(CJ올리브네트웍스㈜ 재위탁 업체)</td>
				<td>극장영업 시스템 운영</td>
			</tr>
			<tr>
				<td>미래아이엔텍(CJ올리브네트웍스㈜ 재위탁 업체)</td>
				<td>극장영업 시스템 운영</td>
			</tr>
			<tr>
				<td>위즈베이스(CJ올리브네트웍스㈜ 재위탁 업체)</td>
				<td>극장영업 DBA</td>
			</tr>
			<tr>
				<td>㈜메이아이(CJ올리브네트웍스㈜ 재위탁 업체)</td>
				<td>영상정보의 통계 목적의 비식별 데이터 분석을 위한 가명정보 처리 및 데이터 분석</td>
			</tr>
			<tr>
				<td>KS-NET<br>
				금융결제원<br>
				KICC<br>
				NICE</td>
				<td>결제 대행</td>
			</tr>
			<tr>
				<td>㈜CJ텔레닉스</td>
				<td>고객센터(고객안내, 상담처리 등) 운영 위탁</td>
			</tr>
			<tr>
				<td>NICE평가정보㈜</td>
				<td>본인 인증</td>
			</tr>
			<tr>
				<td>유비플러스</td>
				<td>Peakers 클라이밍 이용 고객관리</td>
			</tr>
			<tr>
				<td>㈜스마트콘</td>
				<td>CGV PLUS 서비스 이용 고객 대상 TVING 이용권 관련 업무 위탁</td>
			</tr>
		</tbody>
	</table>
	</li>
</ol>

<h1 id="privacy5">제5조 회원의 개인정보보호 책임자</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>회원의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 씨제이씨지브이㈜는 개인정보보호책임자를 두고 있습니다. 개인정보와 관련한 문의 사항이 있으시면 아래의 개인정보보호책임자에게 연락 주시기 바랍니다. 회원의 문의 사항에 신속하고 성실하게 답변해 드리겠습니다.</h2>

	<ol>
		<li>
		<h3>개인정보보호책임자 : 도형구<br>
		E-MAIL : <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a><br>
		전화번호 : 1544-1122 (평일 오전 9시 ~ 오후 6시, 주말 및 공휴일 제외)</h3>
		</li>
		<li>
		<h3>개인정보보호담당부서 : 정보보호센터<br>
		E-MAIL : <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a><br>
		전화번호 : 1544-1122 (평일 오전 9시 ~ 오후 6시, 주말 및 공휴일 제외)</h3>
		</li>
		<li>
		<h3>개인정보 민원 처리<br>
		씨제이씨지브이㈜는 귀하의 의견을 소중하게 생각하며, 귀하와의 원활한 의사소통을 위해 민원처리센터를 운영하고 있습니다.<br>
		민원처리센터 연락처는 다음과 같습니다.<br>
		E-MAIL : <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a><br>
		전화번호 : 1544-1122 (평일 오전 9시 ~ 오후 6시, 주말 및 공휴일 제외)<br>
		주소 : 서울특별시 구로구 디지털로 288 (구로동, 대륭포스트타워1차)</h3>
		</li>
	</ol>
	</li>
</ol>

<h1 id="privacy6">제6조 쿠키에 의한 개인정보 수집</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>씨제이씨지브이㈜는 회원의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’를 사용합니다. 쿠키란 씨제이씨지브이㈜의 웹사이트를 운영하는 데 이용되는 서버가 회원의 브라우저에 보내는 아주 작은 텍스트 파일로써 회원의 컴퓨터 하드 디스크에 저장됩니다.</h2>
	</li>
	<li>
	<h2>씨제이씨지브이㈜는 다음과 같은 목적을 위해 쿠키를 사용하며, 쿠키는 브라우저의 종료 시나 로그아웃 시 만료됩니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>회원과 비회원의 접속 빈도나 방문 시간 등을 분석하고 이용자의 취향과 관심 분야를 파악하여 서비스 개편 등의 척도로 활용합니다.</h3>
		</li>
		<li>
		<h3>지정한 품목들(영화/예매/극장정보 등)에 대한 정보와 관심 있게 둘러본 품목들에 대한 자취를 추적하여 다음 번 방문 시 개인 맞춤 서비스를 제공하는 데 이용합니다.</h3>
		</li>
		<li>
		<h3>씨제이씨지브이㈜가 진행하는 각종 이벤트에서 회원의 참여 정도 및 방문 횟수를 파악하여 차별적인 응모 기회를 부여하고 개인의 관심 분야에 따라 차별화된 정보를 제공하기 위한 자료로 이용됩니다.</h3>
		</li>
	</ol>
	</li>
	<li>
	<h2>회원은 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 회원은 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수 있습니다. 다만, 회원님께서 쿠키 저장을 거부할 경우, 로그인이 필요한 웹사이트 일부 서비스는 이용에 어려움이 있을 수 있습니다.</h2>
	</li>
	<li>
	<h2>쿠키 수집 허용 여부를 지정하는 방법</h2>

	<ol class="noneSpace">
		<li>
		<h3>[설정] 메뉴에서 [개인정보 및 보안]을 선택합니다.</h3>
		</li>
		<li>
		<h3>[쿠키 및 기타 사이트 데이터]를 클릭합니다.</h3>
		</li>
		<li>
		<h3>쿠키 수집 거부를 선택할 수 있습니다.</h3>
		※ 크롬을 기준으로 한 방법으로 사용하는 웹 브라우저 종류에 따라 세부 방법은 다를 수 있습니다.</li>
	</ol>
	</li>
	<li>
	<h2>개별 쿠키 항목 및 보유기간</h2>

	<table border="1" cellpadding="1" cellspacing="1" class="tAlignC">
		<colgroup>
			<col style="width:35%">
			<col style="width:30%">
			<col style="width:35%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">수집 목적</th>
				<th scope="col">수집 항목</th>
				<th scope="col">보유기간</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td rowspan="8">웹사이트 이용 시<br>
				각 화면별<br>
				이용자 정보 인증 및<br>
				사용 이력 정보 확인</td>
				<td>성명</td>
				<td rowspan="8">웹 브라우저 종료 시</td>
			</tr>
			<tr>
				<td>아이디(ID)</td>
			</tr>
			<tr>
				<td>나이</td>
			</tr>
			<tr>
				<td>회원상태</td>
			</tr>
			<tr>
				<td>IPIN</td>
			</tr>
			<tr>
				<td>이메일</td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
			</tr>
			<tr>
				<td>IP</td>
			</tr>
		</tbody>
	</table>
	</li>
</ol>
<strong class="h1Style">제6조의2 모바일 앱 이용 시 광고식별자(ADID/IDFA) 수집</strong>

<ol class="terms_list_circleNum">
	<li>
	<h2>씨제이씨지브이㈜는 회원이 씨제이씨지브이㈜의 모바일 앱(APP) 이용 시 사용자에게 맞춤 서비스와 더 나은 환경의 광고 제공을 위한 측정을 위해 모바일 앱 이용자의 광고식별 값으로서 광고식별자(ADID/IDFA)를 수집할 수 있습니다.</h2>
	</li>
	<li>
	<h2>회원은 아래의 방법으로 광고식별자의 수집 및 이용을 거부할 수 있습니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>iOS : 설정 → 개인정보보호 → 광고 → 광고추적 제한</h3>
		</li>
		<li>
		<h3>Android : 설정 → 구글(구글설정) → 추적 → 앱이 추적을 중단하도록 요청</h3>
		</li>
	</ol>
	</li>
</ol>
<strong class="h1Style">제6조의3 행태정보의 수집·이용 및 거부 등에 관한 사항</strong>

<ol class="terms_list_circleNum">
	<li>
	<h2>씨제이씨지브이㈜는 Google, Inc. (이하 ‘Google’)에서 제공하는 웹 분석 도구인 Google Analytics를 이용하여 고객들의 서비스 이용 행태 및 수요를 파악하여 보다 효율적인 서비스를 제공하기 위한 목적으로 행태정보를 수집·이용하고 있습니다.</h2>
	</li>
	<li>
	<h2>씨제이씨지브이㈜는 Google Analytics를 통해 본조 제1항의 목적을 위해 필요한 최소한의 행태정보만을 수집하며, 사상, 신념, 가족 및 친인척관계, 학력·병력, 기타 사회활동 등 개인의 권리·이익이나 사생활을 뚜렷하게 침해할 우려가 있는 민감한 행태정보와 개인을 식별할 수 있는 정보는 수집하지 않습니다.</h2>
	</li>
	<li>
	<h2>씨제이씨지브이㈜는 다음과 같이 행태정보를 수집합니다.</h2>

	<table border="1" cellpadding="1" cellspacing="1" class="tAlignC">
		<caption>&lt;수집 및 이용 항목&gt;</caption>
		<colgroup>
			<col style="width:29%">
			<col style="width:24%">
			<col style="width:25%">
			<col style="width:22%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">수집하는 행태 정보</th>
				<th scope="col">행태정보 수집 방법</th>
				<th scope="col">행태정보 수집 목적</th>
				<th scope="col">보유•이용기간</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>익명의 쿠키 정보<br>
				(인구통계학적 데이터, 웹/앱 서비스 행태 정보, 브라우저 및 모바일 기기 관련 정보 등)</td>
				<td>이용자의 웹 사이트 및 앱 방문/실행 시 자동 실행</td>
				<td>CJ CGV 온/모바일 채널 내 방문자(고객) 상호작용에 대한 서비스 분석 및 통계</td>
				<td>회원 탈퇴 시까지</td>
			</tr>
		</tbody>
	</table>
	</li>
	<li>
	<h2>회원은 아래의 방법으로 행태정보의 수집 및 이용을 거부할 수 있습니다.<br>
	&lt;수집 및 이용 거부 방법&gt;<br>
	<a href="https://tools.google.com/dlpage/gaoptout">tools.google.com/dlpage/gaoptout</a> 에서 웹 브라우저에 대한 부가 기능을 다운로드 및 설치하여 Google의 정보 처리를 거부할 수 있습니다.</h2>

	<ol>
		<li>
		<h3>Chrome: [Google 애널리틱스 차단 브라우저 부가 기능 다운로드] 클릭 → [Chrome에 추가] 클릭 → 팝업창 표출 시, [확장 프로그램 추가] 클릭 → 완료</h3>
		</li>
		<li>
		<h3>Edge: [Google 애널리틱스 차단 브라우저 부가 기능 다운로드] 클릭 → 상단 [다른 스토어의 확장 허용] 클릭 → 팝업 내 [허용] 클릭 → [Chrome에 추가] 클릭 → 팝업 내 [확장 추가] 클릭 → 완료</h3>
		</li>
		<li>
		<h3>IE(Internet Explorer): [Google 애널리틱스 차단 브라우저 부가 기능 다운로드] 클릭 → [동의 및 설치] 클릭 → 하단에 표시되는 창에서 [실행] 또는 [저장] 클릭 → 브라우저 다시 시작 시, 적용이 완료되므로 [지금 다시 시작] 또는 [나중에 다시 시작] 클릭 → [지금 다시 시작] 클릭 시, 하단에 추가 기능 사용 안내에 대한 팝업이 표출되며 [사용] 클릭 → 완료</h3>
		</li>
	</ol>

	<p>GoogleAnalytics의 정보 처리에 관한 보다 자세한 내용은 <a href="https://support.google.com/analytics/answer/6004245?hl=ko">support.google.com/analytics/answer/6004245?hl=ko</a> 을 참고하시기 바랍니다.</p>
	</li>
</ol>

<h1 id="privacy7">제7조 정보주체의 권리와 행사 방법</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>회원은 언제든지 등록되어 있는 회원의 개인정보를 열람ㆍ정정ㆍ삭제ㆍ처리정지를 요청하실 수 있습니다. 회원의 개인정보에 대한 열람 또는 정정을 하고자 할 경우에는 [개인정보변경](또는 [회원정보수정]등)을 클릭하여 본인 확인 절차를 거치신 후 직접 열람 또는 정정하거나, <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a>, 1544-1122로 연락하시면 지체 없이 조치하겠습니다. 개인정보의 이용내역, 처리위탁 및 제3자 제공 내역 등에 대해서는 <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a>, 1544-1122로 요청 시 열람 또는 정정 가능합니다. 개인정보의 처리정지를 원하실 경우 회원탈퇴/약관철회를 하시거나 <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a>, 1544-1122로 요청하실 수 있습니다.</h2>
	</li>
	<li>
	<h2>회원이 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통보하여 정정이 이루어지도록 조치하겠습니다.</h2>
	</li>
	<li>
	<h2>본조 제1항에도 불구하고 씨제이씨지브이㈜는 다음 각 호의 어느 하나에 해당하는 경우에는 회원에게 그 사유를 알리고 열람 또는 처리정지 요구 등을 제한하거나 거절할 수 있습니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>법률에 따라 열람이 금지되거나 제한되는 경우</h3>
		</li>
		<li>
		<h3>다른 사람의 생명 ∙ 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우</h3>
		</li>
	</ol>
	</li>
</ol>

<h1 id="privacy8">제8조 동의철회(회원탈퇴) 방법</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>회원은 회원 가입 시 개인정보의 수집, 이용 및 제공에 대해 동의하신 내용을 언제든지 철회하실 수 있습니다.<br>
	동의철회(회원탈퇴)는 ‘홈페이지 My CGV → 회원정보 → 회원탈퇴’ 또는 ‘모바일 앱 → My CGV → 개인정보관리 → 회원탈퇴’를 클릭하여 본인 확인 절차를 거치신 후 직접 동의철회(회원탈퇴)를 하시거나, <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a>, 1544-1122 등으로 연락하시면 회원의 개인정보를 파기하는 등 필요한 조치를 하겠습니다.</h2>
	</li>
</ol>

<h1 id="privacy9">제9조 개인정보의 파기</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>씨제이씨지브이㈜는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다음 각 호의 경우 일정기간 동안 예외적으로 수집한 회원정보의 전부 또는 일부를 보관할 수 있습니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>무분별한 회원탈퇴, 회원 자격 상실 후 재가입으로 인한 피해 최소화, 회원탈퇴 후 변심에 의한 복구 요청 등을 처리하기 위하여 회원탈퇴한 때 또는 회원 자격이 상실된 날로부터 1개월간 회원정보 별도 분리 보관</h3>
		</li>
		<li>
		<h3>개인정보 수집 시 보유ㆍ이용 기간을 미리 고지하고 별도의 동의를 받은 경우 해당 기간까지 보유</h3>
		</li>
		<li>
		<h3>「개인정보 보호법」 등 관련 법률에 따라 1년 동안 CGV 이용 실적이 없는 미이용 고객의 경우 고객정보 별도 분리 보관</h3>

		<ol>
			<li>
			<h4 data-list-text="가">이용 실적 : 유/무료 구매 실적, 로그인, 이벤트 참여, VOC 상담내역</h4>
			</li>
			<li>
			<h4 data-list-text="나">분리 보관 30일 전까지 해당 사실, 분리 보관 예정일자, 분리 보관되는 개인정보 항목 등에 대하여 이메일, 서면, 문자전송 또는 이와 유사한 방법 중 어느 하나의 방법으로 별도 통지 예정</h4>
			</li>
			<li>
			<h4 data-list-text="다">분리 보관 고객이 웹/모바일 로그인을 하거나 CGV 현장에서 포인트를 적립/사용하는 경우, 고객 상담 등의 서비스 이용 시 재이용 신청으로 간주하며 해당 계정은 자동 복원됩니다.</h4>
			</li>
		</ol>
		</li>
		<li>
		<h3>소멸 시효가 남은 상사채권(포인트, 상품권, 관람권 등)을 회원이 보유하고 있는 경우 시효 만료 시점까지 보유</h3>
		</li>
		<li>
		<h3>「상법」 및 「전자상거래 등에서의 소비자보호에 관한 법률」 등 관련 법률에 따라 일정 기간 보유할 필요가 있는 경우 관련 법률이 정한 기간에 따라 보유</h3>

		<ol>
			<li>
			<h4 data-list-text="가">표시∙광고에 관한 기록 : 6개월</h4>
			</li>
			<li>
			<h4 data-list-text="나">계약 또는 청약 철회 등에 관한 기록 : 5년</h4>
			</li>
			<li>
			<h4 data-list-text="다">대금 결제 및 재화 등의 공급에 관한 기록 : 5년</h4>
			</li>
			<li>
			<h4 data-list-text="라">소비자의 불만 또는 분쟁 처리에 관한 기록 : 3년</h4>
			</li>
		</ol>
		</li>
	</ol>
	</li>
	<li>
	<h2>씨제이씨지브이㈜는 전자적 파일형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 이용하여 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.</h2>
	</li>
</ol>

<h1 id="privacy10">제10조 만 14세 미만 아동의 개인정보보호</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>씨제이씨지브이㈜는 만 14세 미만 아동의 정보 수집이 필요한 경우 법정대리인의 동의를 받습니다.<br>
	아동의 법정대리인은 아동의 개인정보에 대한 열람ㆍ정정ㆍ삭제ㆍ처리정지를 요청하실 수 있으며 이를 위해 아동(청소년) 보호 책임자 또는 아동(청소년) 보호 민원 처리센터에 유선 또는 E-mail 등으로 연락하시면 확인 절차를 거쳐 필요한 조치를 취하겠습니다.</h2>

	<ol>
		<li>
		<h3>아동(청소년) 보호 책임자 : 도형구<br>
		E-mail : <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a><br>
		전화번호 : 1544-1122 (평일 오전 9시 ~ 오후 6시, 주말 및 공휴일 제외)</h3>
		</li>
		<li>
		<h3>아동(청소년) 보호 담당부서 : 정보보호센터<br>
		E-mail : <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a><br>
		전화번호 : 1544-1122 (평일 오전 9시 ~ 오후 6시, 주말 및 공휴일 제외)</h3>
		</li>
		<li>
		<h3>아동(청소년) 보호 민원 처리센터<br>
		E-mail : <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a><br>
		전화번호 : 1544-1122 (전화상담은 평일 오전 9시 ~ 오후 6시, 주말 및 공휴일 제외)<br>
		주소 : 서울특별시 구로구 디지털로 288 (구로동, 대륭포스트타워1차)</h3>
		</li>
	</ol>
	</li>
</ol>

<h1 id="privacy11">제11조 개인정보보호를 위한 기술적, 관리적 대책</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>씨제이씨지브이㈜는 고객의 개인정보가 분실, 도난, 변조, 유출 또는 훼손되지 않도록 다음 각 호와 같은 기술적, 관리적 보호 조치를 시행하고 있습니다.</h2>

	<ol>
		<li>
		<h3>침입 차단 시스템을 설치, 운영하여 해킹 등 외부자의 비인가 접근을 통제하고 있으며, 최소한의 인원에게 업무 역할에 따라 필요한 최소한의 접근 권한을 부여하고 있습니다.</h3>
		</li>
		<li>
		<h3>개인정보를 처리하는 PC 및 서버 등에 백신 프로그램을 설치하여 항상 최신의 상태로 업데이트를 하고 있으며, 고객정보를 안전하게 저장, 전송하기 위하여 암호화를 적용하고 있습니다.</h3>
		</li>
		<li>
		<h3>개인정보 처리 인력에 대한 보안 교육을 시행하고 관련 인력 및 시스템에 대한 점검을 시행하는 등 안전한 처리를 위해 최선을 다하고 있습니다.</h3>
		</li>
	</ol>
	</li>
</ol>

<h1 id="privacy12">제12조 가명정보의 처리</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>가명정보 처리 목적<br>
	씨제이씨지브이㈜는 개인정보보호법 제28조의2 제1항에 따라 통계작성, 과학적 연구, 공익적 기록보존 등을 위하여 정보주체의 동의 없이 가명정보를 처리할 수 있습니다.</h2>
	</li>
	<li>
	<h2>가명정보 처리 및 보유 기간<br>
	씨제이씨지브이㈜는 가명정보를 이용할 때 처리 및 보유기간을 정하고 있으며, 해당 기간이 경과할 시 더 이상 이용하지 않고 해당 정보를 지체없이 파기합니다.</h2>
	</li>
	<li>
	<h2>가명정보에 대한 안전성 확보 조치</h2>

	<ol>
		<li>
		<h3>씨제이씨지브이㈜는 가명정보를 처리하는 경우에는 원래의 상태로 복원하기 위한 추가 정보를 별도로 분리하여 보관ㆍ관리하는 등 해당 정보가 분실ㆍ도난ㆍ유출ㆍ위조ㆍ변조 또는 훼손되지 않도록 개인정보보호법 시행령 제29조의5에서 정하는 바에 따라 안전성 확보에 필요한 기술적ㆍ관리적 및 물리적 조치를 취합니다.</h3>

		<ul class="terms_marker_list">
			<li data-list-marker="■">관리적 조치 : 내부관리계획 수립 및 시행, 정기적 직원 교육 등</li>
			<li data-list-marker="■">기술적 조치 : 가명정보에 대한 접근권한 관리, 가명정보 접근통제시스템 설치, 고유식별정보 등의 암호화 및 재식별 방지, 보안프로그램 설치</li>
			<li data-list-marker="■">물리적 조치 : 전산실, 자료보관실 등의 접근통제</li>
		</ul>
		</li>
		<li>
		<h3>씨제이씨지브이㈜는 가명정보를 처리하고자 하는 경우에는 가명정보의 처리 목적, 제3자 제공 시 제공받는 자 등 가명정보의 처리 내용을 관리하기 위하여 개인정보보호법 시행령 제29조의5에서 정하는 사항에 대한 관련 기록을 작성하여 보관합니다.</h3>
		</li>
	</ol>
	</li>
	<li>
	<h2>현재 씨제이씨지브이㈜가 처리하는 가명정보 항목, 처리 목적, 보유 및 이용기간, 제3자 제공 및 처리 위탁 현황에 관한 사항은 아래에서 확인하실 수 있습니다.</h2>

	<p>▶ 가명정보의 처리에 관한 사항</p>

	<table border="1" cellpadding="1" cellspacing="1">
		<colgroup>
			<col style="width:20%">
			<col style="width:30%">
			<col style="width:30%">
			<col style="width:20%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">구분</th>
				<th scope="col">처리 목적</th>
				<th scope="col">가명정보 처리항목</th>
				<th scope="col">보유 및 이용기간</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>데이터전문기관을 통한 가명결합</td>
				<td>극장 및 문화예술소비 패턴 변화 분석 및 통계 작성</td>
				<td>회원정보 및 극장이용 정보</td>
				<td>데이터전문기관을 통한 가명결합 분석 완료 시까지</td>
			</tr>
		</tbody>
	</table>
	</li>
</ol>

<h1 id="privacy13">제13조 개인위치정보의 처리</h1>

<p>씨제이씨지브이㈜는 위치정보의 보호 및 이용 등에 관한 법률(이하 ‘위치정보법’)에 따라 이용자의 개인위치정보를 안전하게 관리합니다.</p>

<ol class="terms_list_circleNum">
	<li>
	<h2>개인위치정보의 처리목적 및 보유기간<br>
	위치기반서비스 이용약관에서 정한 목적 범위 내 관련 서비스를 제공하기 위해 필요한 최소한의 기간 동안 개인위치정보를 보유 및 이용하며, 처리목적 달성 시 본조 제2항에 따라 기록ㆍ보존하는 개인위치정보 이용ㆍ제공사실 확인자료 외의 개인위치정보는 지체없이 파기합니다.</h2>
	</li>
	<li>
	<h2>개인위치정보 이용ㆍ제공사실 확인자료의 보유근거 및 보유기간<br>
	씨제이씨지브이㈜는 ‘위치정보법’ 제16조 제2항에 따라 개인위치정보 이용‧제공사실 확인자료를 자동으로 기록·보존하며, 해당 자료는 6개월 간 보관합니다.</h2>
	</li>
	<li>
	<h2>개인위치정보의 파기 절차 및 방법<br>
	회원탈퇴 등 처리목적이 달성되거나 보유기간이 경과하면 복구 및 재생이 불가능한 방법으로 지체없이 파기합니다.</h2>
	</li>
	<li>
	<h2>개인위치정보의 제3자 제공에 관한 사항<br>
	씨제이씨지브이㈜는 개인위치정보주체의 사전 동의 없이 위치정보를 제3자에게 제공하지 않습니다. 단, 개인위치정보주체가 직접 동의를 한 경우, 그리고 관련 법령에 의거해 씨제이씨지브이㈜에 제출 의무가 발생한 경우, 이용자의 생명이나 안전에 급박한 위험이 확인되어 긴급구조기관 및 경찰관서의 제공 요청이 있는 경우에 한하여 개인위치정보를 제공합니다.</h2>
	</li>
	<li>
	<h2>개인위치정보의 이용 또는 제공에 따른 통보에 관한 사항<br>
	씨제이씨지브이㈜는 개인위치정보를 이용자가 지정하는 제3자에게 제공하는 경우 개인위치정보를 수집한 통신단말장치로 매회 이용자에게 제공받는 자, 제공일시 및 제공목적을 즉시 통보합니다. 단, 아래의 경우 이용자가 미리 특정하여 지정한 통신단말장치 또는 전자우편주소, 온라인게시 등으로 통보합니다.</h2>

	<ol class="noneSpace">
		<li>
		<h3>개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우</h3>
		</li>
		<li>
		<h3>이용자가 개인위치정보를 수집한 통신단말장치 외의 통신단말장치 또는 이메일 주소, 온라인게시 등으로 통보할 것을 미리 요청한 경우</h3>
		</li>
	</ol>
	</li>
	<li>
	<h2>8세 이하의 아동등의 보호를 위한 위치정보 이용 및 보호의무자의 권리ㆍ의무와 그 행사방법에 관한 사항</h2>

	<ol>
		<li>
		<h3>아래의 각목에 해당하는 자(이하 “8세 이하의 아동 등”이라 함)의 보호의무자(위치정보법 제26조 제2항 각호의 어느 하나에 해당하는 자를 말하며 이하 “보호의무자”라 함)가 8세 이하의 아동 등의 생명 또는 신체보호를 위하여 8세 이하 아동 등의 개인위치정보의 이용 또는 제공에 동의하는 경우에는 본인의 동의가 있는 것으로 봅니다.</h3>

		<ol>
			<li>
			<h4 data-list-text="가">8세 이하의 아동</h4>
			</li>
			<li>
			<h4 data-list-text="나">피성년후견인</h4>
			</li>
			<li>
			<h4 data-list-text="다">장애인복지법 제2조 제2항 제2호에 따른 정신적 장애를 가진 사람으로서 장애인고용촉진 및 직업재활법 제2조 제2호에 따른 중증장애인에 해당하는 사람(장애인복지법 제32조에 따라 장애인 등록을 한 사람에 한정)</h4>
			</li>
		</ol>
		</li>
		<li>
		<h3>8세 이하의 아동 등의 생명 또는 신체의 보호를 위하여 개인위치정보의 이용 또는 제공에 동의를 하고자 하는 보호의무자는 서면동의서에 보호의무자임을 증명하는 서면을 첨부하여 회사에 제출하여야 하며, 보호의무자는 8세 이하의 아동 등의 개인위치정보 이용 또는 제공에 동의하는 경우 위치기반서비스 이용약관상의 이용자의 권리를 모두 행사할 수 있습니다.</h3>
		</li>
	</ol>
	</li>
	<li>
	<h2>씨제이씨지브이㈜는 개인위치정보를 적절히 관리‧보호하고, 이용자의 불만, 요청 등을 원활하게 처리할 수 있도록 위치정보 관리책임자를 지정하여 운영하고 있으며, 개인정보보호책임자가 겸직하고 있습니다.</h2>

	<ol>
		<li>
		<h3>위치정보 관리책임자 : 도형구<br>
		E-mail : <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a><br>
		전화번호 : 1544-1122 (평일 오전 9시 ~ 오후 6시, 주말 및 공휴일 제외)</h3>
		</li>
		<li>
		<h3>각 담당 부서<br>
		위치정보 보호 관리/운영 담당자 : 모바일기획팀<br>
		개인위치정보 보호 담당자 : 정보보호센터<br>
		E-mail : <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a><br>
		전화번호 : 1544-1122 (평일 오전 9시 ~ 오후 6시, 주말 및 공휴일 제외)</h3>
		</li>
		<li>
		<h3>위치정보 관련 민원 처리센터<br>
		E-mail : <a href="mailto:cjcgvmaster@cj.net">cjcgvmaster@cj.net</a><br>
		전화번호 : 1544-1122 (전화상담은 평일 오전 9시 ~ 오후 6시, 주말 및 공휴일 제외)<br>
		주소 : 서울특별시 구로구 디지털로 288 (구로동, 대륭포스트타워1차)</h3>
		</li>
	</ol>
	</li>
</ol>

<h1 id="privacy14">제14조 영상정보처리기기 운영 및 관리 방침</h1>

<p>씨제이씨지브이㈜는 영상정보처리기기 운영 및 관리 방침을 통해 씨제이씨지브이㈜에서 영상 정보가 어떠한 용도와 방식으로 이용·관리 되고 있는지 알려드립니다.</p>

<ol class="terms_list_circleNum">
	<li>
	<h2>영상정보처리기기의 설치 근거 및 설치 목적<br>
	씨제이씨지브이㈜는 개인정보보호법 제25조 제1항에 따라 시설 안전 및 화재 예방, 고객의 안전을 위한 범죄 예방, 통계 작성을 위한 가명정보 처리 및 데이터 분석을 목적으로 영상정보처리기기를 설치·운영하고 있습니다.</h2>
	</li>
	<li>
	<h2>설치 대수, 설치 위치 및 촬영 범위</h2>

	<table border="1" cellpadding="1" cellspacing="1" class="tAlignC">
		<colgroup>
			<col style="width:45%">
			<col style="width:55%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">설치 대수</th>
				<th scope="col">설치 위치 및 촬영 범위</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>극장별 안내판 참조</td>
				<td>로비, 상영관, 에스컬레이터 등</td>
			</tr>
			<tr>
				<td>3대</td>
				<td>삼성동 케이팝스퀘어 광장</td>
			</tr>
			<tr>
				<td>8대</td>
				<td>스타필드 코엑스몰 내부 (메가박스 출입구)</td>
			</tr>
			<tr>
				<td>4대</td>
				<td>스타필드 코엑스몰 외부 (삼성역 6번 출구 앞 광장)</td>
			</tr>
			<tr>
				<td>4대</td>
				<td>브랜드 에비뉴 (삼성역 6번출구 방면)</td>
			</tr>
		</tbody>
	</table>
	</li>
	<li>
	<h2>보호책임자 및 접근 권한자<br>
	고객의 영상정보를 보호하고 개인영상정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인영상정보 보호 책임자를 두고 있습니다.</h2>

	<table border="1" cellpadding="1" cellspacing="1" class="tAlignC">
		<colgroup>
			<col style="width:28%">
			<col style="width:22%">
			<col style="width:25%">
			<col style="width:25%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">대상</th>
				<th scope="col">구분</th>
				<th scope="col">직위</th>
				<th scope="col">연락처</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>극장</td>
				<td>보호책임자</td>
				<td>극장 (부)점장</td>
				<td rowspan="5">1544-1122</td>
			</tr>
			<tr>
				<td>삼성동 케이팝스퀘어 광장,<br>
				스타필드 코엑스몰,<br>
				브랜드 에비뉴</td>
				<td>관리책임자</td>
				<td rowspan="4">매체운영팀 각 담당자</td>
			</tr>
			<tr>
				<td>삼성동 케이팝스퀘어</td>
				<td>접근권한자</td>
			</tr>
			<tr>
				<td>스타필드 코엑스몰</td>
				<td>접근권한자</td>
			</tr>
			<tr>
				<td>브랜드 에비뉴</td>
				<td>접근권한자</td>
			</tr>
		</tbody>
	</table>
	</li>
	<li>
	<h2>영상정보의 촬영 시간, 보관 기간, 보관 장소 및 처리 방법</h2>

	<table border="1" cellpadding="1" cellspacing="1" class="tAlignC">
		<thead>
			<tr>
				<th scope="col">대상</th>
				<th scope="col">촬영 시간</th>
				<th scope="col">보관 기간</th>
				<th scope="col">&nbsp;보관 장소</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>극장</td>
				<td>24시간</td>
				<td>촬영일로부터 최대 30일</td>
				<td>각 극장 플랜트룸</td>
			</tr>
			<tr>
				<td>삼성동 케이팝스퀘어 광장</td>
				<td>24시간</td>
				<td>촬영일로부터 최대 30일</td>
				<td>삼성동 케이팝스퀘어 장비실</td>
			</tr>
			<tr>
				<td>스타필드 코엑스몰</td>
				<td>24시간</td>
				<td>촬영일로부터 최대 30일</td>
				<td>코엑스 장비실</td>
			</tr>
			<tr>
				<td>브랜드 에비뉴</td>
				<td>24시간</td>
				<td>촬영일로부터 최대 30일</td>
				<td>삼성동 외부 광장 장비실</td>
			</tr>
		</tbody>
	</table>

	<p>개인영상정보의 목적 외 이용, 제3자 제공, 파기, 열람 등 요구에 관한 사항을 기록·관리하고, 보관 기간 만료 시 복원이 불가능한 방법으로 영구 삭제 합니다.</p>
	</li>
	<li>
	<h2>개인영상정보의 확인 방법 및 장소에 관한 사항<br>
	각 극장의 개인영상정보 보호책임자 또는 씨제이씨지브이㈜ 고객센터에 연락하시고 방문하시면 됩니다.</h2>
	</li>
	<li>
	<h2>정보주체의 영상정보 열람 등 요구에 대한 조치<br>
	개인영상정보에 관하여 열람 또는 존재 확인, 삭제를 원하는 경우 언제든지 씨제이씨지브이㈜에 요구하실 수 있습니다. 단, 정보주체 자신이 촬영된 개인영상정보 및 명백히 정보주체의 급박한 생명, 신체, 재산의 이익을 위하여 필요한 개인영상정보에 한정됩니다.<br>
	씨제이씨지브이㈜는 개인영상정보에 관하여 열람 또는 존재 확인, 삭제를 요구한 경우 해당 요구를 검토하여 지체 없이 필요한 조치를 취할 것이며 불가피하게 해당 요구를 거부하는 경우에는 그 사유를 통지하도록 하겠습니다.</h2>
	</li>
	<li>
	<h2>영상정보의 안전성 확보 조치<br>
	씨제이씨지브이㈜는 폐쇄 네트워크 또는 방화벽 등의 보안 시스템을 통하여 고객의 영상정보를 보호하고 있습니다. 또한 개인영상정보 보호를 위하여 해당 영상정보를 처리하는 인원을 최소한으로 제한하고 있으며 지속적인 교육을 시행하고 있습니다. 개인영상정보의 임의적인 처리를 제한하기 위하여 개인영상정보의 열람 시 열람 목적, 열람자, 열람 일시 등을 기록, 관리하고 있으며 영상정보의 보관 장소는 보안구역으로 정하고 사전 승인된 인력 외에는 출입을 통제하고 있습니다.</h2>
	</li>
	<li>
	<h2>영상정보처리기기 운영 및 관리방침 변경에 관한 사항<br>
	관계 법률, 정책 또는 보안 기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 시에는 시행하기 최소 7일 전에 씨제이씨지브이㈜ 홈페이지를 통해 변경 사유 및 내용 등을 공지하도록 하겠습니다.</h2>
	</li>
</ol>

<h1 id="privacy15">제15조 이용자의 권리와 의무</h1>

<ol class="terms_list_circleNum">
	<li>
	<h2>회원은 개인정보를 최신의 상태로 정확하게 입력하여 불의의 사고를 예방할 수 있도록 협조해야 합니다. 저장된 부정확한 정보로 인해 발생하는 사고의 책임은 회원에게 있으며, 타인 정보의 도용 등 허위 정보를 입력할 경우 회원 자격이 상실될 수 있습니다.</h2>
	</li>
	<li>
	<h2>회원은 개인정보를 보호받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 있습니다. 비밀번호를 포함한 회원의 개인정보가 유출되지 않도록 조심하시고 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의하시기 바랍니다. 만약 이 같은 책임을 다하지 못하고 타인의 정보를 훼손할 시에는 ‘개인정보보호법’ 및 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’ 등 관련 법률에 의해 처벌받을 수 있습니다.</h2>
	</li>
</ol>

<h1 id="privacy16">제16조 개인정보 침해 관련 상담 및 신고</h1>

<p>개인정보 침해에 대한 신고 및 상담이 필요하신 경우에는 개인정보보호 책임자의 E-mail, 전화 또는 서면으로 연락하시거나 개인정보침해신고센터, 경찰청 사이버테러대응센터 등으로 문의하시기 바랍니다.</p>

<ul class="terms_marker_list">
	<li data-list-marker="■">경찰청 사이버안전국 / <a href="https://ecrm.cyber.go.kr">https://ecrm.cyber.go.kr</a> / (국번없이) 182</li>
	<li data-list-marker="■">대검찰청 사이버수사과 / <a href="https://www.spo.go.kr">https://www.spo.go.kr</a> / (국번없이) 1301</li>
	<li data-list-marker="■">개인정보 침해신고센터 / (한국인터넷 진흥원 운영) <a href="http://privacy.kisa.or.kr">http://privacy.kisa.or.kr</a> / (국번없이) 118</li>
	<li data-list-marker="■">개인정보 분쟁조정위원회 / (개인정보보호위원회 운영) <a href="https://www.privacy.go.kr">https://www.privacy.go.kr</a> / 02-1833-6972</li>
</ul>

<h1 id="privacy17">제17조 정책 변경에 따른 공지 의무</h1>

<p>본 개인정보처리방침은 2004년 6월 25일에 제정되었으며 법률∙정책 또는 보안기술의 변경에 따라 내용의 추가∙삭제 및 수정이 있을 시에는 변경되는 개인정보처리방침을 시행하기 최소 7일 전에 씨제이씨지브이㈜ 인터넷 사이트를 통해 변경 이유 및 내용 등을 공지하도록 하겠습니다.</p>
</article></div> 
        

	</div>
                </div>
                  </div>
                    </div>
                    
   <!-- ******************************************** 수정된 부분 끝! ******************************************** -->
    </div>    
    <div class="sect-loginguide">
        <dl class="box-operationguide">
            <dt>이용문의</dt>
            <dd>HCY 고객센터 : 4444-4444</dd>
            <dd>상담 가능 시간 : 월~금 09:00~09:01 (이 외 시간은 자동 응답 안내 가능)</dd>
        </dl>
    </div>
</div>
<!-- 실컨텐츠 끝 -->

<!-- find id -->
<form name="frmFindAccount" id="frmFindAccount" method="post" action="https://www.cgv.co.kr/user/login/find-pw-proc.aspx" novalidate="novalidate">   
    <input type="hidden" id="userid" name="userid"> 
</form>
<!-- //find id -->

<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
<script type="text/javascript">
//<![CDATA[
	

	

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
     
        <a href="/ticket/" class="btn_fixedTicketing">예매하기</a>
        
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
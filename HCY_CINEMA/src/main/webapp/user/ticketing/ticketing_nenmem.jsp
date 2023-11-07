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
    <meta id="ctl00_og_title" property="og:title" content="비회원예매 < 회원서비스 | 영화 그 이상의 감동. CGV">
    
    
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png">
    <link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon">
    <title id="ctl00_headerTitle">비회원예매 &lt; 회원서비스 | 영화 그 이상의 감동. CGV</title>
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
        _TRK_CP = "/회원서비스/비회원예매";

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
	
      <!-- S Header
        Description
        - class 'nav' 에 class 'active' 추가시 서브메뉴노출
        - class 'nav' 에 class 'fixed' 추가시 상단고정되며 스타일 변경됨
     -->
	<jsp:include page="../include/headerContents.jsp"/>
	<!-- E Header -->

	<!-- Contaniner -->
	<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

		<!-- Contents Area -->
		 <div id="contents" class="">
        
            
            <!-- Contents Start -->
			
<!-- 실컨텐츠 시작 -->
<div class="wrap-login">
    <div class="sect-login">
        <ul class="tab-menu-round">
            <li>
                <a href="/user/login/">로그인</a>
            </li>
            <li class="on">
                <a href="/user/guest/login-agreement.aspx">비회원 예매</a>
            </li>
            <li>
                <a href="/user/guest/login.aspx">비회원 예매확인</a>
            </li>
        </ul>

        <div class="box-security">
		 <h3><strong>STEP 1</strong>개인정보 수집 및 이용동의</h3>
            <p>비회원 예매 고객께서는 먼저 개인정보 수집 및 이용 동의 정책에 동의해 주셔야 합니다.</p>

            <!-- 비회원로그인 : 개인정보 수집 및 활용동의1 -->
			<div class="tbl-breakdown-re marginT25">
				<table style="width:100%;" summary="개인정보 수집 및 활용 동의 표">
					<caption>개인정보 수집 및 활용 동의</caption>
					<colgroup>
						<col style="width:17%;">
						<col style="width:37%;">
						<col style="width:30%;">
						<col style="width:16%;">
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
							<th scope="row">법정생년월일, 휴대폰번호,<br>비밀번호</th>
							<td>
								<ul class="dep1_lst">
									<li class="dep1_lst_li">· 비회원 예매서비스 제공</li>
									<li class="dep1_lst_li">· 이용자식별, 요금정산, 추심, 신규서비스 개발, 접속빈도 파악 등</li>
								</ul>
							</td>
							<td>관람 또는 취소 후 1주일 까지</td><!--20201109 woongseon ISMS 개인정보 부분 미흡 사항 개선 요청-->
							<td>
								<!-- 동의함 또는 동의안함 체크시 inp_inbox에 on 클래스 toggle 처리 필요 -->
								<span class="inp_inbox on">
									<input name="agree_chk17" id="agreeChk17-1" type="radio" value="Y"><label for="agreeChk17-1">동의함</label>
								</span>
								<span class="inp_inbox">
									<input name="agree_chk17" id="agreeChk17-2" type="radio" value="N" checked="checked"><label for="agreeChk17-2">동의안함</label>
								</span>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="inbtn-desc marginT20">
					<p>※ CGV 비회원 예매서비스 제공을 위해 필요한 최소한의 개인정보이므로 입력(수집)에 동의하시지 않을 경우 서비스를 이용하실 수 없습니다.</p>
				</div>
			</div>

        </div>
    </div>
    <div class="sect-user nomember">
        <h3><strong>STEP 2</strong> 개인정보(휴대폰번호,법정생년월일,비밀번호) 입력</h3>
        <p>개인정보를 잘못 입력하시면 예매내역 확인/취소 및 티켓 발권이 어려울 수 있으니, 입력하신 정보를 다시 한번 확인해주시기 바랍니다.</p>
        <div class="cols-enterform nomember">
            <div class="col-simple" style="width:100%">
                <h4>개인정보 입력</h4>
                <div class="box-simple">
                    <p class="disc-info">모든 항목은 필수 입력사항입니다.</p>
                    
                    <form id="form1" method="post" novalidate="novalidate" action="http://localhost/HCY_CINEMA/user/login/find_id.jsp">
                    
                    <fieldset>
                        <legend>비회원로그인 정보를 입력후 로그인 하실수 있습니다.</legend>
                        <table cellpadding="0" cellspacing="0" summary="비회원예매확인/취소를 하기위해 정보를 입력하는 테이블 입니다">
                            <caption>법정생년월일, 휴대폰번호, 비밀번호(4자리) 입력하는 테이블</caption>
                            <colgroup>
                                <col class="col01">
                                <col class="col02">
                            </colgroup>
                            <tbody>                           
                            <tr>
                                <th scope="row" style="text-align:left"><label for="txtBirthday">이름</label></th>
                                <td style="text-align:left"><input type="text" class="only-number" title="이름" data-title="이름" data-message="을 올바르게 입력해주세요." name="txtName" id="txtName" length="8" maxlength="5" required="required"> 
                                    </td>
                            </tr>
                            <tr><!--20201109 woongseon ISMS 개인정보 부분 미흡 사항 개선 요청-->
                                <th scope="row" style="text-align:left"><label for="txtBirthday">법정생년월일(8자리)</label></th>
                                <td style="text-align:left"><input type="text" class="only-number" title="생년월일(8자리)"  data-title="생년월일" data-message="을 올바르게 입력해주세요." name="txtBirthday" id="txtBirthday" digits="digits" length="8" maxlength="8" required="required"> 
                                    </td>
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
                                    <input type="text" style="width:85px;" title="휴대폰번호 중간자리"  data-title="휴대폰번호 중간자리" data-message="를 입력해주세요." name="txtMobile2" id="txtMobile2" length="4" maxlength="4" required="required">
                                    -
                                    <input type="text" style="width:85px;" title="휴대폰번호 끝자리"  data-title="휴대폰번호 끝자리" data-message="를 입력해주세요." name="txtMobile3" id="txtMobile3" length="4" maxlength="4" required="required">
                                    <input type="hidden" id="hdIsSendSMS" name="hdIsSendSMS" data-title="인증번호받기 버튼을" data-message=" 클릭해주세요." required="required">
                                </td>
                            </tr>
                            
                            <tr>
                                <th scope="row" style="text-align:left"><label for="txtPassword">비밀번호<em>(4자리)</em></label></th>
                                <td style="text-align:left"><input type="password" class="only-number" title="비밀번호(4자리)" data-title="비밀번호(4자리)" data-message="를 입력해주세요." name="txtPassword" id="txtPassword" digits="digits" length="4" maxlength="4" required="required"></td>
                            </tr>
                            <tr>
                                <th scope="row" style="text-align:left"><label for="txtConfirmPassword">비밀번호확인</label></th>
                                <td style="text-align:left"><input type="password" class="only-number" title="비밀번호 확인" data-title="비밀번호확인" data-message="을 입력해주세요." name="txtConfirmPassword" id="txtConfirmPassword" digits="digits" length="4" maxlength="4" required="required"></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="box-btn">
	                        <button type="submit" class="round inred" id="btn_submit"><span>비회원 예매하기</span></button>
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
            <dd>1.  위 정보 수집 및 이용에 동의하지 않을 경우, 비회원 예매 서비스를 이용하실 수 없습니다. </dd>
            <dd>2.  비회원 예매 시 청소년 관람불가 영화는 예매가 제한됩니다. </dd>
            <dd>3.  만 14세 미만 고객은 비회원으로 예매하실 수 없습니다. </dd>
            <dd>4.  비회원 예매 결제수단은 신용카드만 가능하며 모든 제휴상품권, 쿠폰, 영화예매권 등은 회원 예매 서비스 이용 시 사용 가능합니다.</dd>
            <dd>5.  ARS에서는 취소가 불가능하며, 홈페이지/모바일을 이용하여 취소 처리하실 수 있습니다.</dd>
            <dd>6.  비회원 예매 및 예매 확인/취소 메뉴만 이용 가능합니다. 그 외 서비스는 회원 가입 후 이용해 주십시오. </dd>
            <dd>7.  문의 사항은 CGV고객센터(1544-1122)로 문의해 주시기 바랍니다. (평일 9:00~18:00)</dd>
        </dl>
    </div>
    <div class="sect-loginad" style="background:#d2cbbe;">
        <div>
           <iframe src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Login_bigbanner" width="350" height="300" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"></iframe>
        </div>
    </div>
</div>
<!-- 실컨텐츠 끝 --> 

<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
<script type="text/javascript">
//<![CDATA[

    (function ($) {
        $(function () {

            var $frm = $('#form1');
            $frm.validate({
                submitHandler: function (form) {
                    
                    // 1. 이용동의 여부 확인
                    var agree_chk17 = $("input[name='agree_chk17']:checked").val();
                    if (agree_chk17 == "N") {
                        alert("개인정보 수집 및 활용에 동의 하셔야 비회원 예매서비스 이용이 가능합니다.")
                        $('#agreeChk17-1').focus();
                        return false;
                    }

                    // 2. 생년월일 계산하여 나이 확인
                    if (calcAge($('#txtBirthday').val()) == -1) {
                        alert("생년월일을 올바르게 입력해 주세요.");
                        $('#txtBirthday').focus();
                        return false;
                    }

                    if (calcAge($('#txtBirthday').val()) < 14) {
                        alert("정보통신망법 제 31조에 법정대리인의 동의가 필요한 만 14세 미만 아동은 비회원 예매가 불가합니다.");
                        $('#txtBirthday').focus();
                        return false;
                    }

                    // 3. 비밀번호 확인
                    if ($('#txtPassword').val() != "" && $('#txtConfirmPassword').val() != "") {
                        if ($('#txtPassword').val() != $('#txtConfirmPassword').val()) {
                            alert("비밀번호가 일치하지 않습니다.");
                            $('#txtPassword').focus();
                            return false;
                        }
                    }

                    // 4. 비회원 로그인
                    //var birthday = app.crypto.AESEncryptToBase64($('#txtBirthday').val().substr(2, 6)); 
                    var birthday = app.crypto.AESEncryptToBase64($('#txtBirthday').val()); 
                    var mobile = app.crypto.AESEncryptToBase64($('#txtMobile1').val() + "-" + $('#txtMobile2').val() + "-" + $('#txtMobile3').val());
                    var pwd = app.crypto.AESEncryptToBase64($('#txtPassword').val());

                    $.ajax({
                        type: "POST",
                        url: '/user/guest/login-agreement.aspx/gLogin',
                        data: "{'birthday':'" + birthday + "' , 'mobile':'" + mobile + "' , 'pwd':'" + pwd + "'}",
                        contentType: "application/json; charset=utf-8",
                        async: false,
                        dataType: 'json',
                        success: function (result) {
                            switch (result.d.toString()) {
                                case "0": // 복호화 에러 
                                    alert("복호화 에러");
                                    break;
                                case "1":
                                    location.href = "/ticket/";
                                    break;
                                case "2":
                                    alert("인증정보가 없습니다.");
                                    break;
                                default:
                                    //   alert('Error result Value : ' + result);                    
                                    break;
                            }
                        }
                    });

                    return false;
                }
            });

            $("input[name=agree_chk17]").on('click', function () {
                // 개인정보 수집 이용동의
                if ($('input:radio[name="agree_chk17"]:checked').val() == "Y") {
                    $('#txtBirthday').attr("disabled", false);
                    $('#txtMobile1').attr("disabled", false);
                    $('#txtMobile2').attr("disabled", false);
                    $('#txtMobile3').attr("disabled", false);
                    $('#txtAuthNumber').attr("disabled", false);
                    $('#txtPassword').attr("disabled", false);
                    $('#txtConfirmPassword').attr("disabled", false);
                } else if ($('input:radio[name="agree_chk17"]:checked').val() == "N") {
                    $('#txtBirthday').attr("disabled", true);
                    $('#txtMobile1').attr("disabled", true);
                    $('#txtMobile2').attr("disabled", true);
                    $('#txtMobile3').attr("disabled", true);
                    $('#txtAuthNumber').attr("disabled", true);
                    $('#txtPassword').attr("disabled", true);
                    $('#txtConfirmPassword').attr("disabled", true);

                    $('#txtBirthday').val('');
                    $('#txtMobile2').val('');
                    $('#txtMobile3').val('');
                    $('#hdIsSendSMS').val('');
                    $('#txtAuthNumber').val('');
                    $('#hdISMSAuth').val('');
                    $('#txtPassword').val('');
                    $('#txtConfirmPassword').val('');
                }
            });


        });
    })(jQuery);

    // 만 나이 리턴
    //20201109 woongseon ISMS 개인정보 부분 미흡 사항 개선 요청 생년월일 8자리를 쿠키저장
    function calcAge(birth) {
        var date = new Date();
        var year = date.getFullYear();
        var month = (date.getMonth() + 1);
        var day = date.getDate();
        if (month < 10) month = '0' + month;
        if (day < 10) day = '0' + day;
        var monthDay = month + day;

       /* var birthdayy = "";
        if(jumin1 == 1 || jumin1 == 2)
            birthdayy = "19" + birth.substr(0, 2);             // 19YY
        else if (jumin1 == 3 || jumin1 == 4)
            birthdayy = "20" + birth.substr(0, 2);             // 20YY
            */

        var birthdayy = birth.substr(0, 4);
        var birthdaymd = birth.substr(4, 4);            // MMDD
        var birthdate = new Date(birthdayy, birthdaymd.substr(0,2)-1, birthdaymd.substr(2,2));

        var age = 0;
        
        if (date < birthdate)
            age = -1;
        else
            age = monthDay < birthdaymd ? year - birthdayy - 1 : year - birthdayy;

        return age;
    } 
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
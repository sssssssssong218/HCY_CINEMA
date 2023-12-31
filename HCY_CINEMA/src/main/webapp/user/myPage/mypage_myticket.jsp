<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.logging.SimpleFormatter"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.eclipse.jdt.internal.compiler.codegen.CachedIndexEntry"%>
<%@page import="myTicket.MyTicketVO"%>
<%@page import="manageMember.MemberVO"%>
<%@page import="myTicket.MyTicketDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="회원 예매확인 - 예매내역/예매취소" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="No-Cache">
    <meta http-equiv="imagetoolbar" content="no">
    <meta name="viewport" content="width=1024">
    <meta id="ctl00_og_title" property="og:title" content="나의 예매내역 | 영화 그 이상의 감동. HCY">
    
    
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png">
    <link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="http://localhost/HCY_CINEMA/common/images/favicon.png" type="image/x-icon">
    <title id="ctl00_headerTitle">나의 예매내역 | 영화 그 이상의 감동. HCY</title>
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
    

    <!--/각페이지 Header End--> 
    <script type="text/javascript">
    
     $(document).ready(function() {
    	if(${login!="true"} && ${nonMemLogin!="true"}){
    		alert("로그인 후 이용해주세요!")
    		location.href="http://localhost/HCY_CINEMA/user/login/login.jsp"
    		return
    	}//if
    	if(${mVO == null}){
    		alert("오류가 발생했습니다. 다시 로그인 해주세요!")
    		location.href="http://localhost/HCY_CINEMA/user/login/logout.jsp"
    	}//if
    	
    	
    });//ready
    
    function clickcancel(tNum){
		var data = {"tNum":tNum}
		$.ajax({
			url : "http://localhost/HCY_CINEMA/user/myPage/mypage_myticket_ajax.jsp",
			type : "get",
			data : data,
			dataType : "json",
			error : function(xhr){
				alert("예상치 못한 오류가 발생했습니다.")
				console.log(xhr.status)
				location.href="http://localhost/HCY_CINEMA/user/myPage/mypage_myticket.jsp"
			},
			success : function(json){
				if(json.isCancel){
				alert("예매취소가 정상적으로 이루어졌습니다.")
				$("#cancleDiv_"+tNum).html("<strong>예매 취소 완료</strong>")
				}else{
				alert("예매취소에 실패했습니다.")
				}//else
			}//success
		})//ajax
	}//clickcancel
    
        //<![CDATA[
        _TRK_CP = "/나의 예매내역";

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
	<c:import url="../include/headerContents.jsp"/>
	<!-- E Header -->

	<!-- Contaniner -->
	<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

		<!-- Contents Area -->
		 <div id="contents" class="">
        
            
            <!-- Contents Start -->
			
<div id="contents">


<div class="cols-content">
  <div class="col-aside">
		<div class="skipnaiv">
			<a href="#mycgv_contents" id="skipMycgvMenu">MYHCY 서브메뉴 건너띄기</a>
		</div>
	    <h2>MY HCY 서브메뉴</h2>
	    
	    <div class="snb">
	        <ul>
	            
	            <li class="on">
                    <a href="http://localhost/HCY_CINEMA/user/myPage/mypage_myticket.jsp" title="현재 선택">나의 예매내역 <i></i></a>
                    
                </li>
	            <li>
	                <a href="http://localhost/HCY_CINEMA/user/myPage/edit_member_info.jsp">회원정보 관리<i></i></a>
	                <ul>                      
                     
	                    <li>
                            <a href="http://localhost/HCY_CINEMA/user/myPage/edit_member_info.jsp">회원정보 수정</a>
                        </li>
	                    <li>
                            <a href="http://localhost/HCY_CINEMA/user/myPage/my_password.jsp">비밀번호 변경</a>
                        </li>
	                </ul>
	            </li>
	        </ul>
	    </div>
    </div>
	<div class="col-detail">
	    <div class="tit-mycgv">
	        <h3>예매확인/리뷰작성</h3>
	    </div>
        <div class="sect-mycgv-reserve">
            <div class="box-polaroid">
	            
	            
	        </div>
        </div>
        <!-- MY 예매내역 -->
        <div class="cols-mycgv-booking">
	        <div class="tit-mycgv">
		        <h4>MY 예매내역</h4>
	        </div>
	        
	        <%
	        MemberVO mVO = (MemberVO)session.getAttribute("mVO");
	        if(mVO==null){return;}
	        List<MyTicketVO> list = MyTicketDAO.getInstance().selectMyTicket(mVO.getId());
	        String button = "";
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd(E) HH:mm");
	        for(MyTicketVO mtVO : list){
	        	%>
	        	<div class="lst-item">
		                <div class="box-set-info">
		    		        <div class="box-number">
		    			        <em>예매번호</em>
		    			        <strong><%=mtVO.getTicketNum() %></strong>
		    		        </div>
		    		        <div class="box-info">
			        	        <div class="box-image">
			        		        <a href="http://localhost/HCY_CINEMA/common/movie_files/<%=mtVO.getMovieCode() %>_P.jpg">
			            		        <span class="thumb-image"> 
			                                <img src="http://localhost/HCY_CINEMA/common/movie_files/<%=mtVO.getMovieCode() %>_P.jpg" alt="<%=mtVO.getMname() %> 포스터" onerror="errorImage(this)">
			                                <span class="ico-grade All">
                                                All
                                            </span>
			                            </span>
			                        </a>
			                    </div>
			        	        <div class="box-contents">
			        		        <dl>
			        			        <dt>
                                            <a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie=<%=mtVO.getMovieCode() %>"><%=mtVO.getMname() %></a>
                                            
                                        </dt>
			        			        <dd>
                                            <em style="width:50px">관람극장</em> 
                                            <strong>HCY 강남</strong> 
                                            <a href="http://localhost/HCY_CINEMA/user/schedule/theater_schedule.jsp">[극장정보]</a>
                                        </dd>
			        			        <dd>
                                            <em style="width:50px">관람일시</em>
                                            <strong class="txt-red">
                                                <%=mtVO.getShowtime() %>
                                            </strong>
                                        </dd>
			        			        <dd><em style="width:50px">상영관</em> <strong><%=mtVO.getScreen() %></strong></dd>
			        			        <dd><em style="width:50px">관람인원</em> <strong><%=mtVO.getPplcount() %>명</strong></dd>
			        			        <dd><em style="width:50px">관람좌석</em> <strong><%=mtVO.getSeat() %></strong></dd>
			        		        </dl>
			        	        </div>
			        	        <div class="box-detail">
			        		        <div class="account-info">
			            		        <table summary="[영화제목] 예매 결제정보">
			            			        <caption>결제정보</caption>
			            			        <tfoot>
			            				        <tr>
			            					        <th scope="row">총 결제금액</th>
			            					        <td><strong><%=mtVO.getPrice() %></strong> 원</td>
			            				        </tr>
			            			        </tfoot>
			            			        <tbody>
			            				        <tr>
			            					        <th scope="row">결제 날짜</th>
			            					        <td><strong><%=mtVO.getTicketDate() %></strong></td>
			            				        </tr>
                                                
			            				                <tr>
			            					                <th scope="row"><%=mtVO.getPayment() %></th>
			            					                <td><strong> <%=mtVO.getPrice() %></strong> 원</td>
			            				                </tr>
                                                    
			            			        </tbody>
			            		        </table>
			        		        </div>
			        	        </div>
			                </div>
			                <div class="set-btn">
                                <input type="hidden" class="reserve-no" name="reserve-no" value="uGmTfGXTvG/WfANmsLeVtZ1qDKRAKUal6cCLJ9EjRHU=">
                                <div class="col-print" id="cancleDiv_<%=mtVO.getTicketNum()%>">   
                                <%
                                if("Y".equals(mtVO.getStatus())){
                                	if(LocalDateTime.now().isBefore(LocalDateTime.parse(mtVO.getShowtime(),formatter))){
                                		%>
                                		<input type="button" value="예매취소" class="btn btn-warning" onclick="clickcancel('<%=mtVO.getTicketNum()%>');"> 
                                		<%
                                	}//if
                                	if(LocalDateTime.now().isAfter(LocalDateTime.parse(mtVO.getShowtime(),formatter))){
                                		%>
                                		<a href="http://localhost/HCY_CINEMA/user/myPage/my_review.jsp?movie=<%=mtVO.getMovieCode() %>"><strong>리뷰쓰러가기</strong></a>
                                		<%
                                	}//if
                                	if(LocalDateTime.now().isEqual(LocalDateTime.parse(mtVO.getShowtime(),formatter))){
                                		%>
                                		<strong>현재 영화 진행중</strong>
                                		<%
                                	}//if
                                }else{
                                		%>
                                		<strong>예매 취소 완료</strong>
                                		<%
                                }//else
                                %>  
                                </div>    
                                
	        		        </div>
		                </div>
	    	        </div>
	        	<%
	        }//for
	        %>
		            
                
            
        </div>
        <!-- TODAY BEST 무비차트 -->
        
        <!-- //TODAY BEST 무비차트 -->
        
		
	    <!-- CGV 예매 관련 정책 안내 Box Type -->
	    <div class="sect-box-descri">
	        <h4>HCY 예매 관련 정책 안내</h4>
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
                                                예매취소 후 당일 환불이 원칙이나 현장 취소 시 경우에 따라 익일 처리 될 수 있음.
                                        </p></li>
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
                                                홈페이지 예매 취소는 상영시간 20분전까지 가능합니다.
                                                <br>
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
	        <!-- //Box Moudle -->
	    </div>
	    <!-- //CGV 예매 관련 정책 안내 Box Type -->
	</div>
</div>
<script type="text/javascript">
//<![CDATA[

    (function ($) {
        $(function () {

            //visualMotion.
            var sliderOptions = { 'effect': 'none', 'auto': true };
            $('#slider').visualMotion(sliderOptions);

            $('.receipt').on('click', function () {
                // 2023.07 영수증 출력 shopId 수정
                var shopId = $(this).attr("data2");
                var url = 'https://cjpay.cjsystems.co.kr/cjs/pg/adj/receipt.fo?SHOP_SYS_NO=&SHOP_ID=' + shopId + '&PAY_GRP_ID=0001&PG_CTRL_CD_P=' + $(this).attr("data");
                var win = window.open(url, "receipt", "left=0,top=o,width=440,height=800,toolbar=no,scrollbars=no");
                win.focus();
            });

            $('.hometicket').on('click', function () {
               // var url = 'http://ticket.cgv.co.kr/CGV2011/RIA/home_ticket.aspx?booking_no=' + $(this).attr("data");
                var url = 'http://ticket.cgv.co.kr/CGV2011/RIA/home_ticket.aspx?booking_no=' + $(this).attr("data") + '&isMember=N' + '&userPIN=' + "fFY%2bMXir%2bnGcU2mCggroEQ%3d%3d"; 
                var win = window.open(url, "hometicket", "left=0,top=o,width=640,height=897,toolbar=no,scrollbars=no");
                win.focus();
            });

            $('.cancel').on('click', function () {

                if (!confirm('예매를 취소하시겠습니까?\n\n※ 인터넷 예매 취소는 상영시간 20분 전까지 가능하며, \n예매 가능은 상영시간 30분 전까지 가능합니다.'))
                    return false;

                CancelReserve($(this));
            });

            function CancelReserve(obj) {
                var reserveNo = obj.parents('.set-btn').find('.reserve-no').val();

                var url = '/common/ajax/user.aspx/CancelReserveByGuest';
                var data = { 'reserveNo': reserveNo };
                var callback = function (result) {
                    obj.attr('disabled', false);
                    $('.loading').remove();
                    if (result == null || result["resultCode"] == null)
                        return;

                    var resultCode = result["resultCode"];
                    var resultMessage = result["resultData"];


                    switch (resultCode) {
                        case "-9":
                            alert('로그인 되어 있지 않습니다.\n확인 후 다시 진행해 주세요.');
                            location.href = "./login.aspx";
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
    <div class="fixedBtn_wrap topBtn">
     
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
    <li><a href="http://localhost/HCY_CINEMA/user/home/conditions.jsp">이용약관</a></li>
    <li><a href="http://localhost/HCY_CINEMA/user/home/processingPolicy.jsp"><strong>개인정보처리방침</strong></a></li>
    <li><a href="http://localhost/HCY_CINEMA/user/home/legalNotice.jsp">법적고지</a></li>
    <li><a href="http://localhost/HCY_CINEMA/user/home/refuseToCollectEmail.jsp">이메일주소무단수집거부</a></li>
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


</div></body></html>
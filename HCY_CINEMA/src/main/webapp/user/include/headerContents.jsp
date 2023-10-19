<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div class="header">			
            <!-- 서비스 메뉴 --> 
            <!-- 로그인시 메뉴 변경 필요 -->
<div class="header_content">
    <div class="contents">
        <h1 onclick=""><a href="http://192.168.10.145/HCY_CINEMA/user/home/main.jsp"><img src="http://192.168.10.145/HCY_CINEMA/common/images/logo_main.png" alt="HCY_CHINEMA"></a></h1>
        <ul class="memberInfo_wrap" style=" display: flex;list-style: none;padding: 0;">
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
<%@page import="manageMember.MemberVO"%>
<%@page import="review.ReviewDAO"%>
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
    <meta name="keywords" content="HCY, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Hcy, hcy, 예매, 상영작">
    <meta name="description" content="HCY는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. HCY홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다.">
    <meta property="og:site_name" content="영화 그 이상의 감동. HCY">
    <meta id="ctl00_og_title" property="og:title" content="내가 본 영화 < 무비로그 | 영화 그 이상의 감동. HCY">
    
    
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png">
    <link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="http://localhost/HCY_CINEMA/common/images/favicon.png" type="image/x-icon">
    <title id="ctl00_headerTitle">내가 본 영화 &lt; 무비로그 | 영화 그 이상의 감동. HCY</title>
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
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">

    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket_20141103.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/style_201410.css">
    <script src="https://img.cgv.co.kr/R2014/js/phototicket/util.js" type="text/javascript"></script>
      
    <!--add_css82 
// 평점 등록및 보기 레이어 팝업 추가-->
<script id="view_myGrade" type="text/x-jquery-tmpl">
	<div class="layer-contents on-shadow" style="width:800px;" id="watched-detailLayer">
		<div class="popwrap">
			<h1>평점보기</h1>
			<div class="pop-contents">
			<!-- Contents Addon -->
				<div id="movie_info_container" class="sect-viw-rated">
					<div class="box-image"> 
						<span class="thumb-image"> 
							<img alt="${MovieTitle} 포스터" src="${PosterImage.ThumbNailImage}" onerror="errorImage(this)"/>
							<span class="ico-grade ${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</span>
						</span> 
					</div>
					<div class="box-contents">
						<div class="title"> 
							<strong>${MovieTitle}</strong>
						</div>
						<ul class="writerinfo">
							<li class="writer-opinion">
                                <!-- 확인 필요 -->
                                {{if EggPoint == 2}}
                                <span class="egg-icon good"></span>좋았어요
                                {{else EggPoint == 1}}
                                <span class="egg-icon"></span>별로예요
                                {{else}}
                                
                                {{/if}}
                            </li>
						</ul>
						<p class="writer-comment">${CommentText}</p>
						<ul class="writerinfo">
							<li class="writer-name">${UserIdNicName}</li>
							<li>${RegistDate}</li>
							<li><button data-tarCommentIdx="${CommentIdx}" data-tarMovieIdx="${MovieIdx}" class="btn-delete" type="button" id="watched-detail-delBtn">삭제</button></li>
						</ul>
					</div>
				</div>
			<!-- //Contents Addon -->
			</div>
			<button type="button" class="btn-close" id="watched-detail-closeBtn">평점보기 팝업 닫기</button>
		</div>
	</div>
</script>

<script type="text/x-jquery-tmpl" id="writeGrade">
	<div class="layer-contents on-shadow" style="width:710px;" id="watched-registLayer">
		<div class="popup-general">
			<div class="popwrap">
				<h1>평점작성</h1>
				<div class="pop-contents write-mygrade">

					<div class="mygrade-cont">
						<div class="movietit"><strong id="pointTitle">${movieTitle}</strong></div>
						<div class="likeornot">
							<div class="writerinfo">
								<div class="box-image">
									<span class="thumb-image">   
										<img src="" alt="사용자 프로필" onerror="errorImage(this, {'type':'profile'})">                                            
										<span class="profile-mask"></span>
									</span>
								</div>
								<span class="round red on"><span class="position"><em class="see">실관람객</em></span></span>
								<span class="writer-name"></span>
							</div>

							<div class="likebox t1" id="EggSelect">
								<div class="likebox-inner">
									<label for="likeornot1-1">
										<span class="egg-icon good">
											<input type="radio" name="likeornot1" id="likeornot1-1" value="2"/>
										</span>
										<span class="txt">좋았어요~^^</span>
									</label>
								</div>
							</div>
							<div class="likebox t2">
								<div class="likebox-inner">
									<label for="likeornot1-2">
										<span class="egg-icon">
											<input type="radio" name="likeornot1" id="likeornot1-2" value="1"/>
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
								<a id="viewpopup" title="새창" href="#" target="_blank">운영원칙 <img src="http://img.cgv.co.kr/R2014/images/common/ico/ico-question-mark.png" alt="?"></a>
							</span>
							
							<div class="rbox">
								<span class="count"><strong id="text_count">0</strong>/280(byte)</span>
								<button type="button" class="round red on" id="watched-registBtn"><span>작성완료!</span></button>
							</div>
						</div>

					</div>
					<input type="hidden" id="registLayer-movieIdx" value="${movieIdx}" />
				</div>
				<button type="button" class="btn-close" id="regist-closeBtn">평점등록 팝업 닫기</button>
			</div>
		</div>
	</div>
</script>

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
<script id="charmPoint" type="text/x-jquery-tmpl">
    <div class="layer-wrap" id="watched-charmLayer" style="width:0px; top:0px;">
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
                <button type="submit" id="watched-charmRegBtn" class="round inred"><span>확인</span></button>
            </div>
            
            <input type="hidden" id="charm-commentIdx" value="${CommentIdx}" />
            <input type="hidden" id="charm-movieIdx" value="${MovieIdx}" />
            <input type="hidden" id="charmGenre_SMS1" value="${Genre_SMS1}" />

        </div>
        <button type="button" class="btn-close" id="watched-charmCloseBtn">관람 포인트 선택 팝업 닫기</button>
    </div>
</div>
</script>
<script type="text/javascript">
    $(function () {
        // 레이어 팝업 닫기
        $(document.body).on("click", "#watched-charmCloseBtn", function () {
            closeLayerProc("watched-charmLayer");
            closeLayerProc("watched-registLayer");
        });
        // 관람 포인트 선택 확인 버튼 클릭시 
        $(document.body).on("click", "#watched-charmRegBtn", function () {
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
            charmObj.genre_sms1 = $("#charmGenre_SMS1").val();

            if ($("#acting").prop("checked")) {
                charmObj.acting = "Y";
            }
            if ($("#story").prop("checked")) {
                charmObj.story = "Y";
            }
            if ($("#visual").prop("checked")) {
                charmObj.visual = "Y";
            }
            if ($("#ost").prop("checked")) {
                charmObj.ost = "Y";
            }
            if ($("#effect").prop("checked")) {
                charmObj.effect = "Y";
            }
            if ($('#emotion1').prop("checked")) {
                 charmObj.emotion1 = "Y"
            }
            if ($('#emotion2').prop("checked")) {
                 charmObj.emotion2 = "Y"
            }
            if ($('#emotion3').prop("checked")) {
                 charmObj.emotion3 = "Y"
            }
            if ($('#emotion4').prop("checked")) {
                 charmObj.emotion4 = "Y"
            }
            if ($('#emotion5').prop("checked")) {
                 charmObj.emotion5 = "Y"
            }

            if (charmObj.acting == "N" && charmObj.story == "N" && charmObj.visual == "N" && charmObj.ost == "N" && charmObj.effect == "N") {
                alert("매력 포인트를 1개 이상 선택해주세요.");
                return;
            }

            if (charmObj.emotion1 == "N" && charmObj.emotion2 == "N" && charmObj.emotion3 == "N" && charmObj.emotion4 == "N" && charmObj.emotion5 == "N") {
                alert("감정 포인트를 1개 이상 선택해주세요.");
                return;
            }
        
            charmingEdit(charmObj);
        });
    });

    // 2020.05.07 관람 포인트 선택 레이어팝업
    function charmPointPop(commentIdx) {
        // 매력지수 항목 조회
        var charmObj = app.movie();
        if (!charmObj.GetCharmPoint) {
            charmObj.GetCharmPoint = function (data, callback, error) {
                var url = '/common/ajax/point.aspx/GetCharmPoint_AddEmotion';
                app.ajax().set({ dataType: 'json', url: url, data: data, contentType: "application/json; charset=utf-8", successHandler: callback });
            }
        };
        charmObj.GetCharmPoint(JSON.stringify({ 'commentIdx': commentIdx }), resultCharmCallback);

         //결과
        function resultCharmCallback(result) {
            var $std = $(this),
	        options = {
		        '$target': $std,
		        'type': 'center',
		        'html': $('#charmPoint').tmpl(result),
                'independence': true,
		        'mask': 'none'
            };

            app.instWin.add(options);
        };
	   
        return false;
    }

    // 2020.05.07 관람 포인트 저장
    function charmingEdit(charmObj) {
        var movObj = app.movie();
        if (!movObj.setCharmEdit) {
            movObj.setCharmEdit = function (data, callback, error) {
                var url = '/common/ajax/point.aspx/setCharm_AddEmotion';
                app.ajax().set({ dataType: 'json', url: url, data: data, contentType: "application/json; charset=utf-8", successHandler: callback });
            }
        };
                
        movObj.setCharmEdit(JSON.stringify({ 'commentIdx': Number($("#charm-commentIdx").val())
                                                            , 'movieIdx': Number($("#charm-movieIdx").val())
                                                            , 'acting': charmObj.acting
                                                            , 'story': charmObj.story
                                                            , 'visual': charmObj.visual
                                                            , 'ost': charmObj.ost
                                                            , 'effect': charmObj.effect
                                                            , 'genre_sms1': charmObj.genre_sms1
                                                            , 'emotion1': charmObj.emotion1
                                                            , 'emotion2': charmObj.emotion2
                                                            , 'emotion3': charmObj.emotion3
                                                            , 'emotion4': charmObj.emotion4
                                                            , 'emotion5': charmObj.emotion5
        }), resultCharmingCallback);

        function resultCharmingCallback(result) {
            switch (result.resultCode) {
                case "1":
    
                    alert("관람 포인트가 등록되었습니다.");
                    closeLayerProc("watched-charmLayer");
                    closeLayerProc("watched-registLayer");
                break;
                case "0":
                    alert("등록 중 오류가 발생 되었습니다.");
                    break;
                default:
                    alert(result.resultCode);
                    break;
            }
        }
    }
</script>

    <!--/각페이지 Header End--> 
    <script type="text/javascript">
        //<![CDATA[
        _TRK_CP = "/무비로그/내가 본 영화";

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
    

    
<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/system.packed.js"></script></head>
<style>
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
       .rate { display: inline-block;border: 0;margin-right: 15px;}
.rate > input {display: none;}
.rate > label {float: right;color: #ddd}
.rate > label:before {display: inline-block;font-size: 1rem;padding: .3rem .2rem;margin: 0;cursor: pointer;font-family: FontAwesome;content: "\f005 ";}
.rate .half:before {content: "\f089 "; position: absolute;padding-right: 0;}
.rate input:checked ~ label, 
.rate label:hover,.rate label:hover ~ label { color: #f73c32 !important;  } 
.rate input:checked + .rate label:hover,
.rate input input:checked ~ label:hover,
.rate input:checked ~ .rate label:hover ~ label,  
.rate label:hover ~ input:checked ~ label { color: #f73c32 !important;  } 
</style>

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
            <li><a href="http://localhost/HCY_CINEMA/user/login/join.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginJoin.png" alt="회원가입"><span>회원가입</span></a></li>
            </c:if>
            <li><a href="http://localhost/HCY_CINEMA/user/mypage/my_ticket.jsp"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY PAGE"><span>MY PAGE</span></a></li>
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
			
  <input type="hidden" id="isIPIN" name="isIPIN" value="BP60aVR+lMjMwh1ja1I78YaRB8l/4pRYXrivtpf39DD7acKx19F8Ttm/YqbPXKMGU6cMYkJBBYge8tBTsexLwg==">
<%MemberVO mVO=(MemberVO)session.getAttribute("mVO"); %>
<div id="dev2014">
<div class="cols-content">
    
<div class="col-aside">
	<h2>프로필 및 서브메뉴</h2>
	<div class="box-round-dgray">
        <div class="box-round-inner">
            <div class="inner-contents-profile">
                <div class="box-image">
                	<div class="thumb-image">
                        <img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif" alt="강다연님 프로필 사진" onerror="errorImage(this, {type:'profile'})">
                        <span class="profile-mask"></span>
                        
                    </div>
                     <!-- 등급종류 클래스 : vip, rvip, vvip -->
                </div>
                <div class="box-contents">
	        		<strong><%= mVO.getId() %>님</strong>
	        		
	        		<em></em>
	        		
		        </div>
            </div>
        </div>
    </div>
    <div class="box-round-wgray">
        
    </div>
    <div class="box-round-on">
        <div class="box-round-inner">
            <div class="inner-contents-log">
                <a href="http://localhost/HCY_CINEMA/user/myPage/mypage_myticket.jsp">
                    <strong>내가 본 영화</strong>
                </a>
            </div>
        </div>
    </div>

    <!-- 화면깨짐 현상으로 div 안에 넣음//-->
    <script type="text/javascript">
    //<![CDATA[

        (function ($) {
            $(function () {

                $('#go_edit_page').on('click', function () {
                    var win = window.open("/user/popup/edit-profile.aspx", "profile", "left=0,top=o,width=445,height=440,toolbar=no,scrollbars=no");
                    win.focus();
                    return false;
                });

            });
        })(jQuery);

    //]]>
    </script>
</div>
<script type="text/javascript">
$(function(){
	$("#rating10").click(function(){
		locationLabel.textContent = '5점';
	})
	$("#rating9").click(function(){
		locationLabel.textContent = '4.5점';
	})
	$("#rating8").click(function(){
		locationLabel.textContent = '4점';
	})
	$("#rating7").click(function(){
		locationLabel.textContent = '3.5점';
	})
	$("#rating6").click(function(){
		locationLabel.textContent = '3점';
	})
	$("#rating5").click(function(){
		locationLabel.textContent = '2.5점';
	})
	$("#rating4").click(function(){
		locationLabel.textContent = '2점';
	})
	$("#rating3").click(function(){
		locationLabel.textContent = '1.5점';
	})
	$("#rating2").click(function(){
		locationLabel.textContent = '1점';
	})
	$("#rating1").click(function(){
		locationLabel.textContent = '0.5점';
	})
	
	$("#review_btn").click(function(){
		$("#frm").submit();
	})
	
});
</script>
<%
String movieCode=request.getParameter("movie");
ReviewDAO rDAO=ReviewDAO.getInstance();
String mName=rDAO.selectMovie(movieCode);

%>

<div class="col-detail">
<form name="frm" id="frm" method="post" action="http://localhost/HCY_CINEMA/user/myPage/write_review.jsp?movie=<%= movieCode %>" accept-charset="UTF-8">
<table>
	<tr>
	<td style="width:50px">아이디</td>
	<td style="text-align:left;"><input type="text" name="member_id" id="member_id" value="<%=mVO.getId()%>"></td>
	</tr>
	<tr>
	<td>별점</td>
	<td style="text-align:left;width:400px">
	<fieldset class="rate">
            <input type="radio" id="rating10" name="rating" value="10"><label for="rating10" title="5점"></label>
            <input type="radio" id="rating9" name="rating" value="9"><label class="half" for="rating9" title="4.5점"></label>
            <input type="radio" id="rating8" name="rating" value="8"><label for="rating8" title="4점"></label>
            <input type="radio" id="rating7" name="rating" value="7"><label class="half" for="rating7" title="3.5점"></label>
            <input type="radio" id="rating6" name="rating" value="6"><label for="rating6" title="3점"></label>
            <input type="radio" id="rating5" name="rating" value="5"><label class="half" for="rating5" title="2.5점"></label>
            <input type="radio" id="rating4" name="rating" value="4"><label for="rating4" title="2점"></label>
            <input type="radio" id="rating3" name="rating" value="3"><label class="half" for="rating3" title="1.5점"></label>
            <input type="radio" id="rating2" name="rating" value="2"><label for="rating2" title="1점"></label>
            <input type="radio" id="rating1" name="rating" value="1"><label class="half" for="rating1" title="0.5점"></label>
     </fieldset>
     <label id="locationLabel" style="position:absolute;top:30px">0점</label>    
	</td>
                        
	</tr>
	<tr >
	<td>영화</td>
	<td style="text-align:left;"><input type="text" value="<%= mName %>" readonly="readonly"></td>
	</tr>
	<tr>
	<td>리뷰작성</td>
	<td style="text-align:left;">
	    <textarea style="width: 400px;height: 200px" class="inputBox"
						id="info" name="info"></textarea>
	</td>
	</tr>
</table>
<div style="text-align:right;">
<input type="button" id="review_btn" name="review_btn" value="저장" class="btn btn-success">
<input type="button" id="cancel_btn" name="cancel_btn" value="취소" class="btn btn-success">
	</div>
	</form>
	</div>
</div>
<div>

</div>


    <!-- 포토티켓 확대보기 pop -->
    <div class="layer-wrap" id="div_phototicket_zoom" style="margin-left:-346px;">
	    <div class="layer-contents" id="layer_wrap_phototicket" style="width:686px;display:none;">
		    <div class="popwrap">
			    <h4>포토티켓 확대보기</h4>
			    <div class="pop-contents" id="div_pop_contents">
				    <!--이 부분에 포토티켓 확대보기 내용을 넣는다.-->
				    <!--<div class="btn_wrap"><a href="/user/mycgv/phototicket/" class="round inred"><span>내가 꾸민 포토티켓 <img src="http://img.cgv.co.kr/R2014/images/common/btn/lt.png" alt="바로가기"></span></a></div>--><!--내가꾸민포토티켓 버튼부분입니다.-->
			    </div>
		    </div>
		    <button type="button" class="btn-close" id="btn-close">닫기</button>

	    </div>
    </div>
    <!--// 포토티켓 확대보기 pop -->
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
        <!--// 포토티켓 수집 동의-->
</div>

<div class="mask" id="div_mask" style="display:none;left:0px;top:0px;width:100%;height:100%;position:fixed;z-index:100;background-color:black; opacity: 0.8;filter:alpha(opacity=80); -moz-opacity: 0.8;">

<div style="display:none;">
    <input type="hidden" name="temp_reserveNo" value="">
    <input type="hidden" name="temp_sale_no" value="">
    <input type="hidden" name="temp_image" value="">
    <input type="hidden" name="temp_arrImage" value="" desc="구분자^">
    <input type="hidden" name="temp_cinemaName" value="">
    <input type="hidden" name="temp_movieKind" value="">
    <input type="hidden" name="temp_movieAddAttribute" value="">
    <input type="hidden" name="temp_movieGrade" value="">
    <input type="hidden" name="temp_movieName" value="">
    <input type="hidden" name="temp_movieNameEng" value="">
    <input type="hidden" name="temp_screenDate" value="">
    <input type="hidden" name="temp_temp_screenNumber" value="">
    <input type="hidden" name="temp_screenTime" value="">
    <input type="hidden" name="temp_screenTimeStart" value="">
    <input type="hidden" name="temp_screenTimeEnd" value="">
    <input type="hidden" name="temp_screenName" value="">
    <input type="hidden" name="temp_representSeatInfo" value="">
    <input type="hidden" name="temp_arrSeatInfo" value="" desc="구분자^">
    <input type="hidden" name="temp_useInfo" value="">
    <input type="hidden" name="temp_arrUseInfo" value="">
    <input type="hidden" name="temp_memberReserveNo" value="">
    <input type="hidden" name="temp_viewType" value="">
    <input type="hidden" name="temp_totalCount" value="">
    <input type="hidden" name="temp_current_zoom_idx" value="0">
    <input type="hidden" name="temp_arrSpectator" value="">
    <input type="hidden" name="temp_cnt_4_spectator" value="0">

     <input type="hidden" id="status1" name="status1" value="">
     <input type="hidden" id="message1" name="message1" value="">
     <input type="hidden" id="reserveNo1" name="reserveNo1" value="">
     <input type="hidden" id="saleNo1" name="saleNo1" value="">


     <input type="hidden" id="cinemaCode1" name="cinemaCode1" value="">
     <input type="hidden" id="screenCode1" name="screenCode1" value="">
     <input type="hidden" id="screenDate1" name="screenDate1" value="">
     <input type="hidden" id="screenNumber1" name="screenNumber1" value="">
     <input type="hidden" id="movieCode1" name="movieCode1" value="">

</div>

<script id="temp_watched" type="text/x-jquery-tmpl">
<li class="movie_info_${MovieIdx}" >
    <div class="article-movie-info" >
		<div class="box-image"> 
			<a title="포스터 크게 보기" href="/movies/detail-view/?midx=${MovieIdx}">
				<span class="thumb-image"> 
				    <img alt="${Title} 포스터" src="${PosterImage.MiddleImage}" onerror="errorImage(this)"/>
                    <!-- 영상물 등급 노출 변경 2022.08.24 -->
                    <i class="cgvIcon etc age${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</i>
                    <!-- <span class="ico-grade ${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</span>-->
				</span> 
			</a> 
		</div>
		<div class="box-contents">
			<div class="title"> 
				<a href="/movies/detail-view/?midx=${MovieIdx}">
                    <strong id="strong_${MovieIdx}">${Title}</strong>
                </a>
				<p>${EnglishTitle}</p>
			</div>
			<p class="date">${ViewDateHHmmNonData}</p>
			<p class="theater">${TheaterName} ${ScreenName} ${RegistQtyNonData}</p>
            <!-- add_css82 평점 개편 -->
             <!-- 확인 필요 -->
             <ul class="writerinfo" id="wid_${WatchingIdx}">                                        
	            <li class="writer-opinion">
                    {{if EggPoint == 1}}
                    <a class='view_grade' id='wIdx_${WatchingIdx}' href='javascript:void(0);' data-movieIdx='${MovieIdx}'  data-movieTitle='${Title}'><span class='egg-icon'></span>별로예요</a>
                    {{else EggPoint == 2 }}
                    <a class='view_grade' id='wIdx_${WatchingIdx}' href='javascript:void(0);' data-movieIdx='${MovieIdx}'  data-movieTitle='${Title}'><span class='egg-icon good'></span>좋았어요</a>
                    {{else EggPoint == 0 && MyStarPoint > 0}}
                    <a class='link-gradewrite' id='wIdx_${WatchingIdx}' href='javascript:void(0);' data-movieIdx='${MovieIdx}' data-movieTitle='${Title}'></a>
                    {{else}}
                    <a class='link-gradewrite' id='wIdx_${WatchingIdx}' href='javascript:void(0);' data-movieIdx='${MovieIdx}' data-movieTitle='${Title}'>이 영화를 평가해주세요</a>
                    {{/if}}
                </li>
            </ul>
		</div>
        
		<button type="button" data="${WatchingIdx}" class="btn-del"><img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_del.gif" alt="${Title} 삭제"></button>
	</div>
</li>
</script>
<script type="text/javascript">
//<![CDATA[

/*삭제 처리를 위한 변수 추가. css*/
var delMovieOption = {
    flag : false
    , title : ""
    , idx : "" 
    , widx : ""
};

    document.domain = document.domain;

    /*외부에서 레이어 팝업 닫기 처리. mwpark_RR2015*/
    function closeLayerProc(layerId){
        $("#"+layerId).remove();
    }

    //(function ($) {
        $(function () {
            //별점 수동 적용
            $('.my-point a').point();

			/*중복 이벤트 설정 문제로 인한 리셋처리. mwpark*/
			var eventResetProc = function (){
				$('input[name*="phototicket"]').unbind( "click" );
				$('#regist_real_visitor').unbind( "click" );
				$('.btn-del').unbind( "click" );
				$('#btnPhoto').unbind( "click" );
				$('.create-phototicket').unbind( "click" );
				$('.cancel-phototicket').unbind( "click" );
				$('.view_grade').unbind( "click" );
				$('.link-gradewrite').unbind( "click" );
			}


            $('#year').val();
            var $moreButton = $('#btn_itemmore');
            var totalItemCount = 5;
            var limit = 10;
            var pageIndex = 1;
            var maxItemCount = pageIndex * limit;

            SetEventHandler();

            $(document.body).on("click", "#btn_itemmore", function () {            
                searchWatchedList();
            });
            
            function searchWatchedList() {
                var url = '/common/ajax/movielog.aspx/GetWatchedList';
                var data = {
                                'pageIndex' : ++pageIndex,
                                'pageSize' : limit,
                                'year' : $('#year').val()
                            };
                var callback = function(result) {
                    maxItemCount = maxItemCount + limit;
                    
                    if(totalItemCount <= maxItemCount)
                    {
                        $moreButton.hide();
                        maxItemCount = totalItemCount;
                    }
                    else{
                        $moreButton.find("em").text(maxItemCount);
					    $moreButton.find("i").text(totalItemCount);
					    $moreButton.focus();
                    }

                    $("#temp_watched").tmpl(result).appendTo("#watched_list_container");
                    SetEventHandler();

                    $('.class_phototicket_zoom').on('click', function (e) {
                        e.preventDefault();
                        
                        var saleNo = $(this).attr('data-saleno');
                        var reserveNo = $(this).attr('data-reserveno');

                        var cinemaCode =  $(this).attr('data-theatercode');
                        var screenCode = $(this).attr('data-screencode');
                        var screenDate =  $(this).attr('data-viewdate');
                        var screenNumber = $(this).attr('data-playnum');
                        var movieCode =  $(this).attr('data-cgvcode');
                                          

                      //  fncTemp_GetPhototicketZoom("'" + saleNo + "'", "'" + reserveNo + "'");      
                       fncTemp_GetPhototicketZoom("'" + saleNo + "'", "'" + reserveNo + "'" , "'" + cinemaCode + "'", "'" + screenCode + "'", "'" + screenDate + "'", "'" + screenNumber + "'", "'" + movieCode + "'");                       
                    });
                }

                app.ajax().get({ dataType: 'json', url: url, data: data, contentType: "application/json; charset=utf-8", successHandler: callback });
            }

            //--s-포토티켓
            //$('.article-movie-info > .set-btn a').on('click', function (e)  //
            $('.class_phototicket_zoom').on('click', function (e)  //
            {
                var saleNo = $(this).attr('data-saleno');
                var reserveNo = $(this).attr('data-reserveno');

                var cinemaCode =  $(this).attr('data-theatercode');
                var screenCode = $(this).attr('data-screencode');
                var screenDate =  $(this).attr('data-viewdate');
                var screenNumber = $(this).attr('data-playnum');
                var movieCode =  $(this).attr('data-cgvcode');


		   // fncTemp_GetPhototicketZoom("'" + saleNo + "'", "'" + reserveNo + "'");
              fncTemp_GetPhototicketZoom("'" + saleNo + "'", "'" + reserveNo + "'" , "'" + cinemaCode + "'", "'" + screenCode + "'", "'" + screenDate + "'", "'" + screenNumber + "'", "'" + movieCode + "'");                       
                return ;


                var movieidx = $(this).attr('data-movieidx');
                var phototicketImgUrl = "";     //$(this).attr('data-image');

              //  if (saleNo == "" || reserveNo == "") {
                if (saleNo == "" || reserveNo == ""|| cinemaCode == "" || screenCode == "" || screenDate == "" || screenNumber == "" || movieCode == "" ) {
                    return;
                }

                var url = '/common/ajax/user.aspx/GetPhotoTicketDetail';
              //  var data = { 'saleNo': "'" + saleNo + "'", 'reserveNo': "'" + reserveNo + "'" };
                var data = { 'saleNo': "'" + saleNo + "'", 'reserveNo': "'" + reserveNo + "'" , 'cinemaCode': "'" + cinemaCode + "'" , 'screenCode': "'" + screenCode + "'" , 'screenDate': "'" + screenDate + "'" , 'screenNumber': "'" + screenNumber + "'" , 'movieCode': "'" + movieCode + "'"};

                var $std = $("#phototicket_popup_" + movieidx); ; //$(this);
                var callback = function (result) {
                    if (result == null || result.data == null)
                    {
                        return;
                    }
                    else if ("0" == result.result)
                    {
                        alert(result.msg)
                        return;
                    }

                    options = {
                        '$target': $std,
                        'html': $('#temp_phototicket').html(),
                        'position': 'fixed',
                        'mask': 'true'
                    };
                    app.instWin.add(options);

                    //item setting
                    if ($('#phototicket_item')) {
                        $('#temp_phototicket_item').tmpl(result.data).appendTo($('#phototicket_item'));
                    }

                    $('#layer_wrap_phototicket').center();
                    //$('layer_wrap_phototicket').center();
                    //$('#temp_phototicket').center();
                    
                }

                app.ajax().get({ dataType: 'json', url: url, data: data, contentType: "application/json; charset=utf-8", successHandler: callback });

                //$('layer_wrap_phototicket').show();

                return false;
            });



                //팝업 닫기 포토동의
                jQuery(document).ready(function () {
                    $('.photi_agree .btn-close').click(function () {
                        $('.layer-wrap.photi_agree').hide();
                    });
                });


              
                                 
               


               

            $('#btn-close').on('click', function () {
                //팝업삭제
                $('#layer_wrap_phototicket').hide();
                $(".mask").hide();
                return false;
            });
            //--e-포토티켓
            
            function SetEventHandler() {
			
				eventResetProc();
				
                $('.my-point a').point();

                $('input[name*="phototicket"]').on('click', function () {
                    alert('준비중입니다.');
                });

                $('#regist_real_visitor').on('click', function () {
                    var win = window.open("/user/popup/check-realvisitor.aspx", "realvisitor", "left=0,top=o,width=600,height=440,toolbar=no,scrollbars=no");
                    win.focus();
                });

                $('.btn-del').on('click', function () {

                    if(!confirm('내가본영화 목록에서 삭제됩니다.\n삭제하시겠습니까?')) {
                        return;
                    }

                    var watchingIdx = $(this).attr('data');
                    var url = '/common/ajax/movielog.aspx/RemoveWatchedMovie';
                    var data = {'watchingIdx' : parseInt(watchingIdx)};
                    var callback = function(result) {
                        if(result == "1") {
                            alert("삭제되었습니다.");
                            location.href = "./watched.aspx";
                        }
                        else{
                            alert("삭제 중 오류가 발생 되었습니다");
                        }
                    }

                    app.ajax().set({ dataType: 'json', url: url, data: JSON.stringify(data), contentType: "application/json; charset=utf-8", successHandler: callback });
                });



                
                  $('#btnPhoto').on('click', function () {
                        if ($('input:radio[name="agree_photo"]:checked').val() == "Y") {

                            alert("포토티켓 본인 사진 및 이미지 수집설정이\n완료되었습니다.");   
                            getAgree();       
                            return true;
                        }
                        else {

                            if (confirm("동의하지 않으실 경우,  포토티켓을 이용하실 수 없습니다.\n계속하시겠습니까?\n단, 동의 철회시에도 기존 이용 내역은 조회가 가능합니다.")) {
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
                        var reserveNo =$('#reserveNo1').val();
                        var saleNo =$('#saleNo1').val();


                        var cinemaCode =  $('#cinemaCode1').val();
                        var screenCode =  $('#screenCode1').val();
                        var screenDate =  $('#screenDate1').val();
                        var screenNumber =  $('#screenNumber1').val();
                        var movieCode =  $('#movieCode1').val();


                        var agreeflag = "1";
               
                       $.support.cors = true;
                        //포토시작1
                        $.ajax({
                            type: "POST",
                            url: '/common/ajax/theaters.aspx/SetUserInfoAgreePHOTOREG',
                            data: "{ usercode :'" + usercode + "', agreeflag : '" + agreeflag + "'}",

                            contentType: "application/json; charset=utf-8",
                            dataType: 'json',
                            success: function (result) {
                              //    alert(result.d.toString());
                                switch (result.d.toString()) {
                                    case "0":
                                        // 등록되지 않음
                                        break;
                                    case "1":
                                        // 등록완료
                                        switch (status) {
                                                case '1':                                           
                                                   // openMakePhotoTicketPopup(reserveNo, saleNo);
                                                   openMakePhotoTicketPopup(reserveNo, saleNo , cinemaCode  ,screenCode , screenDate, screenNumber, movieCode );
                                                    break;
                                                case '97':
                                                    alert('동반관람자가 이미 포토티켓을 제작하셨습니다.'); // TODO : 문구확인필요
                                                    break;
                                                case '98':
                                                    alert('이미 포토티켓을 제작하셨습니다.\n내가 만든 포토티켓에서 확인해주세요.');
                                                    break;
                                                default:
                                                    alert(message);
                                                    break;
                                            }
                                        break;
                                    default:
                                       // alert('Error result Value : ' + result);
                                        break;
                                }
                            }
                        });

                        

                    //포토끝

                 }

                function mobileChk()
                {
                    var re = true;
                    var ua = window.navigator.userAgent.toLowerCase();
                    //alert(ua);
    
                    var arrList = new Array("iphone", "android", "opera", "bada", "ipad");
                    for (var i = 0; i < arrList.length; i++) {
                        if (ua.indexOf(arrList[i]) != -1) { 
                            re = false; //alert('모바일 브라우저입니다'); break;
                        }
                    }

                    //사파리가 있고 ,크롬이 없다면
                    if (ua.indexOf("safari") != -1 && ua.indexOf("chrome") == -1) {                        
                        re = false; //alert('사파리 브라우져');
                    }
                    return re;
                }

                $('.create-phototicket').on('click', function () {
                    //모바일 여부 체크 20180524
                    if(!mobileChk())
                    {
                        alert("CGV포토티켓앱 다운받으시고 이용 가능합니다.");
                        return false;
                    }

                    var status = $(this).attr("data-status");
                    var message = $(this).attr("data-message");
                    var reserveNo = $(this).attr("data-reserveno");
                    var saleNo = $(this).attr("data-saleno");


                    var cinemaCode = $(this).attr("data-theatercode");
                    var screenCode = $(this).attr("data-screencode");
                    var screenDate = $(this).attr("data-viewdate");
                    var screenNumber = $(this).attr("data-playnum");
                    var movieCode = $(this).attr("data-cgvcode");

                     $('#status1').val(status);
                     $('#message1').val(message);
                     $('#reserveNo1').val(reserveNo);
                     $('#saleNo1').val(saleNo);


                     $('#cinemaCode1').val(cinemaCode);
                     $('#screenCode1').val(screenCode);
                     $('#screenDate1').val(screenDate);
                     $('#screenNumber1').val(screenNumber);
                     $('#movieCode1').val(movieCode);
                   
                                        
                    var usercode = $("#isIPIN").val();
                    //var subStr = "ipin=" + encodeURIComponent(usercode);


                 $.ajax({
                    type: "POST",
                    url: '/common/ajax/theaters.aspx/SetUserInfoAgreePHOTO',
                    data: "{'usercode':'" + usercode + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: 'json',
                    success: function (result) {
                
                        switch (result.d.toString()) {
                            case "2":
                              $("input:radio[id='agree1']").attr("checked", true);
                                $('#agree').show();
                                // 등록되지 않음
                                break;
                            case "0":

                                $("input:radio[id='agree2']").attr("checked", true);
                                $('#agree').show();
                                // 등록되지 않음
                                break;
                            case "1":                         
                                // 등록완료
                                //$("input:radio[id='rd_agree_preferPhototicket_Y']").attr("checked", true);                               
                                    switch (status) {
                                        case '1':     
                                                                                                                                                                                                                                   
                                        // openMakePhotoTicketPopup(reserveNo, saleNo);  // 오프라인 확장추가
                                           openMakePhotoTicketPopup(reserveNo, saleNo , cinemaCode , screenCode , screenDate , screenNumber , movieCode);  // 오프라인 확장추가
                                            break;
                                        case '97':
                                            alert('동반관람자가 이미 포토티켓을 제작하셨습니다.'); // TODO : 문구확인필요
                                            break;
                                        case '98':
                                            alert('이미 포토티켓을 제작하셨습니다.\n내가 만든 포토티켓에서 확인해주세요.');
                                            break;
                                        default:
                                            alert(message);
                                            break;
                                    }
                                break;
                            default:
                               // alert('Error result Value : ' + result);
                                break;
                        }
                    }
                });

                    //포토끝
                });
                

                $('.cancel-phototicket').on('click', function () {
                    var saleNo = $(this).attr("data-saleno");
                    var url = '/common/ajax/user.aspx/CancelPhotoTicket';
                    var data = { 'saleNo': saleNo };
                    var callback = function (result) {
                        if (result == null)
                            return;

                        if (parseInt(result['Result']) == 1) {
                            alert('포토티켓 취소가 완료되었습니다.\n다시 포토티켓 만들기가 가능합니다.');
                            location.replace('./watched.aspx');
                        }
                        else {
                            alert(result['Msg']);
                        }
                    };

                    if (!confirm('포토티켓을 취소하시겠습니까?\n결제하신 포토티켓 금액은 환불처리 됩니다.'))
                        return false;

                    app.ajax().set({ dataType: 'json', url: url, data: JSON.stringify(data), contentType: "application/json; charset=utf-8", successHandler: callback });
                });

                function openMakePhotoTicketPopup(reserveNo, saleNo, cinemaCode , screenCode , screenDate , screenNumber , movieCode)    //포토티켓 만들기, 결제화면
                {                 
                    $.support.cors = true;                   

//                    if( $.trim(reserveNo) == "") {
//                        alert("CGV포토티켓은 온라인예매(홈페이지/모바일) 영화에 한해 만들기 가능합니다.");
//                        return;
//                    }

                    var url = 'http://phototicket.cgv.co.kr/Popup/Editor/photoeditor.aspx';

                    var subStr = "saleno=" + encodeURIComponent(saleNo)
                                + "&reserveno=" + encodeURIComponent(reserveNo)
                                
                                + "&cinemacode=" + encodeURIComponent(cinemaCode)
                                + "&screencode=" + encodeURIComponent(screenCode)
                                + "&screendate=" + encodeURIComponent(screenDate)
                                + "&screennumber=" + encodeURIComponent(screenNumber)
                                + "&moviecode=" + encodeURIComponent(movieCode)
                                + "&ipin="+ encodeURIComponent('BP60aVR+lMjMwh1ja1I78YaRB8l/4pRYXrivtpf39DD7acKx19F8Ttm/YqbPXKMGU6cMYkJBBYge8tBTsexLwg==')
                                + "&memberid="+ encodeURIComponent('gentlebr2z');
                       
         

                  

                    $.ajax({

                        type: "POST"
                            , url: "http://phototicket.cgv.co.kr/Movie/TicketInfo.aspx?" + subStr                           
                            //, data: subStr
                            //, dataType : "json"
                        , success: function (jSonResult)
                        {                     
                            if ("1" == jSonResult.result) //성공
                            {
                                if(jSonResult.data.printAvailableInThisCinemaOnly == "Y")
                                {
                                    if (!confirm("[" + jSonResult.data.CinemaName + "]에서만 출력이 가능합니다.\n포토티켓을 제작하시겠습니까?")) {
                                        return false;
                                    }
                                }
                                var memberreserveno = jSonResult.data.DP_ReserveNo;        //data.Cinema.Name;

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
                                mapInput1.value = "";   //memberreserveno;
                                mapForm.appendChild(mapInput1);

                                var mapInput2 = document.createElement("input");
                                mapInput2.type = "text";
                                mapInput2.name = "SaleNo";
                                mapInput2.value = saleNo;
                                mapForm.appendChild(mapInput2);
                                //****  cinemaCode , screenCode , screenDate , screenNumber , movieCode

                                var mapInput3 = document.createElement("input");
                                mapInput3.type = "text";
                                mapInput3.name = "CinemaCode";
                                mapInput3.value = cinemaCode;
                                mapForm.appendChild(mapInput3);

                                var mapInput4 = document.createElement("input");
                                mapInput4.type = "text";
                                mapInput4.name = "ScreenCode";
                                mapInput4.value = screenCode;
                                mapForm.appendChild(mapInput4);

                                var mapInput5 = document.createElement("input");
                                mapInput5.type = "text";
                                mapInput5.name = "ScreenDate";
                                mapInput5.value = screenDate;
                                mapForm.appendChild(mapInput5);

                                var mapInput6 = document.createElement("input");
                                mapInput6.type = "text";
                                mapInput6.name = "ScreenNumber";
                                mapInput6.value = screenNumber;
                                mapForm.appendChild(mapInput6);

                                var mapInput7 = document.createElement("input");
                                mapInput7.type = "text";
                                mapInput7.name = "MovieCode";
                                mapInput7.value = movieCode;
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
                                mapInput9.value ="gentlebr2z";
                                mapForm.appendChild(mapInput9);

                                var mapInput10 = document.createElement("input"); 
                                mapInput10.type = "text"; 
                                mapInput10.name = "infotype"; 

                                if(reserveNo.toString() == "")
                                    mapInput10.value ="O"; 
                                else 
                                    mapInput10.value ="V"; 
                                mapForm.appendChild(mapInput10);

                                //****




                                document.body.appendChild(mapForm);

                                map = window.open('about:blank', 'MakePhotoTicket', 'width=950, height=650, left=50%, top=50%, toolbars=no, scrollbars=no, menubar=no, resizable=yes');

                                if (map) {
                                    mapForm.submit();
                                } else {
                                    alert('팝업이 허용되어 있지 않습니다.');
                                }

                                document.body.removeChild(mapForm);
                            }
                            else
                            {
                         
                                alert(jSonResult.msg);
                                return false;
                            }
                        }
                        , error: function (xhr, status, error)
                        {
                       
                            alert(error + "\n" + status + "\n" + xhr.responseText);
                        }
                    });
                }

                jQuery.fn.center = function ()
                {
                    this.css("position","fixed");
                    this.css("top", "50%");
                    this.css("left", "50%");
                    this.css("margin-top", "-300px");
                    this.css("margin-left", "-250px");
                    return this;
                }


                // 평점 쓰기/보기 팝업 dev_css82  삭제 예정
                /*$('.write_point').on('click', function (e) {
                    openPointPopUp($(this));
                    return false;
                });*/


            //SetEventHandler 이벤트7
            //alert("SetEventHandler7");
            $('.view_grade').on('click', function () {
                var $std = $(this);
                resetDelOption();
                delMovieOption.widx = $(this).attr('id');
                
                app.movie().getCommentMy({ 'movieIdx': parseInt($(this).attr("data-movieIdx")) }, viewResult);
                function viewResult(result){    
                    var options1 = { '$target': $std,
                                        'type': 'center',
                                        'html': $('#view_myGrade').tmpl(result),
                                        'independence': true,
                                        'mask': 'none'
                    };
                    
                    app.instWin.add(options1);
                    viewLayerSetting();
                    
				    return false;
                }  
            });

            
            function viewLayerSetting(){
                $("#watched-detail-delBtn").on("click" , function(){    /*평점 삭제 클릭 Event. mwpark_RR2015*/
                    var comIdx = $(this).attr("data-tarCommentIdx");
                    var movIdx = $(this).attr("data-tarMovieIdx");
                    delProcess(comIdx , movIdx);
                });
            };

			
            //SetEventHandler 이벤트8
            //alert("SetEventHandler8");
			$('.link-gradewrite').on('click', function () {
                resetDelOption();
                delMovieOption.widx = $(this).attr('id');
                
                var obj = {};
                obj.movieIdx = $(this).attr("data-movieIdx");
                obj.movieTitle = $(this).attr("data-movieTitle");
                var $std = $(this),
                options = { '$target': $std,
                                'type': 'center',
                                'html': $('#writeGrade').tmpl(obj),
                                'independence': true,
                                'mask': 'none'
                };
				app.instWin.add(options);
                $('#EggSelect').addClass('on');
                $("input:radio[name='likeornot1']:radio[value='2']").attr("checked",true);
				likeOrNot();
				return false;    
            });
           
            //likebox t1
            
            function likeOrNot() {
                $('.likebox label').on('click', function () {   
                    var $wrap = $(this).parents('.likebox');
					$wrap.siblings().removeClass('on');
					$wrap.addClass('on');
                });

				$('.likebox input').on('focusin', function() {  
                    var $wrap = $(this).parents('.likebox');
					$wrap.siblings().removeClass('on');
					$wrap.addClass('on');
				});

				$('#viewpopup').on('click', function () {   
                    var $std = $(this),
                    options = { '$target': $std,
                                    'type': 'center',
                                    'html': $('#temp_view').html(),
                                    'independence': true,
                                    'mask': 'none'
                    };
					app.instWin.add(options);
					return false;
                });

                $("#regist-closeBtn").on("click" , function(){  
                    $("#watched-registLayer").remove();
                });

                $('#textReviewContent').count({ 
                    useMember: true,
                    callback: function (c) {    $('#text_count').text(c);   }
                });

                // 평점 등록하기 버튼 클릭
                $("#watched-registBtn").on("click" , function(){
                    var textReviewContent = $('#textReviewContent').val();

                    textReviewContent = textReviewContent.replace(/^\s+/, "");
                    textReviewContent = textReviewContent.replace(/\s+$/g, "");
                    textReviewContent = textReviewContent.replace(/\n/g, "");
                    textReviewContent = textReviewContent.replace(/\r/g, "");

                    if (textReviewContent == "") {
                        alert("내용을 입력하지 않았습니다.");
                        $('#textReviewContent').focus();
                        return;
                    }

                    // 2018.04.26 박인선 실관람평 10자 미만 등록불가
                    if (textReviewContent.replace(/\s*/g,"").length < 10) {
                        alert("문자를 포함하여 10자 이상(공백 제외) 작성하셔야 등록됩니다.");
                        $('#textReviewContent').focus();
                        return;
                    }  

                    app.movie().getViewUser({ 'movieIdx': Number($("#registLayer-movieIdx").val()), 'isOpenView': true }, callback);

                    function callback(result){
                        var resultCode = result.resultCode;
                        if(resultCode.indexOf("이미 작성하셨습니다") > 0) {
                            resultCode = "해당 영화에 대한 평점을 이미 작성하셨습니다.\n평점은 영화당 1회만 작성할 수 있습니다.\n수정을 원하는 경우 평점수정 기능을 이용해주시기 바랍니다.";
                        }
                        switch (resultCode) {
                            case "-1":
                                alert("로그인이 필요한 서비스 입니다");
                                closeLayerProc("watched-registLayer");
                                break;
                            case "0":
                                addData();
                                break;
                            case "1":
                                alert("해당 영화의 관람내역이 존재하지 않습니다.");
                                closeLayerProc("watched-registLayer");
                                break;
                            default:
                                alert(resultCode);
                                closeLayerProc("watched-registLayer");
                                break;
                        }
                    }
                });
            };

            function addData(){
                var isCJOneMember = "True";
                if (isCJOneMember == "False") {
                    if (confirm("고객님은 CJONE 온라인 통합회원이 아니십니다.\n'실관람객 리뷰' 포인트 적립을 원하시면\nCJ ONE 온라인통합회원으로 전환부탁드립니다.") == true) {
                        window.open("https://www.cjone.com/cjmweb/join.do?coopco_cd=7010&brnd_cd=1000", "_newtab");
                        return false;
                    }
                }
                var eggValue = $("input:radio[name='likeornot1']:checked").val();

                var defaults = {
                    'flag': 'M',
                    'idx': Number($("#registLayer-movieIdx").val()),
                    'textReviewContent': $('#textReviewContent').val(),
                    'open_info': true,                                                  /*평점 개편이후 실관람객정보 공개 체크박스가 삭제 됫으므로 무조건 true. mwpark_RR2015*/
                    'chk_facebook': false,
                    'chk_twitter': false,
                    'rdo_User': 1,
                    'addUserType': '',
                    'point': '',                                                            /*평점 개편이후 평점 등록시 사용하지 않는 컬럼. 기존 처리 메소드의 파라미터 상태를 유지하기 위해 빈값을 넘김.mwpark_RR2015*/
                    'eventIdx': 0,
                    'url': escape(location.href),
                    'eggPoint' : Number(eggValue)                               /*평점 개편이후 평점 등록시 새롭게 추가된 컬럼. mwpark_RR2015*/
                };
                app.movie().setPointReview(JSON.stringify(defaults), resultCallback);
                
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
                            afterUIProc($("#registLayer-movieIdx").val() , $("input:radio[name='likeornot1']:checked").val());

                            if(confirm("관람평이 등록되었습니다.\n임직원의 경우 실관람평 작성 포인트는 지급되지 않습니다.\n관람하신 영화의 [관람 포인트]를\n선택하시겠습니까?")){
                                charmPointPop(result.resultIndex);    
                                closeLayerProc("watched-registLayer");
                            }else{
                                closeLayerProc("watched-registLayer");                            
                            }
                            break;
                        case "01":
                            afterUIProc($("#registLayer-movieIdx").val() , $("input:radio[name='likeornot1']:checked").val());

                            if (confirm("관람일 포함 7일 이내 관람평이 등록되어\nCJ ONE 20P가 지급되었습니다.\n관람하신 영화의 관람 포인트를\n선택해주시면 30P를 추가 지급해드립니다.\n\n포인트는 최초 1회만 지급됩니다.") ){    //확인
                                charmPointPop(result.resultIndex);
                                closeLayerProc("watched-registLayer");
                            }else{
                                closeLayerProc("watched-registLayer");
                            }
                            break;
                        case "02":
                            afterUIProc($("#registLayer-movieIdx").val() , $("input:radio[name='likeornot1']:checked").val());
                            
                            if (confirm("관람일 포함 7일 이내 관람평이 등록되어\nCJ ONE 30P가 지급되었습니다.\n(아트하우스 Club 회원 추가 10P 적립 포함)\n관람하신 영화의 관람 포인트를\n선택해주시면 30P를 추가 지급해드립니다.\n\n포인트는 최초 1회만 지급됩니다.") ){    //확인
                                charmPointPop(result.resultIndex);
                                closeLayerProc("watched-registLayer");
                            }else{
                                closeLayerProc("watched-registLayer");
                            }
                            break;
                        case "3":
                            afterUIProc($("#registLayer-movieIdx").val() , $("input:radio[name='likeornot1']:checked").val());                            
                            if (isCJOneMember == "False") {
                                if(confirm("평점 작성이 완료되었습니다. \n현재 고객님은 CJ ONE 온라인 통합회원이 아니므로 '실관람객 리뷰' 포인트 적립은 불가합니다.\n이 영화의 관람 포인트를 추가 선택하시겠습니까?")){
                                    charmPointPop(result.resultIndex);
                                    closeLayerProc("watched-registLayer");
                                }else{
                                    closeLayerProc("watched-registLayer");
                                }
                            }else {
                                if(confirm("관람평이 등록되었습니다.\n임직원의 경우 실관람평 작성 포인트는 지급되지 않습니다.\n관람하신 영화의 [관람 포인트]를\n선택하시겠습니까?")){
                                    charmPointPop(result.resultIndex);
                                    closeLayerProc("watched-registLayer");
                                }else{
                                    closeLayerProc("watched-registLayer");
                                }
                            }
                            break;
                        case "4":
                            afterUIProc($("#registLayer-movieIdx").val() , $("input:radio[name='likeornot1']:checked").val());
                            if(confirm("고객님은 최초 1회 <" + result.resultTitle + "> 실관램객 리뷰 작성이 " + result.resultData  + " 에 이미 참여 하셨습니다.\n관람 포인트를 등록 하시겠습니까?")){
                                charmPointPop(result.resultIndex);
                                closeLayerProc("watched-registLayer");
                            }else{
                                closeLayerProc("watched-registLayer");
                            }
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
            
               
            function afterUIProc(movieIdx , eggPoint){
                $(".movie_info_" + movieIdx + " .link-gradewrite").remove();
                if(eggPoint == 2){
                    var templ = "<a id='"+delMovieOption.widx+"' class='view_grade' href='javascript:void(0)' data-movieIdx='"+movieIdx+"'><span class='egg-icon good'></span>좋았어요</a>";
                    $(".movie_info_" + movieIdx + " .writer-opinion").append(templ);
                }else{
                    var templ = "<a id='"+delMovieOption.widx+"' class='view_grade' href='javascript:void(0)' data-movieIdx='"+movieIdx+"'><span class='egg-icon'></span>별로예요</a>";
                    $(".movie_info_" + movieIdx + " .writer-opinion").append(templ);
                }  
                  
                SetEventHandler();   
            }
             /*
             평점 삭제 후 UI 즉시 반영을 위한 함수 css82
             */ 
            function setWidx(){
                delMovieOption.widx="";
            }
            function setDelOption(mix){
                delMovieOption.flag = true;
                delMovieOption.idx = mix;
                var t = $('#strong_'+mix).text();
                delMovieOption.title = t;
            }
            function resetDelOption(){
                delMovieOption.flag = false;
                delMovieOption.idx = "";
                delMovieOption.title = "";
                delMovieOption.widx = "";
            }
            function beforeUIProc(){
                if(delMovieOption.flag){
                    var mIdx = delMovieOption.idx;
                    var tit = delMovieOption.title;
                    $(".movie_info_" + mIdx + " .view_grade").remove();
                    var templ = "<a class='link-gradewrite' id='"+delMovieOption.widx+"' href='javascript:void(0);' data-movieIdx='"+mIdx+"' data-movieTitle='" + tit + "'>이 영화를 평가해주세요</a>";
                    $(".movie_info_" + mIdx + " .writer-opinion").append(templ);
                    SetEventHandler();
                }
                
            }
            
            function delProcess(commentIdx , movieIdx){
                app.movie().removePointCheck(JSON.stringify({ 'commentIdx': parseInt(commentIdx), 'mIdx': parseInt(movieIdx) }), callback_pc);
                    function callback_pc(result) {
                        var resultCode = result.resultCode;
                    switch (resultCode) {
                         case "-1":
                            app.goLogin();
                            break;
                        default:
                            var msg = "작성한 평점을 삭제하시겠습니까?";
                            var onePointMsg = ""
                            if(parseInt(resultCode) > 0 ){
                                onePointMsg = "관람평을 삭제하실 경우\n지급된 포인트는 차감됩니다.\n삭제하시겠습니까?"
                                msg = onePointMsg;
                            }
                            if (confirm(msg))
                            {
                                setDelOption(movieIdx);
                                app.movie().removePoint(JSON.stringify({ 'commentIdx': parseInt(commentIdx), 'mIdx': parseInt(movieIdx), 'pointCode': parseInt(resultCode) }), del_callback);
                            }
                            break;
                    }
                }
            };
            
            
            function del_callback(result){//삭제 처리 start
                var resultCode = result.resultCode;
                    switch (resultCode) {
                        case "-1":
                            app.goLogin();
                            break;
                        case "0":
                            closeLayerProc("watched-detailLayer");

                            if (confirm("삭제가 완료되었습니다.\n새로 작성하시겠습니까?")) {
                                beforeUIProc();
                                var reComment = $("#"+delMovieOption.widx);
                                reComment.click();
                            }else{
                                closeLayerProc("watched-detailLayer");
                                beforeUIProc();
                                resetDelOption();
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
        });
    //})(jQuery);

    function SetClosePointPopup(targetObj, value) {
        var htmlText = value == '' ? '0.0' : value;

        targetObj.find('.write_point').attr('data-cidx', value);
        targetObj.find('.my-point a > em').html(htmlText);

        $('.my-point a').point();
    }

	function fncMoveTo(thisObj)
    {
        var url = 'http://phototicket.cgv.co.kr/Phototicket/HTML/myPhototicket.aspx';

        // TODO : 라이브 소스로 수정예정.
        var mapForm = document.createElement("form");
        var pagename = "myPhotoTicket";
        mapForm.target = pagename;
        mapForm.method = "POST";
        mapForm.action = url;

        var reserveNo = $(thisObj).attr("data-reserveno");
        var saleNo = $(thisObj).attr("data-saleno");

        var mapInput = document.createElement("input");
        mapInput.type = "text";
        mapInput.name = "ReserveNo";
        mapInput.value = reserveNo;
        mapForm.appendChild(mapInput);

        var mapInput2 = document.createElement("input");
        mapInput2.type = "text";
        mapInput2.name = "SaleNo";
        mapInput2.value = saleNo;
        mapForm.appendChild(mapInput2);
       
        document.body.appendChild(mapForm);

        map = window.open('about:blank', pagename, 'scrollbars=yes, resizable=yes');

        if (map) {
            mapForm.submit();
        } else {
            alert('팝업이 허용되어 있지 않습니다.');
        }

        $('#btn-close').click();

        document.body.removeChild(mapForm);
    }
//]]>


// function fncTemp_GetPhototicketZoom(sale_No_FromCGV, reserve_No_FromCGV)   
 function fncTemp_GetPhototicketZoom(sale_No_FromCGV, reserve_No_FromCGV , cinema_Code_FromCGV , screen_Code_FromCGV , screen_Date_FromCGV , screen_Number_FromCGV , movie_Code_FromCGV)
{
    //ticketInfo 를 중계서버로 호출한다.
    //fncTempSeatInfo_makeArr 를 통해서 좌석정보를 저장한다.

//    var sale_No_FromCGV = "2014081376772873";
//    var reserve_No_FromCGV = "";

    sale_No_FromCGV = sale_No_FromCGV.replace(/'/g, "");
    reserve_No_FromCGV = reserve_No_FromCGV.replace(/'/g, "");


    cinema_Code_FromCGV = cinema_Code_FromCGV.replace(/'/g, "");
    screen_Code_FromCGV = screen_Code_FromCGV.replace(/'/g, "");
    screen_Date_FromCGV = screen_Date_FromCGV.replace(/'/g, "");
    screen_Number_FromCGV = screen_Number_FromCGV.replace(/'/g, "");
    movie_Code_FromCGV = movie_Code_FromCGV.replace(/'/g, "");

    var subStr = "saleno=" + encodeURIComponent(sale_No_FromCGV)
                 + "&reserveno=" + encodeURIComponent(reserve_No_FromCGV)
                 
                 + "&cinemacode=" + encodeURIComponent(cinema_Code_FromCGV)
                 + "&screencode=" + encodeURIComponent(screen_Code_FromCGV)
                 + "&screendate=" + encodeURIComponent(screen_Date_FromCGV)
                 + "&screennumber=" + encodeURIComponent(screen_Number_FromCGV)
                 + "&moviecode=" + encodeURIComponent(movie_Code_FromCGV)
                 + "&ipin="+ encodeURIComponent('BP60aVR+lMjMwh1ja1I78YaRB8l/4pRYXrivtpf39DD7acKx19F8Ttm/YqbPXKMGU6cMYkJBBYge8tBTsexLwg==')
                 + "&memberid="+ encodeURIComponent('gentlebr2z');

    $.ajax({
        type: "POST"
            , url: tempurl + "/Movie/TicketInfo.aspx?" + subStr
            //, data: subStr
        , success: function (jSonResult)
        {
            if ("1" == jSonResult.result) //성공
            {
                var CinemaName = jSonResult.data.CinemaName;        //data.Cinema.Name;
                var MovieKind = jSonResult.data.MovieKind;        //data.MovieKind;
                var MovieAddAttribute = jSonResult.data.MovieAddAttribute;        //data.MovieKind;
                var MovieGrade = jSonResult.data.MovieGrade;        //data.MovieGrade;
                var MovieName = jSonResult.data.MovieName;        //data.MovieName;
                var MovieNameEng = jSonResult.data.MovieNameEng;        //data.MovieNameEng;
                var ScreenName = jSonResult.data.ScreenName;        //data.ScreenName;
                var DP_ScreenDate = jSonResult.data.ScreenDate;        //data.ScreenDate;
                var DP_ScreenTimeStart = jSonResult.data.ScreenTimeStart;        //data.ScreenTimeStart;
                var DP_ScreenTimeEnd = jSonResult.data.ScreenTimeEnd;        //data.ScreenTimeEnd;
                var UseInfo = jSonResult.data.UseInfo;        //data.UseInfo;
                var DP_ReserveNo = jSonResult.data.DP_ReserveNo;        //"예매번호 " + reserveNo;
                var DP_MovieMemberCount = jSonResult.data.DP_MovieMemberCount;        //data.ScreenNumber + " 회";
                var ViewType = jSonResult.data.ViewType;        //DP_ViewType;

                var TicketImage = jSonResult.data.TicketImage;        //이미지URL;
                //                var TotalCount = Number("0" + jSonResult.data.Imageinfo.length);

                var arrTicketImage = "";

                var TotalCount = Number(jSonResult.data.Imagecount);

                for (var j = 0; j <= TotalCount - 1; j++)
                {
                    arrTicketImage += jSonResult.data.Imageinfo[j].image + "^";
                }

                // 09:20(오전)~11:23(오전)
                var DP_ScreenTime = jSonResult.data.DP_ScreenTime;

                fncTemp_Seat_makeArr(jSonResult.data.SeatInfo, TotalCount, UseInfo);        //data.SeatInfo;

                $("input[name=temp_reserveNo]").val(reserve_No_FromCGV); //다른 화면에서 넘어오는 경우대를 대비
                $("input[name=temp_sale_no]").val(sale_No_FromCGV);
                $("input[name=temp_image]").val(TicketImage);
                $("input[name=temp_arrImage]").val(arrTicketImage);
                $("input[name=temp_cinemaName]").val(CinemaName);
                $("input[name=temp_movieKind]").val(MovieKind);
                $("input[name=temp_movieAddAttribute]").val(MovieAddAttribute);
                $("input[name=temp_movieGrade]").val(MovieGrade);
                $("input[name=temp_movieName]").val(MovieName);
                $("input[name=temp_movieNameEng]").val(MovieNameEng);
                $("input[name=temp_screenDate]").val(DP_ScreenDate);
                $("input[name=temp_temp_screenNumber]").val(DP_MovieMemberCount);
                $("input[name=temp_screenTimeStart]").val(DP_ScreenTimeStart);
                $("input[name=temp_screenTimeEnd]").val(DP_ScreenTimeEnd);
                $("input[name=temp_screenName]").val(ScreenName);
//                $("input[name=temp_representSeatInfo]").val(SeatInfo);  //  - fncTemp_Seat_makeArr 에서 처리
//                $("input[name=temp_arrSeatInfo]").val(arrSeatInfo); //  - fncTemp_Seat_makeArr 에서 처리
//                $("input[name=temp_useInfo]").val(UseInfo);
                $("input[name=temp_memberReserveNo]").val(DP_ReserveNo);
                $("input[name=temp_viewType]").val(ViewType);
                $("input[name=temp_totalCount]").val(TotalCount);

                $("input[name=temp_screenTime]").val(DP_ScreenTime);

                fncGetPhototicketZoom_Sub();
            }
            else
            {
                alert(jSonResult.msg);
                return false;
            }
        }
        , error: function (xhr, status, error)
        {
            alert(error + "\n" + status + "\n" + xhr.responseText);
        }
    });
}

function GetCheckAMPM2(time_str, bnKorean)   // 0915
{   //AM, PM 구분
    //bnKorean = true 이면 오전, 오후로 구분
    var sAMPM = "";

    if ("" == time_str || undefined == time_str)
    {
        return "";
    }

    var strComp = time_str.substring(0, 2);

    if (8 > Number(strComp))
    {
        if (true == bnKorean)
        {
            sAMPM = "오전";   //sAMPM = "심야";
        }
        else
        {
            sAMPM = "AM";
        }
    }
    else if (12 > Number(strComp))
    {
        if (true == bnKorean)
        {
            sAMPM = "오전";
        }
        else
        {
            sAMPM = "AM";
        }
    }
    else
    {
        if (true == bnKorean)
        {
            sAMPM = "오후";
        }
        else
        {
            sAMPM = "PM";
        }
    }

    return sAMPM;
}


function fncTemp_Seat_makeArr(TempArr_seatInfo, total_cnt, TempUseinfo) //좌석번호에 대해서 대표좌석번호, 배열처리, hidden 에 저장을 수행
{
    //B열6번, B열14번, C열5번
    //H열5번, J열18-20번

    if (0 == Number(total_cnt))
    {
        total_cnt = 1;
    }

    var arrSeatInfo = fncSeatSplit(total_cnt, TempArr_seatInfo, TempUseinfo);

    $("input[name=temp_arrSeatInfo]").val(arrSeatInfo);
    $("input[name=temp_representSeatInfo]").val(arrSeatInfo.split("^")[0].split("**")[0]);
    $("input[name=temp_arrUseInfo]").val(arrSeatInfo.split("^")[0].split("**")[1]);
    $("input[name=temp_useInfo]").val(arrSeatInfo.split("^")[0].split("**")[1]);
}

function fncGetPhototicketZoom_Sub()
{

    try
    {
        $("input[name=temp_current_zoom_idx]").val(0);

        var reserveNo = $("input[name=temp_reserveNo]").val();
        var saleNo = $("input[name=temp_sale_no]").val();
        var TicketImage = $("input[name=temp_image]").val();
        var CinemaName = unescape($("input[name=temp_cinemaName]").val());
        var MovieKind = $("input[name=temp_movieKind]").val();
        var MovieAddAttribute = $("input[name=temp_movieAddAttribute]").val();
        MovieKind += ("" == MovieAddAttribute ? "" : "(" + MovieAddAttribute + ")");
        var MovieGrade = $("input[name=temp_movieGrade]").val();
        var MovieName = unescape($("input[name=temp_movieName]").val());
        var MovieNameEng = unescape($("input[name=temp_movieNameEng]").val());
        var DP_ScreenDate = $("input[name=temp_screenDate]").val();
        var DP_MovieMemberCount = $("input[name=temp_temp_screenNumber]").val();
        var DP_ScreenTimeStart = $("input[name=temp_screenTimeStart]").val();
        var DP_ScreenTimeEnd = $("input[name=temp_screenTimeEnd]").val();
        var DP_ScreenTime = $("input[name=temp_screenTime]").val();
        var ScreenName = $("input[name=temp_screenName]").val();
        var SeatInfo = $("input[name=temp_representSeatInfo]").val();
        var UseInfo = $("input[name=temp_useInfo]").val();
        var DP_ReserveNo = $("input[name=temp_memberReserveNo]").val();
        var ViewType = $("input[name=temp_viewType]").val();
        var TotalCount = $("input[name=temp_totalCount]").val();

        var sContent = "";
        var strReplace = "";
        if(reserveNo==""){
         if (1 < TotalCount)  //1장인 경우 1/N 를 표시하지 않는다.
        {
            sContent = '\n<div class="ticket-count">';
            sContent += '\n	<span class="on-count"><span class="hide">현재 티켓 페이지</span>1</span>/<span><span class=';
            sContent += '\n		"hide">총 티켓 페이지</span>${TotalCount}</span>'.replace("${TotalCount}", TotalCount);
            sContent += '\n</div>';
        }
            sContent += '\n<div id="phototicket_item" class="box-phototicket">';

            sContent += '\n	<div class="box-image">';
            sContent += '\n		<span class="thumb-image">';
            sContent += '\n			<img src="${TicketImage}" id="zoom_ticket_img" alt="${CinemaName} - 내가꾸민 포토티켓" />'.replace("${TicketImage}", TicketImage).replace("${CinemaName}", CinemaName);
            sContent += '\n			<i></i>';
            sContent += '\n		</span>';
            sContent += '\n	</div>';

            sContent += '\n	<div class="box-contents offline">';
            sContent += '\n		<span class="option">';
            sContent += '\n			<em>${MovieKind}</em>'.replace("${MovieKind}", MovieKind);
            sContent += '\n			<em>${MovieGrade}</em>'.replace("${MovieGrade}", MovieGrade);
            sContent += '\n		</span>';
            sContent += '\n		<strong class="title">';
            sContent += '\n			${MovieName}'.replace("${MovieName}", MovieName);
            sContent += '\n			<span>${MovieNameEng}</span>'.replace("${MovieNameEng}", MovieNameEng);
            sContent += '\n		</strong>';
            sContent += '\n		<span class="txt-info">';
            sContent += '\n			<strong>${CinemaName}</strong>'.replace("${CinemaName}", CinemaName);
            sContent += '\n			<strong>${DP_ScreenDate}</strong>'.replace("${DP_ScreenDate}", to_date_format(DP_ScreenDate) + "(" + getWeekday(DP_ScreenDate) + ")");

            //strReplace = to_time_format(DP_ScreenTimeStart) + "(" + GetCheckAMPM(DP_ScreenTimeStart, true) + ")~" + to_time_format(DP_ScreenTimeEnd) + "(" + GetCheckAMPM(DP_ScreenTimeEnd, true) + ")";
            //strReplace = DP_ScreenTime;
            strReplace = to_time_format(DP_ScreenTimeStart) + "(" + GetCheckAMPM2(DP_ScreenTimeStart, true) + ")~" + to_time_format(DP_ScreenTimeEnd) + "(" + GetCheckAMPM2(DP_ScreenTimeEnd, true) + ")";

            sContent += '\n			<em>${DP_MovieMemberCount}${DP_ScreenTime}</em>'.replace("${DP_MovieMemberCount}", DP_MovieMemberCount).replace("${DP_ScreenTime}", strReplace);
            sContent += '\n		</span>';
            sContent += '\n		<span class="seat-position">';
            sContent += '\n			<em>${ScreenName}</em>'.replace("${ScreenName}", ScreenName);
            sContent += '\n			<span id="zoom_seat_info">${SeatInfo}</span>'.replace("${SeatInfo}", SeatInfo);
            sContent += '\n		</span>';
            sContent += '\n		<span class="viewer" id="zoom_use_info">${UseInfo}</span>'.replace("${UseInfo}", UseInfo);
            sContent += '\n		<div class="alert">';

            sContent += '\n			<div>';
            sContent += '\n				지류티켓으로 발권된 영화입니다.<br />상영관 입장 시에는 본 포토티켓이 아닌<br />지류티켓을 이용하세요.';
            sContent += '\n			</div>';

            sContent += '\n		</div>';
            sContent += '\n		<div class="barcode_num">';
            sContent += '\n				' + getSubstr(saleNo, 4);
            sContent += '\n		</div>';
            
            sContent += '\n    <div class="published">CULTUREPLEX CGV</div>';
			sContent += '\n    <div class="copy">© CJ CGV. All rights reserved.</div>';
           
           
            sContent += '\n	</div>';
            sContent += '\n</div>';

            sContent += '\n<div class="controllbtn">';

            if (1 < TotalCount)
            {   //처음 시작할 때는 왼쪽으로 이동 화살표를 보이지 않는다.
                sContent += '\n	<span class="btn-prev" onclick="fncMoveBefore();" style="display:none;"><span class="hide">이전</span></span>';    //처음
                sContent += '\n	<span class="btn-next" onclick="fncMoveNext();"><span class="hide">다음</span></span>';
            }

            sContent += '\n</div>';

            sContent += '\n<div class="btn_wrap" id="div_btn_phototicket">';
            sContent += '\n        <a href="#" class="round inred">';
            sContent += '\n            <span onclick="fncMoveTo(this);" data-reserveno="${ReserveNo}" data-saleno="${SaleNo}"';
            sContent += '\n                >내가 꾸민 포토티켓 <img src="https://img.cgv.co.kr/R2014/images/common/btn/lt.png" alt="바로가기">';
            sContent += '\n            </span>';
            sContent += '\n        </a>';
            sContent += '\n</div>';  //<!--내가꾸민포토티켓 버튼부분입니다.-->
            
        }else{
            if (1 < TotalCount)  //1장인 경우 1/N 를 표시하지 않는다.
        {
            sContent = '\n<div class="ticket-count">';
            sContent += '\n	<span class="on-count"><span class="hide">현재 티켓 페이지</span>1</span>/<span><span class=';
            sContent += '\n		"hide">총 티켓 페이지</span>${TotalCount}</span>'.replace("${TotalCount}", TotalCount);
            sContent += '\n</div>';
        }
       
            sContent += '\n<div id="phototicket_item" class="box-phototicket">';

            sContent += '\n	<div class="box-image">';
            sContent += '\n		<span class="thumb-image">';
            sContent += '\n			<img src="${TicketImage}" id="zoom_ticket_img" alt="${CinemaName} - 내가꾸민 포토티켓" />'.replace("${TicketImage}", TicketImage).replace("${CinemaName}", CinemaName);
            sContent += '\n			<i></i>';
            sContent += '\n		</span>';
            sContent += '\n	</div>';

            sContent += '\n	<div class="box-contents">';
            sContent += '\n		<span class="option">';
            sContent += '\n			<em>${MovieKind}</em>'.replace("${MovieKind}", MovieKind);
            sContent += '\n			<em>${MovieGrade}</em>'.replace("${MovieGrade}", MovieGrade);
            sContent += '\n		</span>';
            sContent += '\n		<strong class="title">';
            sContent += '\n			${MovieName}'.replace("${MovieName}", MovieName);
            sContent += '\n			<span>${MovieNameEng}</span>'.replace("${MovieNameEng}", MovieNameEng);
            sContent += '\n		</strong>';
            sContent += '\n		<span class="txt-info">';
            sContent += '\n			<strong>${CinemaName}</strong>'.replace("${CinemaName}", CinemaName);
            sContent += '\n			<strong>${DP_ScreenDate}</strong>'.replace("${DP_ScreenDate}", to_date_format(DP_ScreenDate) + "(" + getWeekday(DP_ScreenDate) + ")");

            //strReplace = to_time_format(DP_ScreenTimeStart) + "(" + GetCheckAMPM(DP_ScreenTimeStart, true) + ")~" + to_time_format(DP_ScreenTimeEnd) + "(" + GetCheckAMPM(DP_ScreenTimeEnd, true) + ")";
            //strReplace = DP_ScreenTime;
            strReplace = to_time_format(DP_ScreenTimeStart) + "(" + GetCheckAMPM2(DP_ScreenTimeStart, true) + ")~" + to_time_format(DP_ScreenTimeEnd) + "(" + GetCheckAMPM2(DP_ScreenTimeEnd, true) + ")";

            sContent += '\n			<em>${DP_MovieMemberCount}${DP_ScreenTime}</em>'.replace("${DP_MovieMemberCount}", DP_MovieMemberCount).replace("${DP_ScreenTime}", strReplace);
            sContent += '\n		</span>';
            sContent += '\n		<span class="seat-position">';
            sContent += '\n			<em>${ScreenName}</em>'.replace("${ScreenName}", ScreenName);
            sContent += '\n			<span id="zoom_seat_info">${SeatInfo}</span>'.replace("${SeatInfo}", SeatInfo);
            sContent += '\n		</span>';
            sContent += '\n		<span class="viewer" id="zoom_use_info">${UseInfo}</span>'.replace("${UseInfo}", UseInfo);
            sContent += '\n		<div class="alert">';

            if ("2" == ViewType)
            {
                sContent += '\n			<div>';
                sContent += '\n				<strong>${DP_ReserveNo}</strong>'.replace("${DP_ReserveNo}", DP_ReserveNo);
                sContent += '\n				본 화면으로는 입장하실 수 없습니다.<br />티켓판매기에서 포토티켓을 출력해주세요.';
                sContent += '\n			</div>';
            }
            else if ("1" == ViewType)
            {
                sContent += '\n			<div>';
                sContent += '\n				<img src="http://img.cgv.co.kr/R2014/images/temp/@temp_barcode.png" alt="' + getSubstr(saleNo, 4) + '" />';
                sContent += '\n				' + getSubstr(saleNo, 4);
                sContent += '\n			</div>';
            }
            else if ("3" == ViewType)
            {
                sContent += '\n			<div>';
                sContent += '\n				상영시간 이후에는 티켓판매기의<br />\'포토티켓 출력\'을 통해 고객인증번호 입력 후<br />출력이 가능합니다.';
                sContent += '\n			</div>';
            }
            sContent += '\n		</div>';
            sContent += '\n    <div class="published">CULTUREPLEX CGV</div>';
            sContent += '\n    <div class="copy">© CJ CGV. All rights reserved.</div>';
            sContent += '\n	</div>';
            sContent += '\n</div>';

            sContent += '\n<div class="controllbtn">';

            if (1 < TotalCount)
            {   //처음 시작할 때는 왼쪽으로 이동 화살표를 보이지 않는다.
                sContent += '\n	<span class="btn-prev" onclick="fncMoveBefore();" style="display:none;"><span class="hide">이전</span></span>';    //처음
                sContent += '\n	<span class="btn-next" onclick="fncMoveNext();"><span class="hide">다음</span></span>';
            }

            sContent += '\n</div>';

            sContent += '\n<div class="btn_wrap" id="div_btn_phototicket">';
            sContent += '\n        <a href="#" class="round inred">';
            sContent += '\n            <span onclick="fncMoveTo(this);" data-reserveno="${ReserveNo}" data-saleno="${SaleNo}"';
            sContent += '\n                >내가 꾸민 포토티켓 <img src="https://img.cgv.co.kr/R2014/images/common/btn/lt.png" alt="바로가기">';
            sContent += '\n            </span>';
            sContent += '\n        </a>';
            sContent += '\n</div>';  //<!--내가꾸민포토티켓 버튼부분입니다.-->
        
        }

        $("#div_pop_contents")[0].innerHTML = sContent;
        $("#layer_wrap_phototicket").center();
        $(".layer_wrap_phototicket").css("z-index", "200");
        $(".mask").css("z-index", "150").css("height", "100%").css("width", "100%").show();
        $("#layer_wrap_phototicket").show();

        $("#div_btn_phototicket").css("position", "absolute");
        $("#div_btn_phototicket").css("top", "430px");
        $("#div_btn_phototicket").css("left", "275px");
        
    }
    catch (e)
    {
        alert(e);
    }

    return false;
}
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


</div></body></html>
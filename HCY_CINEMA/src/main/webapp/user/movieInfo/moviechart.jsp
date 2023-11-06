<%@page import="movieChart.MovieChartVO"%>
<%@page import="movieChart.MovieChartDAO"%>
<%@page import="theater.MovieVO"%>
<%@page import="main.MainDAO"%>
<%@page import="java.util.List"%>
<%@page import="main.MainMovieVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    
    
<jsp:include page="../include/loginHeader.jsp"/>


<body class="" style="" cz-shortcut-listen="true">

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
            
<jsp:include page="../include/headerContents.jsp"/>

	<!-- Contaniner -->
	<div id="contents" class="">
        
            
            <!-- Contents Start -->
			


<!-- 실컨텐츠 시작 -->
    <div class="wrap-movie-chart">
        <!-- Heading Map Multi -->
        <div class="tit-heading-wrap" style="height:  93px">
            <h3>무비차트</h3>
            <div class="submenu">
                <ul>
                    <li class="on"><a href="http://localhost/HCY_CINEMA/user/movieInfo/moviechart.jsp" title="선택">무비차트</a></li>
                    <li><a href="http://localhost/HCY_CINEMA/user/movieInfo/moviechart_res.jsp">상영예정작</a></li>
                    <!--<li><a href="/movies/?lt=3">CGV아트하우스</a></li>//-->
                </ul>
            </div>
        </div>
        <!-- //Heading Map Multi -->
        <!-- Sorting -->
        <!-- //Sorting -->
        
        <div class="sect-movie-chart">
            <h4 class="hidden">
                무비차트 - 예매율순
            </h4>
            <ol>
            <%
            List<MovieChartVO> mcVOList = MovieChartDAO.getInstance().selectMainMovie();
            MovieChartVO mcVO = null;
            for(int i = 0 ; i<4;i++){
            	mcVO = mcVOList.get(i);
            	%>
            
                <li>
                    <div class="box-image">
                        <strong class="rank">No.<%=i+1 %></strong>	
                        <a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie=<%=mcVO.getMovieCode() %>">
                            <span class="thumb-image">
                                <img src="http://localhost/HCY_CINEMA/common/movie_files/<%=mcVO.getMovieCode()%>_P.jpg" alt="<%=mcVO.getmName() %> 포스터" onerror="errorImage(this)">
                                <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                <i class="cgvIcon etc age<%="AL".equals(mcVO.getMovieRating())?"All":mcVO.getMovieRating()%>"><%="AL".equals(mcVO.getMovieRating())?"All":mcVO.getMovieRating()%></i>
                                <!-- <span class="ico-grade 15">15</span> -->
                            </span>
                            
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie=<%=mcVO.getMovieCode() %>">
                            <strong class="title"><%=mcVO.getmName() %></strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span><%=mcVO.getTicketRate() %></span></strong>
                            <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
                            <div class="egg-gage small">
                                            <span class="egg great"></span>
                                            <span class="percent"><%=mcVO.getStarRating() %>점</span>
                                        </div>
                        </div>

                        <span class="txt-info">
                            <strong>
                                <%=mcVO.getReleaseDate() %> 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <a class="link-reservation" href="http://localhost/HCY_CINEMA/user/ticketing/ticketing_main.jsp?movie=<%=mcVO.getMovieCode()%>">예매</a>
                        </span>
                    </div>    
                </li>
            	<%
            	
            }//for
            %>
           	</ol>
            <ol>
             <%
            for(int i = 4 ; i<8;i++){
            	mcVO = mcVOList.get(i);
            	%>
               <li>
                    <div class="box-image">
                        <strong class="rank">No.<%=i+1 %></strong>	
                        <a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie=<%=mcVO.getMovieCode() %>">
                            <span class="thumb-image">
                                <img src="http://localhost/HCY_CINEMA/common/movie_files/<%=mcVO.getMovieCode()%>_P.jpg" alt="<%=mcVO.getmName() %> 포스터" onerror="errorImage(this)">
                                <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                <i class="cgvIcon etc age<%="AL".equals(mcVO.getMovieRating())?"All":mcVO.getMovieRating()%>"><%="AL".equals(mcVO.getMovieRating())?"All":mcVO.getMovieRating()%></i>
                                <!-- <span class="ico-grade 15">15</span> -->
                            </span>
                            
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie=<%=mcVO.getMovieCode() %>">
                            <strong class="title"><%=mcVO.getmName() %></strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span><%=mcVO.getTicketRate() %></span></strong>
                            <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
                            <div class="egg-gage small">
                                            <span class="egg great"></span>
                                            <span class="percent"><%=mcVO.getStarRating() %>점</span>
                                        </div>
                        </div>

                        <span class="txt-info">
                            <strong>
                                <%=mcVO.getReleaseDate() %> 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <a class="link-reservation" href="http://localhost/HCY_CINEMA/user/ticketing/ticketing_main.jsp?movie=<%=mcVO.getMovieCode()%>">예매</a>
                        </span>
                    </div>    
                </li>
            	<%
            }//for
            %>
            </ol>
            <ol class="list-more" "="">           
            <%
            for(int i = 8 ; i<mcVOList.size();i++){
            	mcVO = mcVOList.get(i);
            	if((i-8)%4==0){
            		%>
            		</ol><ol>
            		<%
            	}//if
            	%>
               <li>
                    <div class="box-image">
                        <strong class="rank">No.<%=i+1 %></strong>	
                        <a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie=<%=mcVO.getMovieCode() %>">
                            <span class="thumb-image">
                                <img src="http://localhost/HCY_CINEMA/common/movie_files/<%=mcVO.getMovieCode()%>_P.jpg" alt="<%=mcVO.getmName() %> 포스터" onerror="errorImage(this)">
                                <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                <i class="cgvIcon etc age<%="AL".equals(mcVO.getMovieRating())?"All":mcVO.getMovieRating()%>"><%="AL".equals(mcVO.getMovieRating())?"All":mcVO.getMovieRating()%></i>
                                <!-- <span class="ico-grade 15">15</span> -->
                            </span>
                            
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie=<%=mcVO.getMovieCode() %>">
                            <strong class="title"><%=mcVO.getmName() %></strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span><%=mcVO.getTicketRate() %></span></strong>
                            <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
                            <div class="egg-gage small">
                                            <span class="egg great"></span>
                                            <span class="percent"><%=mcVO.getStarRating() %>점</span>
                                        </div>
                        </div>

                        <span class="txt-info">
                            <strong>
                                <%=mcVO.getReleaseDate() %> 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <a class="link-reservation" href="http://localhost/HCY_CINEMA/user/ticketing/ticketing_main.jsp?movie=<%=mcVO.getMovieCode()%>">예매</a>
                        </span>
                    </div>    
                </li>
            	<%
            }//for
            %>
            </ol>
        </div>
    </div><!-- .sect-moviechart -->
<script type="text/javascript">
//<![CDATA[
    (function ($) {
        $(function () {

            $('.sect-sorting button').click(function () {
                var val = $('#order_type').val();
                if (val) {
                    location.href = "/movies/?lt=1&ot=" + val;
                }
            });
            //[2015-12-15] 무비 파인더 페이지 인 경우 정렬 버튼 처리. : add_mwpark
            $("#sect-finder button").click(function(){
                var val = $('#order_type').val();
                if (val) {
                    location.href = "/movies/finder.aspx?lt=1&ot=" + val;
                }
            });


            $('#chk_nowshow').click(function () {
                if ($("input:checkbox[id='chk_nowshow']").is(":checked")) {
                    location.href = "/movies/?lt=1&ft=1";
                }
                else{
                    location.href = "/movies/?lt=1&ft=0";
                }
            });

            //[2015-12-15] 무비 파인더 페이지 인 경우 현재 상영작만 보기 체크 박스 처리. : add_mwpark
            $("#chk_finder_nowshow").on("click" , function(){
                if ($("input:checkbox[id='chk_nowshow']").is(":checked")) {
                    location.href = "/movies/finder.aspx?lt=1&ft=1";
                }else{
                    location.href = "/movies/finder.aspx?lt=1&ft=0";
                }
            });

        });

    })(jQuery);
//]]>
</script>


<div class="sect-movie-chart">
 <ol id="movie_more_container" style="display:none" class="list-more">
    <li></li>
</ol>
</div>

<!--
<div class="sect-ad-benner"> 
    <a href="javascript:tmp_alert_phototicket()" title="새창"><img src="https://img.cgv.co.kr/R2014/images/main/phototicket_978_223.jpg" alt="영화를 영원히 추억하는 방법. CGV 포토티켓" /></a>
</div>//-->
<!-- .sect-ad-benner  -->


<div class="cols-rank" style="display:none">
    <div class="col-rank-trailer">
        <h3>인기 트레일러</h3>
        <div class="sect-popular-trailer">
            
            <ul>
            
            </ul>
        </div><!-- .sect-popular-trailer -->
    </div><!-- .col-rank-trailer -->
    
</div>

<!--
  2016-
- Fried : 0 ~69
- Good :  70 ~ 84
- Great : 85 ~ 100  
//-->
<script id="temp_movie" type="text/x-jquery-tmpl">
    <li>
        <div class="box-image" >
            <a href="/movies/detail-view/?midx=${MovieIdx}">
                <span class="thumb-image">
                    <img src="${PosterImage.LargeImage}" alt="${Title}" onerror="errorImage(this)"/>
                    <!-- 영상물 등급 노출 변경 2022.08.24 -->
                    <i class="cgvIcon etc age${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</i>
                    <!--<span class="ico-grade ${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</span>-->
                </span>
            </a>
            <span class="screentype">
                {{each MovieKindList}}
                <a class="${StyleClassName}" href="#" data-regioncode="${RegionCode}">${KindName}</a>
                {{/each}}
            </span>
        </div>
                    
        <div class="box-contents">
            <a href="/movies/detail-view/?midx=${MovieIdx}">
                <strong class="title">${Title}</strong>
            </a>

            <div class="score">
                <strong class="percent">예매율<span>${TicketRate}%</span></strong>
                <!--2020.05.07 개봉일 12시 30분전 프리에그, 개봉일 12시 30분후 골든에그지수 노출 기준변경-->
                <div class="egg-gage small">
                    <span class="${StarPoint}"></span>
                    <span class="percent">${EggPoint}</span>
                </div>
            </div>

            <span class="txt-info">
                <strong>
                    ${OpenDate}
                    <span>${OpenText}</span>
                    {{if D_Day > 0}}
                        <em class="dday">D-${D_Day}</em>
                    {{/if}}
                </strong>
            </span>
            <span class="like"> 
                {{if (IsTicketing)}}<a class="link-reservation" href="http://www.cgv.co.kr/ticket/?MOVIE_CD=${CGVCode}&MOVIE_CD_GROUP=${MovieGroupCode}">예매</a>{{/if}}
            </span>
        </div>    
    </li>
</script>

<script type="text/javascript">
//<![CDATA[

    (function ($) {
        $(function () {

            $(".btn-more-fontbold").click(function () {
                $(this).remove();
                app.movie().getList({ listType: '1', orderType: '1', filterType: '0' }, setMovieListBuild);
            });

            function setMovieListBuild(result) {

                $("#movie_more_container").empty();
                $("#movie_more_container").show();

                for (var i = 0; i < result.List.length; i++) {
                    var str = result.List[i].JointCount;
                    result.List[i].JointCount = str.split(",").join("");
                }


                $("#temp_movie").tmpl(result.List).appendTo("#movie_more_container");

                //$('.point').point();        //평점 별 표시
                $('.btn-like').like();      //wish list동작 처리
                $('span.screentype a').specialTheater();    //특별관 링크
            }
        });
    })(jQuery);
//]]>
</script>


            
            <!--/ Contents End -->
		 </div>
    <!-- E Contaniner -->
    
    <!-- S Popup -->


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
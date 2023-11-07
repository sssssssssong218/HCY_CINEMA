<%@page import="theater.ScheduleVO"%>
<%@page import="theater.ScreenVO"%>
<%@page import="theater.MovieVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@page import="theater.TheaterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=1024" />
    <meta name="description" content="HCY는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. HCY홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다." />
    <title id="ctl00_headerTitle">영화 그 이상의 감동. HCY</title>
    <link rel="shortcut icon" type="image/x-icon" href="http://localhost/HCY_CINEMA/common/images/favicon.png" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />
    <!--
    <link rel="stylesheet" media="all" type="text/css" href="/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="/css/module.css" />
    <link rel="stylesheet" media="all" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" media="all" type="text/css" href="/css/content.css" />
    -->
    <link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css" />
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.init.js"></script>
    <!--[if lte IE 9]><script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    
    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>
    
    <!-- 각페이지 Header Start--> 
    

    <!--/각페이지 Header End--> 
    <script type="text/javascript">
    
    
    //<![CDATA[
        app.config('staticDomain', 'http://localhost/HCY_CINEMA/user/schedule/theater_schedule_frame.jsp')
            .config('imageDomain', 'https://img.cgv.co.kr')
            .config('isLogin', 'False');
    //]]>
    
    function clickDate(date){
    	$("#date > .on").attr("class","")
    	$("#"+date).attr("class","on")
    	
    	var data = {"date":date}
    	$.ajax({
    		url : "http://localhost/HCY_CINEMA/user/schedule/theater_schedule_frame_ajax.jsp",
    		type : "get",
    		data : data,
    		dataType : "json",
    		error : function(xhr){
    			console.log(xhr.status)
    		},
    		success : function(json){
    				var html = ""; 
    			$.each(json.list,function(i,e){
    				var iconClass = e.movieRating == "AL" ? "All" : e.movieRating;
    				html += '<li><div class="col-times"><div class="info-movie">'
    				html += '<i class="cgvIcon etc age'
    				html += iconClass
    				html += '">'
    				html +=	iconClass
    				html +=	'</i>'
    				html += '<a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie='
   					html += e.moviecode
    				html += '"target="_parent">'
    				html += '<strong>'
    				html += e.mname
    				html += '</strong></a><span class="round lightblue"><em>상영중</em></span><span class="">'
    				html += '<em></em></span> <i>'
    				html += e.runningTime
    				html += '</i>/ <i>'
    				html += e.releseDate
    				html += '개봉</i></div>'
   					$.each(e.sVO,function(j,se){
    					
    					html += '<div class="type-hall"><div class="info-hall"><ul><li>' 
    					html += se.typeName
    					html += '</li><li>'
    					html += se.screenName
    					html += '</li><li>총169석</li></ul></div><div class="info-timetable"><ul>'
                        
    					$.each(se.scdVO,function(k,sde){
    						var remainSeat = 169-sde.ticketedSeat;
    						if(remainSeat!=0){
    							html += '<li><a href="" target="_top" data-theatercode="0056" data-playymd="'
    							html += sde.showdate
    							html += '" data-screencode="001" data-playnum="6" data-playstarttime="2030" data-playendtime="2232" data-theatername="HCY 강남" data-seatremaincnt="140" data-screenkorname="'
    							html += se.screenName
    							html += '"><em>'
    							html += sde.showtime
    							html += '</em><span class="txt-lightblue"><span class="hidden">잔여좌석</span>'
    							html += remainSeat
    							html += '석</span></a></li>' 
    						}else{
    						html += '<li><em>'
    						html += sde.showtime
    						html += '</em><span>마감</span></li>'
    						}//else
    					})//each
    					html += '</ul></div></div>'
   					})//each
   					html += '</div></li>'
    			})//each
    			$("#movieList").html(html)
    		}
    	})//ajax
    }//clickDate
    </script>
    <style>
    .round > * {height :auto; }
    </style>
</head>
<body class="">


<!-- Contents Start -->

    <div class="showtimes-wrap">
        <div class="sect-schedule">
            <div id="slider" class="slider">
                
                        <div class='item-wrap on'><ul class='item' id="date">
                        
                        <%
                        StringBuilder sbDate = new StringBuilder();
                        
                        StringBuilder currentDate = new StringBuilder();
                       	Calendar cal = Calendar.getInstance();
                       	
                       	int year = cal.get(Calendar.YEAR);
                       	int month = cal.get(Calendar.MONTH)+1;
                       	int date = cal.get(Calendar.DAY_OF_MONTH);
                       	int maxDate = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
                       	
                       	currentDate.append(year)
                        	.append(month<10?"0":"")
                        	.append(month)
                        	.append(date<10?"0":"")
                        	.append(date);
                       	String[] days ={"일","월","화","수","목","금","토"};
                       	
                       	String day = null;
                        	
                        if(request.getParameter("date") == null){
                        	sbDate = currentDate;
                        }else{
                        	sbDate.append(request.getParameter("date"));
                        }//else
                       	TheaterDAO tDAO = TheaterDAO.getInstance();
                       	List<MovieVO> list = tDAO.selectTheaterSchedule(sbDate.toString());
                       	
                       	
                       	pageContext.setAttribute("maxDate", maxDate);
                       	pageContext.setAttribute("target", sbDate.toString());
                       	
                       	StringBuilder sbTemp = new StringBuilder();
                       	
                       	int dayNum = cal.get(Calendar.DAY_OF_WEEK);
                       	
                       	for(int i = 0;i<8;i++ ){
                  		sbTemp.replace(0, sbTemp.length(), "");
                       	sbTemp.append(year)
                    	.append(month<10?"0":"")
                    	.append(month)
                    	.append(date<10?"0":"")
                    	.append(date);
                       	day = days[dayNum];
                       	dayNum++;
                       	if(dayNum > 6){
                       		dayNum=0;
                       	}//if
                       	
                       	pageContext.setAttribute("temp", sbTemp.toString());
                       	pageContext.setAttribute("day", day);
                       	pageContext.setAttribute("year", year);
                       	pageContext.setAttribute("month", month);
                       	pageContext.setAttribute("date", date);
                        %>
                        <li ${ target == temp?'class="on"':'' } id="${year}${month }${date<10?'0':'' }${date}">
                            <div class="day">
                                <a onclick="clickDate('${year}${month }${date<10?'0':'' }${date}')">
                                    <span>
                                       <c:out value="${month }"/>월</span> <em>
                                            <c:out value="${day }"/></em> <strong>
                                                <c:out value="${date }"/></strong>
                                </a>
                            </div>
                        </li>
                        <%
                       		date ++;
                        if(date>maxDate){
                        	date = 1;
                        	month++;
                        	if(month>12){
                        		month = 1;
                        		year ++;
                        	}//if
                        }//if
                    }//for %>
                        </ul></div>
                        <div class='item-wrap on'><ul class='item' id="date">
                    <%
                	for(int i = 0;i<8;i++ ){
                		sbTemp.replace(0, sbTemp.length(), "");
                       	sbTemp.append(year).append(month).append(date);
                       	day = days[dayNum];
                       	dayNum++;
                       	if(dayNum > 6){
                       		dayNum=0;
                       	}//if
                       	
                       	pageContext.setAttribute("temp", sbTemp.toString());
                       	pageContext.setAttribute("day", day);
                       	pageContext.setAttribute("year", year);
                       	pageContext.setAttribute("month", month);
                       	pageContext.setAttribute("date", date);
                    %>
                        <li ${ target == temp?'class="on"':'' } id="${year}${month }${date<10?'0':'' }${date}">
                            <div class="day">
                                <a onclick="clickDate('${year}${month }${date<10?'0':'' }${date}')"
                                    ${ target == temp?'title="현재 선택"':'' }>
                                    <span>
                                       <c:out value="${month }"/>월</span> <em>
                                            <c:out value="${day }"/></em> <strong>
                                                <c:out value="${date }"/></strong>
                                </a>
                            </div>
                        </li>
                        <%
                       		date ++;
                        if(date>maxDate){
                        	date = 1;
                        	month++;
                        	if(month>12){
                        		month = 1;
                        		year ++;
                        	}//if
                        }//if
                    }//for %>
                    
                        </ul></div>
                    
                <button type="button" class="btn-prev">
                    이전 날자보기</button>
                <button type="button" class="btn-next">
                    다음 날자보기</button>
            </div>
        </div>
        
        
        <div class="sect-guide">
            <div class="descri-timezone">
                <p>
                    * 시간을 클릭하시면 빠른 예매를 하실 수 있습니다.</p>
            </div>
        </div>


        <div class="sect-showtimes">
            <ul id="movieList">
            
            <%
            List<MovieVO> movieList = TheaterDAO.getInstance().selectTheaterSchedule(currentDate.toString());
             for(MovieVO mVO : movieList){
            	 pageContext.setAttribute("mVO", mVO);
            	 %>
            	 <li>
                            <div class="col-times">
                                <div class="info-movie">
                                    <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                    <i class="cgvIcon etc age${mVO.movieRating=='AL'?'All':mVO.movieRating }">${mVO.movieRating=='AL'?'All':mVO.movieRating }</i>
                                    <!-- <span class="ico-grade 12">
                                        12</span>--> <a href="http://localhost/HCY_CINEMA/user/movieInfo/movie_detail.jsp?movie=${mVO.moviecode }"
                                            target="_parent"><strong>
                                                ${mVO.mname }</strong></a>
                                    <span class="round lightblue">
                                        <em>
                                            상영중</em>
                                    </span><span class="">
                                        <em>
                                            </em>
                                    </span> <i>
                                           ${mVO.runningTime }</i>/ <i>
                                                ${mVO.releseDate }
                                                개봉</i>
                                </div>
                                <%
                                for(ScreenVO sVO : mVO.getsVO()){
                                	pageContext.setAttribute("sVO", sVO);
                                	%>
                                	<div class="type-hall">
                                            <div class="info-hall">
                                                <ul>
                                                    <li>
                                                        ${sVO.typeName }</li>
                                                    <li>
                                                        ${sVO.screenName }</li>
                                                    <li>총
                                                        169석</li>
                                                </ul>
                                            </div>
                                            <div class="info-timetable">
                                                <ul>
                                                    <%
                                                    for(ScheduleVO sdVO : sVO.getScdVO()){
                                                    	pageContext.setAttribute("sdVO", sdVO);
                                                    	if(sdVO.getTicketedSeat()<169){
                                                    		%>
                                                    		<li>
                                                    	<a href="" target="_top" data-theatercode="0056" data-playymd="20231031" data-screencode="001" data-playnum="6" data-playstarttime="2030" data-playendtime="2232" data-theatername="CGV 강남" data-seatremaincnt="140" data-screenkorname="1관 6층">
                                                    	<em>${sdVO.showtime }</em>
                                                    	<span class="txt-lightblue">
                                                    	<span class="hidden">잔여좌석</span>${169-sdVO.ticketedSeat }석</span></a>
                                                    		</li>
                                                    		<%
                                                    	}else{
                                                    	%>
                                                    	<li><em>${sdVO.showtime }</em><span>마감</span></li>
                                                    	<%
                                                    	}//else
                                                    }//for
                                                    %>
                                                </ul>
                                            </div>
                                        </div>
                                	<%
                                }//for
                                %>
                            </div>
                        </li>
            	 <%
             }//for
            %>
            </ul>
        </div>
      

      
        <p class="info-noti">
            <p>ㆍ입장 지연에 따른 관람 불편을 최소화하기 위해 영화는 10분 후 상영이 시작됩니다.</p>
        </p>
    </div>
    <script type="text/template" id="temp_priceinfo">
<div class="layer-contents" style="width:650px; height:647px;">
        <div class="popwrap" id="wrap_theater_price">
            <h1>CGV 용산아이파크몰 관람 가격 안내</h1>
            <div class="pop-contents">
                <div class="wrap-priceinfo">
                  <div class="sect-discount">
						<h4>할인안내</h4>
						<div class="table-dotline">
							<table cellpadding="0" cellspacing="0" summary="극장 할인안내 테이블입니다.">
								<caption>경로우대, 학생할인, 국가유공자할인. 장애우대할인, 심야할인 안내 입니다.</caption>
								<colgroup>
									<col class="col1" />
									<col class="col2" />
								</colgroup>
								<tbody>
								<tr>
									<th scope="row">경로우대</th>
									<td>만 65세 이상을 증명할 수 있는 신분증 제시</td>
								</tr>
								<tr>
									<th scope="row">학생할인</th>
									<td>만18세 이하를 증명할 수 있는 신분증 제시<em>(만 4세이상 ~ 만 18세 이하의 학생 또는 청소년(어린이)에 한함)</em></td>
								</tr>
								<tr>
									<th scope="row">국가유공자할인</th>
									<td>국가 유공자증 소지자 본인에 한함</td>
								</tr>
								<tr>
									<th scope="row">장애우대할인</th>
									<td>현장에서 복지카드를 소지한 장애인<em>(장애 1~3등급 : 동반 1인까지 적용/ 4~6등급 : 본인만 적용)</em></td>
								</tr>
								<tr>
									<th scope="row">심야할인</th>
									<td>극장별 심야 할인 이벤트는 각 극장에 문의</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>					
                     <div class="sect-price"> 
                        <h4>관람 가격안내</h4>
                        <ul class="tab-menu-round">
                            <li class="on" data-screen-type="cgv"><a href="#">일반관</a></li>
                            <li data-screen-type="special"><a href="#">특별관</a></li>
                        </ul>
                        <div class="tbl-list">
                            
                                <div class="tbl-list cgv" style="display:"">
                                    <h5 class="hidden">
                                        <i>일반관</i> 관람가격안내
                                    </h5>
                                    
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=4D14" target="_top" title="4DX 상세정보 바로가기"><span class="screentype"><span class="forDX">4DX</span></span>4DX</a>
                                    </h5>
                                    <div class="tbl-lst">
    <table summary="">
        <caption></caption>
        <colgroup>
            <col width="20%" />
            <col width="20%" />
            <col width="15%" />
            <col width="15%" />
            <col width="15%" />
            <col width="15%" />
        </colgroup>
        <thead>
            <tr>
                <th scope="col">요일구분</th>
                <th scope="col">시간대 구분</th>
                <th scope="col">일반(2D)</th>
                <th scope="col">청소년(2D)</th>
                <th scope="col">일반(3D)</th>
                <th scope="col">청소년(3D)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row" rowspan="2">주중</th>
                <th>조조</th>
                <td>8,000</td>
                <td>8,000</td>
                <td>11,000</td>
                <td>11,000</td>
            </tr>
            <tr>
                <th scope="row">일반</th>
                <td>14,00
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=91" target="_top" title="아트하우스 상세정보 바로가기"><span class="screentype"><span class="arthouse">아트하우스</span></span>아트하우스</a>
                                    </h5>
                                    
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=99" target="_top" title="GOLD CLASS 상세정보 바로가기"><span class="screentype"><span class="gold">GOLD CLASS</span></span>GOLD CLASS</a>
                                    </h5>
                                    <div class="tbl-lst">
    <table summary="">
        <caption></caption>
        <colgroup>
            <col width="25%" />
            <col width="25%" />
            <col width="25%" />
            <col width="25%" />
        </colgroup>
        <thead>
            <tr>
                <th scope="col">요일구분</th>
                <th scope="col">시간대 구분</th>
                <th scope="col">일반</th>
                <th scope="col">청소년</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row" rowspan="2">주중</th>
                <th scope="row">조조</th>
                <td>35,000</td>
                <td>30,000</td>
            </tr>
            <tr>
                <th scope="row">일반</th>
                <td>35,000</td>
                <td>30,000</td>
            </tr>
            <tr>
                <th scope="row" rowspan="2">주말</th>
                <th scope="row">조조</th>
                <td>35,000</td>
              
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=07" target="_top" title="IMAX 상세정보 바로가기"><span class="screentype"><span class="imax">IMAX</span></span>IMAX</a>
                                    </h5>
                                    <div class="tbl-lst">
    <table summary="">
        <caption></caption>
        <colgroup>
            <col width="20%" />
            <col width="20%" />
            <col width="15%" />
            <col width="15%" />
            <col width="15%" />
            <col width="15%" />
        </colgroup>
        <thead>
            <tr>
                <th scope="col">요일구분</th>
                <th scope="col">시간대 구분</th>
                <th scope="col">일반(2D)</th>
                <th scope="col">청소년(2D)</th>
                <th scope="col">일반(3D)</th>
                <th scope="col">청소년(3D)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row" rowspan="2">주중</th>
                <th>조조</th>
                <td>10,000</td>
                <td>10,000</td>
                <td>13,000</td>
                <td>13,000</td>
            </tr>
            <tr>
                <th scope="row">일반</th>
                <td>12,
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=SCX" target="_top" title="SCREENX 상세정보 바로가기"><span class="screentype"><span class="screenX">SCREENX</span></span>SCREENX</a>
                                    </h5>
                                    <div class="tbl-lst">
    <table summary="">
        <caption></caption>
        <colgroup>
            <col width="25%" />
            <col width="25%" />
            <col width="25%" />
            <col width="25%" />
        </colgroup>
        <thead>
            <tr>
                <th scope="col">요일구분</th>
                <th scope="col">시간대 구분</th>
                <th scope="col">일반</th>
                <th scope="col">청소년</th>
            </tr>
        </thead>
SCREENX Standard Zone 이용요금 안내</BR>
        <tbody>
            <tr>
                <th scope="row" rowspan="2">주중(월~목)</th>
                <th scope="row">조조</th>
                <td>9,000</td>
                <td>8,000</td>
            </tr>
            <tr>
                <th scope="row">2회차 이상</th>
                <td>12,000</td>
                <td>9,000</td>
            </tr>

            <tr>
                <th scope="row" rowspan="2">주말(금~일)</th>
                <th scope="ro
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=103" target="_top" title="CINE de CHEF 상세정보 바로가기"><span class="screentype"><span class="cine">CINE de CHEF</span></span>CINE de CHEF</a>
                                    </h5>
                                    
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=TEM" target="_top" title="TEMPUR CINEMA 상세정보 바로가기"><span class="screentype"><span class="tempurCinema">TEMPUR CINEMA</span></span>TEMPUR CINEMA</a>
                                    </h5>
                                    
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=PB" target="_top" title="PRIVATE BOX 상세정보 바로가기"><span class="screentype"><span class="">PRIVATE BOX</span></span>PRIVATE BOX</a>
                                    </h5>
                                    
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=PRM" target="_top" title="PREMIUM 상세정보 바로가기"><span class="screentype"><span class="premium">PREMIUM</span></span>PREMIUM</a>
                                    </h5>
                                    
                                </div>
                            
                                <div class="tbl-list special" style="display:none"">
                                    <h5 class="">
                                        <a href="/theaters/special/?regioncode=4DXSC" target="_top" title="4DX SCREEN 상세정보 바로가기"><span class="screentype"><span class="fordx_scrx">4DX SCREEN</span></span>4DX SCREEN</a>
                                    </h5>
                                    
                                </div>
                            
                        </div>
                        <div id="priceinfo_online">
                            
                            <h4 class="marginT30">온라인 특별요금제</h4>
                            <div class="tbl-specialfare">                            
	                            <table summary="Family 요금제 및 FrontSeat 요금제에 대한 정보">
		                            <caption>온라인 특별요금제</caption>
		                            <colgroup>
			                            <col width="20%" />
			                            <col width="*" />
		                            </colgroup>
		                            <tbody>
			                            <tr>
				                            <th scope="row">Family 요금제</th>
				                            <td>4인 이상 온라인 예매 시 인하(주중 10% / 주말 5%)</td>
			                            </tr>
			                            <tr>
				                            <th scope="row">FrontSeat 요금제</th>
				                            <td>주말 상영영화 최전방열 온라인 예매 시 10% 인하</td>
			                            </tr>
		                            </tbody>
	                            </table>
                            </div>

                            <ul class="marginT10">
                                <li>* 온라인(홈페이지, 모바일) 예매 시 적용되며, 2D 일반관/일반좌석에 대해 적용됩니다.(단, 모닝 제외)</li>
                                <li>* 온라인 특별 요금제는 IMAX, 4DX, 골드클래스 등 특별관 예매시 적용이 되지 않습니다.</li>
                                <li>* 시간대 안내 : 모닝 '10시 이전', 프라임 '16시 ~ 23시 이전', 심야 '23시 이후'에 해당됩니다.</li>
                                <li>* Veatbox영화는 2D, 3D 요금에서 1천원 추가 적용</li>
                                 <li style="display:none;"> * 시간대 안내 : 모닝은 1회차 영화에만 해당됩니다.
                            </ul>
                        </div>
					</div><!-- .sect-price -->
				</div><!-- .wrap-priceinfo -->
            </div>
        </div>

    <button type="button" class="btn-close">관람 등급 안내 닫기</button>
</div>
    </script>
    <script type="text/template" id="temp_priceinfo_online">
 <h4 class="marginT30">온라인 특별요금제</h4>
 <div class="tbl-specialfare">    
	<table summary="Family 요금제 및 FrontSeat 요금제에 대한 정보">
		<caption>온라인 특별요금제</caption>
		<colgroup>
			<col width="20%" />
			<col width="*" />
		</colgroup>
		<tbody>
			<tr>
				<th scope="row">Family 요금제</th>
				<td>4인 이상 온라인 예매 시 인하(주중 10% / 주말 5%)</td>
			</tr>
			<tr>
				<th scope="row">FrontSeat 요금제</th>
				<td>주말 상영영화 최전방열 온라인 예매 시 10% 인하</td>
			</tr>
		</tbody>
	</table>
</div>
<ul class="marginT10">
    <li>* 온라인(홈페이지, 모바일) 예매 시 적용되며, 2D 일반관/일반좌석에 대해 적용됩니다.(단, 모닝 제외)</li>
    <li>* 온라인 특별 요금제는 IMAX, 4DX, 골드클래스 등 특별관 예매시 적용이 되지 않습니다.</li>
    <li>* 시간대 안내 : 모닝 '10시 이전', 프라임 '16시 ~ 23시 이전', 심야 '23시 이후'에 해당됩니다.</li>
    <li>* Veatbox영화는 2D, 3D 요금에서 1천원 추가 적용</li>
     <li style="display:none;"> * 시간대 안내 : 모닝은 1회차 영화에만 해당됩니다.
</ul>
    </script>

    <script type="text/javascript">
//<![CDATA[
    (function ($) {
        $(function () {
            var sliderOptions = { 'effect': 'none', 'offset': 0 };
            $('#slider').visualMotion(sliderOptions);

            try {
                var container = window.parent.document.iFrame;
                container.resize(); // 갱신될때마다 iFrame 높이값 재조정.
            }
            catch(e) {
                //ToDO : iframe 순서로 인한 예외 처리
                setTimeout(function(){
                    var container = window.parent.document.iFrame;
                    container.resize(); // 갱신될때마다 iFrame 높이값 재조정.
                },500);
            }

            //모바일 체크하여 남은좌석표 미니맵 노출안함 hover이벤트
            if(mobileChk()){                
                $('.info-timetable > ul > li').each( function() {
                   
                    if( $(this).children("a") != null ) {
                        var child_atag = $(this).children("a");
                       if(child_atag.attr("data-theatercode") != undefined){
                        var theatercode = child_atag.attr("data-theatercode");
                        var playymd = child_atag.attr("data-playymd");
                        var screencode  = child_atag.attr("data-screencode");
                        var playnum  = child_atag.attr("data-playnum");
                        var playstarttime  = child_atag.attr("data-playstarttime");
                        var playendtime  = child_atag.attr("data-playendtime");
                        var theatername  = child_atag.attr("data-theatername");
                        var seatremaincnt  = child_atag.attr("data-seatremaincnt");
                        var screenkorname  = child_atag.attr("data-screenkorname");

                        $(this).hover(function(evt){
                            GetCJ002_AllData($(this), theatercode, playymd , screencode , playnum , playstarttime , playendtime , theatername , seatremaincnt, screenkorname);

                        },function(evt) {                         
                                $('.cgv_minimap', window.parent.document).each(function() {
                                $(this).hide();
                                $(this).remove();
                            });
                        });
                      }
                    } //end if
                }); //end each
            }
        });
    })(jQuery);
    
    function  GetCJ002_AllData(liTag, TheaterCode , PlayYMD, ScreenCode, PlayNum ,StartTime,  EndTime, TheaterName,  Cnt , ScreenName) 
    {
        $.ajax({
            type: "POST",
            url: "/common/showtimes/iframeTheater.aspx/GetSeatList",
            data: "{theatercode: '" +  TheaterCode + "',  palyymd : '" + PlayYMD + "', screencode : '" + ScreenCode + "' , playnum : '" + PlayNum + "', starttime : '" + StartTime + "', endtime : '" + EndTime + "', theatername : '" + TheaterName + "', cnt : '" + Cnt + "', screenname : '" + ScreenName + "'}",                                        
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            //async: true,
            success: function (data) {
                var rst = $.parseJSON(data.d);
                if($.trim(rst) != "") {
                    $('.cgv_minimap',window.parent.document).each(function() {
                        $(this).hide();
                        $(this).remove();
                    });
                    
                    var pobj = $(".col-detail", window.parent.document);

                    //li tag position
                    var parent_li = liTag.offset();                                                                                                                                                              
                    pobj.append("<div class=\"cgv_minimap\" style=\"display:block;position:absolute\">" + rst + "</div>");                                        
                    pobj.show(function(){
                        var boxWidth = pobj.find('.cgv_minimap .theater_minimap').outerWidth();
                        var boxHeight = pobj.find('.cgv_minimap .theater_minimap').height();          
                        var posX = parent_li.left + $('.info-timetable > ul > li').outerWidth() / 2 - boxWidth / 2;
                        var posY = parent_li.top - boxHeight - 20;                              
                        pobj.find('.cgv_minimap').css({top:posY,left:posX});
                    });          

                }
            },
            error: function(request, error)
		    {
			    //alert("code:" + request.statusText + request.readyState + "\n" + "error:" + error);
		    }
        });
    }
    
    // 모바일 체크(모바일일때 false 반환)
    function mobileChk()
    {
        var re = true;
        var ua = window.navigator.userAgent.toLowerCase();
    
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
//]]>
    </script>

<!--/ Contents End -->


<script type="text/javascript">
    //배경색 스타일 적용: 20211015
    $("html, body, #contaniner, #footer").css("background-color", "#ffffff");

//<![CDATA[
    
//]]>
</script>

</body>
</html>
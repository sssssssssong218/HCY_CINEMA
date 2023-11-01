<%@page import="manageMember.MemberVO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="ticketing.MovieVO"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.List"%>
<%@page import="ticketing.TicketingDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko" xml:lang="ko" xmlns="http://www.w3.org/1999/xhtml"><head id="ctl00_Head1">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="imagetoolbar" content="no">
<meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작">
<meta name="description" content="영화 그 이상의 감동. CGV">
<title>CGV 빠른예매</title>
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/common.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_tnb.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_popup.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_step3.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_step3_special.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_step3_step1.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2023/0720/FORM_TYPE/reservation_step3_step2.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/R2014/css/webfont.css">
<link rel="stylesheet" href="http://img.cgv.co.kr/resource_pc/css/cgv.min.css">
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/cgvpackage.min.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.api.ticket.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.api.payment.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.api.coupon.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.crypto.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.data.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/jquery.cgv.net.js"></script>

<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.alert.js"></script>

<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.popup.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.step1.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/reservation.step2.js"></script>
<script type="text/javascript">
<%
MemberVO memVO = (MemberVO)session.getAttribute("mVO");
pageContext.setAttribute("memVO", memVO);
System.out.println("mem : "+memVO);
%>




// for loadStep3Resources_STEP2 include source path;
var CDN_PATH_JS = "http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2023/1024.NAVER_PAY/0800/";
// 초기 선택값 설정
preselectSetting( 
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	''
);

function ListClickListener(index){
	//$(".placeholder.hidden").attr("class","placeholder")
	var value = $("#"+index).data("value");
	$("#2D").attr("class","")
	$("#3D").attr("class","")
	$("#IMAX").attr("class","")
	$("#"+index).attr("class","selected")
	$("#screenType").val(index)
	localStorage.setItem('screencat', index);
	
	if(mListSelect == true){
		$(".row movie_type").attr("style","display:block;")
		$("#movie_type").html($("#screenList > .selected").attr("id"))
	}//if
	
	$(".row.screen > .data").html(index+"관")
	
	if($("#date").val() != '' && $("#movie").val() != '' && $("#screenType").val() != '' ){
		runAjax()
	}//if
}//ListClickListener

var cat = "";

var mListSelect = false;
var selectMovie = "";
var moviename = "";
var start = "";
var end = "";

function mListClickListener(index , name, rate){
	mListSelect = true;
	$(".placeholder.hidden").attr("class","placeholder")
	var value = $("#"+index).data("value");
	$(".press.selected").attr("class","")
	$("#"+index).attr("class","press selected")
	$("#movie").val(index)
	selectMovie = index;
	moviename = name;
	
	$(".movie_poster").html('<img src="http://192.168.10.147/HCY_CINEMA/common/movie_files/'+index+'_P.jpg'+'" alt="영화 포스터">')
	$(".info.movie > .placeholder").attr("style","display:none;")
	
	$(".row.movie_title.colspan2").attr("style","display:block;")
	$(".data.letter-spacing-min.ellipsis-line2").html(name)
	
	$(".row movie_type").attr("style","display:block;")
	$("#movie_type").html($("#screenlist > .selected").attr("id"))
	
	$(".row movie_rating").attr("style","display:block;")
	$("#raing").text(rate=='AL'?'전체이용가':rate+'세')
	cat = rate;
	if($("#date").val() != '' && $("#movie").val() != '' && $("#screenType").val() != '' ){
		runAjax()
	}//if
}//ListClickListener


var sendDate = "";
function dListClickListener(index){
	$(".placeholder.hidden").attr("class","placeholder")
	var value = $("#"+index).data("value");
	$(".day.day-sat.selected").attr("class","day")
	$("#"+index).attr("class","day day-sat selected")
	$("#date").val(index)
	sendDate = index;
	var year = index.substring(0,4)
	var month = index.substring(4,6)
	var date = index.substring(6,8)
	
	$(".row.date > .data").html(year+'.'+month+'.'+date)
	
	if($("#date").val() != '' && $("#movie").val() != '' && $("#screenType").val() != '' ){
		runAjax()
	}//if
}//ListClickListener
var remain_seat = "";
var scheduleCode = "";
var screenCode = "";
function sTimeClickListener( sdnum,snum ){
	$("#screen"+snum+" > .selected").attr("class","")
	$("#screen"+snum+" > .moring.selected").attr("class","")
	$("#schedule"+sdnum).attr("class","selected")
	screenCode = snum;
	scheduleCode=sdnum;
	remain_seat = $("#schedule"+sdnum).data("remain_seat")
	
	$("#tnb_step_btn_right").attr("class","btn-right on")
}//sTimeClickListener
function msTimeClickListener( sdnum,snum ){
	$("#screen"+snum+" > .selected").attr("class","")
	$("#schedule"+sdnum).attr("class","morning selected")
	screenCode = snum;
	
	scheduleCode=sdnum;
	remain_seat = $("#schedule"+sdnum).data("remain_seat")
	
	$("#tnb_step_btn_right").attr("class","btn-right on")
}//sTimeClickListener

function runAjax(){
	$("#infoTheater").attr("style","")
	$("#screenList").html("");
	$(".placeholder").attr("class","placeholder hidden")
	var jsonSche = {"movie":$("#movie").val(),"screenType":$("#screenType").val(),"date":$("#date").val()};
	$.ajax({
		url : "http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_ajax.jsp",
		type : "get",
		data : jsonSche,
		dataType : "json",
		error:function( xhr ){
			alert("예상치 못한 문제가 발생했습니다."+xhr.status)
		},
		success : function(data){
			$.each(data,function(idx,element){	
				var screenList = "";
				screenList += '<div class="theater" screen_cd="'+element.screenCode+'" movie_cd="'+element.movieCode+'">';
				screenList += '<span class="title">';
				screenList += '<span class="name">'+element.screenCat+'</span>';
				screenList += '<span class="floor">'+element.screenName+'</span>';
				screenList += '<span class="seatcount">(총169석)</span>';
				screenList += '</span>';
				screenList += '<ul id="screen'+element.screenCode+'"></ul></div>';
				
				$("#screenList").append(screenList);
				$.each(element.screenArr,function(i,jsonele){
					var temp = "";
					if(i==0){
					temp += '<li data-index="0" data-remain_seat="'+jsonele.remain+'" play_start_tm="1340" screen_cd="'+element.screenCode+'" movie_cd="'+element.movieCode+'" play_num="2" class="'+(jsonele.flag?'morning':'disalbe')+'" data-price="'+jsonele.price+'" id="schedule'+jsonele.scheduleCode+'">';
					temp += '<a class="button" href="#" onclick="msTimeClickListener('+jsonele.scheduleCode+','+element.screenCode+');return false;">';
					}else{
					temp += '<li data-index="0" data-remain_seat="'+jsonele.remain+'" play_start_tm="1340" screen_cd="'+element.screenCode+'" movie_cd="'+element.movieCode+'" play_num="2" class="'+(jsonele.flag?'':'disalbe')+'" data-price="'+jsonele.price+'" id="schedule'+jsonele.scheduleCode+'">';
					temp += '<a class="button" href="#" onclick="sTimeClickListener('+jsonele.scheduleCode+','+element.screenCode+');return false;">';
					}//else
					temp += '<span class="time" data-title="'+jsonele.time+'"><span>'+jsonele.time+'</span></span>';
					temp += '<span class="count">'+(jsonele.flag?jsonele.remain+'석':'예매종료')+'</span>';
					temp += '<div class="sreader" data-title="'+jsonele.endtime+'">종료시간 : '+jsonele.endtime+'</div>';
					temp += '</a>';
					temp += '</li>';
					
					$("#screen"+element.screenCode).append(temp)
				})//each
			})//each
		}//success
	})//ajax
}//runAjax
var row = ['A','B','C','D','E','F','G','H','I','J','K','L','M']
var btnStep = "step1";
function TnbRightClick(){
	if($("#tnb_step_btn_right").attr("class")=="btn-right on"){
		if(btnStep == "step1"){
		$(".step.step1").attr("style","display:none;")
		$(".step.step2").attr("style","display:flex;")
		
		var year = sendDate.substring(0,4)
		var month = sendDate.substring(4,6)
		var date = sendDate.substring(6,8)
		
		start = $("#schedule"+scheduleCode+" > .button >  .time").data("title");
		end = $("#schedule"+scheduleCode+" > .button >  .sreader").data("title");
		
		$("#user-select-info > .theater-info").html('<span class="site">HCY 강남</span><span class="screen">'+localStorage.getItem("screencat")+' </span><span class="seatNum">남은좌석  <b class="restNum">'+remain_seat+'</b>/<b class="totalNum">169</b></span>')
		$("#user-select-info > .playYMD-info").html('<b>'+year+'.'+month+'.'+date+'</b><b class="exe">&nbsp</b><b>'+start+' ~ '+end+'</b>')
		
		$("#seats_list > ")
		
		var seatNum=0;
		var text = '';
		for(var i = 0;i<13;i++){
			text += '<div class="row" style="top:'+(i*17)+'px;left:85px"><div class="label">'+row[i]+'</div>'
			text += '<a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">'+row[i]+'열 건너뛰기</a>'
			text += '<div class="seat_group"><div class="group">'
			for(var j =1;j<14;j++){
				seatNum +=1;
				text += '<div class="seat" style="left:'+(j*17)+'px" id="seatNum_'+seatNum+'" data-left="32" data-left_zoom="48">'
				text += '<a href="#" onclick="seatClick('+seatNum+');return false;">'
				text += '<span class="no">'+j+'</span>'
				text += '<span class="sreader"> </span>'
				text += '<span class="sreader mod"></span>'
				text += '</a></div>'
			}//for
			
			text += '</div></div></div>';
		}//for
			$("#seats_list").html(text)
			var param = { scheduleCode : scheduleCode}
			$.ajax({
				url : "http://localhost/HCY_CINEMA/user/ticketing/ticketing_step2_ajax.jsp",
				type : "get",
				data : param,
				dataType : "json",
				error : function(xhr){
					console.log(xhr.status)
				},
				success : function(jsonArr){
					 $.each(jsonArr,function(i,json){
						$("#seatNum_"+json.data).attr("class","seat reserved")
					})//each 
				}
			})//ajax
			
			var text = '';
	for(var i = 0 ;i<9;i++){
		text += '<li data-count="'+i+'" class="'+(i==0?'selected':'')+'" type="adult" id="people_'+i+'"><a href="#" onclick="peopleCount('+i+');return false;"><span class="sreader mod">일반</span>'+i+'<span class="sreader">명</span></a></li>'; 
	}//for
	$("#peopleCount").html(text)
	
		
	$("#ticket_tnb > .tnb.step1").attr("class","tnb step2")
	$("#tnb_step_btn_right").attr("class","btn-right")
	btnStep = "step2";
	return;
	}//if
	
	if(btnStep == "step2"){
		$(".step.step2").attr("style","display:none;")
		$(".step.step3").attr("style","display:flex;")
		
		$(".string2.amount").html($("#schedule"+scheduleCode).data("price"))
		$("#summary_total_amount").html($("#schedule"+scheduleCode).data("price"))
		$("#summary_payment_total").html($("#schedule"+scheduleCode).data("price"))
		$("#summary_payment_total_cat").html($("#schedule"+scheduleCode).data("price"))
		$("#ticket_tnb > .tnb.step1").attr("class","tnb step3")
		$("#tnb_step_btn_right").attr("class","btn-right")
		
		btnStep="step3"
		return
	}//if
		
	$("#scheduleNum").val(scheduleCode);
	$("#id").val("${memVO.id}");
	$("#movieCode").val(selectMovie);
	alert(screenCode)
	$("#screenNum").val(screenCode);
	$("#pplCount").val(seatnums.length);
	$("#payment").val(paymentName[selectedIndex]);
	$("#seatNum").val(seatnums);
	
	$("#tel").val("${memVO.tel}");
	$("#name").val("${memVO.mname}")
	$("#pass").val("${memVO.password}")
	$("#birth").val("${memVO.birth}")
	
	
	$("#hidFrm").submit()
	return
	}//if
	
	if(btnStep == "step1"){
	alert("관람할 스케줄을 먼저 선택해주세요")
	return
	}//if
	if(btnStep == "step2"){
	alert("관람할 자리를 선택해주세요!")
	return
	}//if
	alert("결제수단을 선택해주세요")
	
}//TnbRightClick

var seatnums = [];
function seatClick(seatNum){
	if($("#seatNum_"+seatNum).attr("class") == "seat reserved"){
		return
	}//if
	
	if($("#seatNum_"+seatNum).attr("class") == "seat selected sgi0"){
	$("#seatNum_"+seatNum).attr("class","seat")
	seatnums = seatnums.filter(function(value) {
    return value !== seatNum;
	});
	checkSeat()
	return
	}//if
	
	if(pCount > seatnums.length){
	$("#seatNum_"+seatNum).attr("class","seat selected sgi0")
	seatnums.push(seatNum)
	checkSeat()
	if(pCount == seatnums.length){
		$("#tnb_step_btn_right").attr("class","btn-right on")
	}//if
	
	return
	}//if
	if(pCount == 0){
		alert("먼저 인원수를 선택해주세요!")
	}//if
	alert("선택하신 인원수를 초과하여 선택할 수 없습니다.")
	
}//seatClick

function checkSeat(){
		var text = "";
		var seat ="";
	for(var i = 0; i<seatnums.length;i++){
		if(i != 0){
		text += ", ";
		}//if
		seat = seatnums[i]
		text += row[parseInt(seat/13)]
		text += (seat%13+1)
	}//for
	$(".data.ellipsis-line3").html(text)
	$(".data > .price").html($("#schedule"+scheduleCode).data("price")*seatnums.length)
}//checkSeat

var pCount = 0;
function peopleCount(people){
	$("#peopleCount > .selected").attr("class","")
	$("#people_"+people).attr("class","selected")
	pCount = $("#people_"+people).data("count");
	$(".step.step2 > .section.section-seat.dimmed").attr("class","section section-seat")
}//peopleCount

function ticketRestart(){
	location.reload();
}//ticketRestart

var paymentName = ["신용카드","휴대폰 결제","간편결제","내통장결제","토스"]
var selectedIndex = 0;
document.addEventListener("DOMContentLoaded", function() {
	$("input[name='last_pay_radio']").on("change", function() {
		$("#tnb_step_btn_right").attr("class","btn-right on")
		
	    var selectedValue = $("input[name='last_pay_radio']:checked").val();

	    var payments = $(".payment_input");
	    $(".payment_form > .payment_input").attr("style", "display:none");

	    // selectedValue를 정수로 변환
	    selectedIndex = parseInt(selectedValue);

	    if (!isNaN(selectedIndex) && selectedIndex >= 0 && selectedIndex < payments.length) {
	        $(payments[selectedIndex]).attr("style", "display:block");
	        $("#summary_payment_list_cat").html(paymentName[selectedIndex])
	    }//if
	    
	    if(selectedIndex == 0){
	    	$("#tnb_step_btn_right").attr("class","btn-right")
	    }//if
	});//change
	
	$("#lp_card_type").change(function(){
		if($(this).val()=='카드를 선택하세요'){
	    	$("#tnb_step_btn_right").attr("class","btn-right")
	    	return
		}//if
	    	$("#tnb_step_btn_right").attr("class","btn-right on")
	})//change
	
});//ready
</script>
</head>

<body cz-shortcut-listen="true">
<form action="http://localhost/HCY_CINEMA/user/ticketing/ticketing_main_frame_process.jsp" id="hidFrm" name="hidFrm" method="get">
<input type="hidden" id="screenType" name="screenType" value="">
<input type="hidden" id="movie" name="movie" value="">
<input type="hidden" id="date" name="date" value="">
<input type="hidden" id="scheduleNum" name="scheduleNum" value="">
<input type="hidden" id="id" name="id" value="">
<input type="hidden" id="tel" name="tel" value="">
<input type="hidden" id="movieCode" name="movieCode" value="">
<input type="hidden" id="screenNum" name="screenNum" value="">
<input type="hidden" id="pplCount" name="pplCount" value="">
<input type="hidden" id="payment" name="payment" value="">
<input type="hidden" id="seatNum" name="seatNum" value="">
<input type="hidden" id="name" name="name" value="">
<input type="hidden" id="pass" name="pass" value="">
<input type="hidden" id="birth" name="birth" value="">
</form>

<a name="t"></a>
<div id="wrap" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<!-- 컨텐츠 -->
	<div id="container">
		<!-- 빠른예매 -->
		<div id="ticket" class="ticket ko">
			
			<!-- 타이틀 -->
			<div class="navi">
				<div class="newsletter">
					<p><a href="#">Click here</a> if you want to receive newsletter about English subtitle movies</p>
				</div>
				<span class="right">
				
					<a class="button button-reservation-restart" href="#" onmousedown="javascript:logClick('옵션/예매다시하기');" onclick="ticketRestart(); return false;"><span>예매 다시하기</span></a>
				
				</span>
				<div class="ie7_sucks" id="ie7_sucks"><span>Internet Explorer 9 이상에서 최적화된 서비스 이용이 가능합니다.</span></div>
			</div>
			<!-- //타이틀 -->
			<!-- 메인컨텐츠 -->
			<div class="steps">
				<!-- step1 -->
				<div class="step step1">
					<!-- MOVIE 섹션 -->
					<div class="section section-movie">
						<!-- col-head -->
						<div class="col-head" id="skip_movie_list">
							<h3 class="sreader">영화</h3>
							<a href="#" class="skip_to_something" onclick="skipToSomething('skip_theater_list');return false;">영화선택 건너뛰기</a>
						</div>
						<!-- col-body -->
						<div class="col-body">
							<!-- 영화선택 -->
							<div class="movie-select">
								<div class="movie-list nano" id="movie_list">
									<ul class="content scroll-y" onscroll="movieSectionScrollEvent();">
									<% 
										List<MovieVO> mList = TicketingDAO.getInstance().selectMovie();
										for(MovieVO mVO :mList){
											pageContext.setAttribute("moviecode", mVO.getMoviecode());
											pageContext.setAttribute("mname", mVO.getMname());
											pageContext.setAttribute("movieRating", mVO.getMovieRating());
											%>
											<li class="" data-index="${ moviecode }" movie_cd_group="20034026" movie_idx="87433" id="${ moviecode }"><a href="#" onclick="mListClickListener(${ moviecode },'${mname }','${ movieRating}'); return false;" title="${ mname }" alt="${ mname }"><i class="cgvIcon etc age${ movieRating == 'AL'?'all':movieRating } ">${ movieRating == 'AL'?'all':movieRating }</i><span class="text">${ mname }</span><span class="sreader"></span></a></li>
											<%
										}//for
									%>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- THEATER 섹션 -->
					<div class="section section-theater">
						<!-- col-head -->
						<div class="col-head" id="skip_theater_list">
							<h3 class="sreader">상영관</h3>
							<a href="#" class="skip_to_something" onclick="skipToSomething('skip_date_list');return false;">극장선택 건너뛰기</a>
						</div>
						<!-- col-body -->
						<div class="col-body">
							<!-- 자주가는 CGV -->
							<!--
								<div class="favorite_cgv" id="favorite_cgv">
									<p class="tit"></p>
									<p class="setting" style="display:none;"><a href="#" onclick="favoriteCGVSettingClickListener();return false;" class="btn_setting">설정 &gt;</a></p>
									<ul class="theaters"></ul>
									<div class="nolist">자주가는 CGV를<br>등록해주세요</div>
								</div>
							-->
							<!-- 극장선택 -->
							<div class="theater-select">
								<div class="theater-list">
									<div class="area_theater_list nano" id="theater_area_list" style="text-align: center;">
										<ul id="screenlist">
											<li class="" id="2D" data-title="2D" data-index="0" areaindex="1" theater_cd="0056" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="ListClickListener('2D');return false;" id="1" data-value="2D">2D<span class="sreader"></span></a></li>
											<li class="" id="3D" data-title="3D" data-index="0" areaindex="1" theater_cd="0056" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="ListClickListener('3D');return false;" id="2" data-value="3D">3D<span class="sreader"></span></a></li>
											<li class="" id="IMAX" data-title="IMAX" data-index="0" areaindex="1" theater_cd="0056" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="ListClickListener('IMAX');return false;" id="3" data-value="IMAX">IMAX<span class="sreader"></span></a></li>
										</ul>
									</div>
									<div class="theater-cgv-list nano" id="theater_cgv_list">
										<ul class="content scroll-y"></ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- DATE 섹션 -->
					<div class="section section-date">
						<div class="col-head" id="skip_date_list">
							<h3 class="sreader">날짜</h3>
							<a href="#" onclick="return false;" class="skip_to_something">날짜 건너뛰기</a>
						</div>
						<div class="col-body">
							<!-- 날짜선택 -->
							<div class="date-list nano" id="date_list">
								<ul class="content scroll-y">
								
								 <%
                        StringBuilder currentDate = new StringBuilder();
                       	Calendar cal = Calendar.getInstance();
                       	currentDate.append(cal.get(Calendar.YEAR))
                        	.append(cal.get(Calendar.MONTH)+1)
                        	.append(cal.get(Calendar.DAY_OF_MONTH));
                       	String[] days ={"일","월","화","수","목","금","토"};
                       	
                       	String day = null;
                       	int year = cal.get(Calendar.YEAR);
                       	int month = cal.get(Calendar.MONTH)+1;
                       	int date = cal.get(Calendar.DAY_OF_MONTH);
                       	int maxDate = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
                        	
                       	pageContext.setAttribute("maxDate", maxDate);
                       	
                       	StringBuilder sbTemp = new StringBuilder();
                       	
                       	int dayNum = cal.get(Calendar.DAY_OF_WEEK);
                       	
                       	pageContext.setAttribute("month", month);
                       	pageContext.setAttribute("year", year);
                       	for(int i = 0;i<16;i++ ){
                  		sbTemp.replace(0, sbTemp.length(), "");
                  		sbTemp.append(year);
                  		if(month<10){
                  			sbTemp.append("0");
                  		}//if
                  		sbTemp.append(month);
                  		if(date<10){
                  			sbTemp.append("0");
                  		}//if
                  		sbTemp.append(date);
                       	day = days[dayNum];
                       	dayNum++;
                       	if(dayNum > 6){
                       		dayNum=0;
                       	}//if
                       	
                       	pageContext.setAttribute("temp", sbTemp.toString());
                       	pageContext.setAttribute("day", day);
                       	pageContext.setAttribute("date", date);
                       	if(i==0){
                        %>
								<li class="month dimmed"><div><span class="year">${year }</span><span class="month">${month }</span><div></div></div></li>
                        <% }//if%>
								<li data-index="${i }" date="${temp }" class="day" id="${temp }"><a href="#" onclick="dListClickListener('${temp }'); return false;"><span class="dayweek">${ day }</span><span class="day">${date }</span><span class="sreader"></span></a></li>
                        <%
                       		date ++;
                        if(date>maxDate){
                        	date = 1;
                        	month++;
                       	pageContext.setAttribute("month", month);
                        		%>
								<li class="month dimmed"><div><span class="year">${year }</span><span class="month">${month }</span><div></div></div></li>
                        		<%
                        	if(month>12){
                        		month = 1;
                        		year ++;
                       	pageContext.setAttribute("year", year);
                        	}//if
                        }//if
                    }//for %>
								
								
								</ul>
							</div>
						</div>
					</div>
					<!-- TIME 섹션 -->
					<div class="section section-time">
						<div class="col-head" id="skip_time_list">
							<h3 class="sreader">시간</h3>
							<a href="#" class="skip_to_something" onclick="skipToSomething('tnb_step_btn_right');return false;">시간선택 건너뛰기</a>
						</div>
						<div class="col-body">
							<!-- 시간선택 -->
							<div class="time-option">
								<span class="morning">모닝</span><span class="night">심야</span>
							</div>
							<div class="placeholder">영화, 극장, 날짜를 선택해주세요.</div>
							<div class="time-list nano has-scrollbar">
								<div class="content scroll-y" tabindex="-1" style="right: -17px;" id="screenList">
									
								</div>
								<div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;">
									<div class="slider slider-y" style="height: 50px;"></div>
								</div>
								<div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;">
									<div class="slider slider-x" style="width: 50px;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- //step1 -->
				<!-- step2 -->
				<div class="step step2">
					<!-- SEAT 섹션 -->
					<div class="section section-seat dimmed">
						<div class="col-head" id="skip_seat_list">
							<h3 class="sreader">
								인원 / 좌석
								<span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
							</h3>
							<a href="#" class="skip_to_something" onclick="skipToSomething('tnb_step_btn_right');return false;">인원/좌석선택 건너뛰기</a>
						</div>
						<div class="col-body">
							<div class="person_screen">
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-numberofpeople">
									<div class="col-body">

										<!-- 인접좌석 -->
										<!-- <div class="adjacent_seat_wrap">
											<div class="adjacent_seat" id="adjacent_seat">
												<span class="title">좌석 붙임 설정</span>
												<div class="block_wrap">
													<span class="seat_block block1"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(1, this);" disabled><span class="box"></span><span class="sreader">1석 좌석붙임</span></label></span>
													<span class="seat_block block2"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(2, this);" disabled><span class="box"></span><span class="box"></span><span class="sreader">2석 좌석붙임</span></label></span>
													<span class="seat_block block3"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(3, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">3석 좌석붙임</span></label></span>
													<span class="seat_block block4"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(4, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">4석 좌석붙임</span></label></span>
												</div>
											</div>
										</div> -->

										<div id="nopContainer" class="numberofpeople-select" style="min-width: 426px;">
											<!-- 2021.05.25 - 좌석 거리두기 -->
											<!-- 최대 선택 가능 인원 표기 -->
											<div id="maximum_people" style="padding-bottom: 5px; text-align: right; font-size: 11px !important; color: red;">* 최대 8명 선택 가능</div>
											<div class="group adult" id="nop_group_adult" style="display: block;">
												<span class="title">일반</span>
												<ul id="peopleCount">
												</ul>
											</div>
											
										</div>
									</div>
								</div>
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-screen-select">
									<!-- UI 변경으로 삭제 
									<div class="title">선택하신 상영관<span>/</span>시간</div>
									-->
									<!-- UI 변경
									<div class="screen-time">
										<span class="screen"><b></b></span>
										<span class="seats seat_all"></span>
										<span class="time"></span>
										<span class="seats seat_remain"></span>
									</div>
									-->
									<div id="user-select-info">
										<p class="theater-info">
											
										</p>
										<p class="playYMD-info"></p>
									</div>
								</div>
							</div>
							<!-- THEATER -->
							<div class="theater_minimap">
								<div class="theater nano has-scrollbar" id="seat_minimap_nano">
									<div class="content" tabindex="-1" style="right: -17px; bottom: -17px;">
										<div class="screen" title="SCREEN" style="width: 652px;"><span class="text"></span></div>
										<div class="seats" id="seats_list" style="width: 416px; height: 224px;">
										
										<div class="exit top" style="top: -30px; left: 386px;">
										</div></div>
									</div>
								<div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
								<div class="minimap opened" id="minimap" style="display: none;">
									<div class="mini_header" onclick="ftSeatMinimapToggle();event.preventDefault();">Minimap<span></span></div>
									<div class="mini_container" style="width: 130px; height: 96px;">
										<div class="mini_screen">SCREEN</div>
										<div class="mini_exits"><div class="mini_exit tr"></div></div>
									</div>
									<div class="mini_region" style="height: 96px; width: 130px; top: 25px; left: 5px;"><span></span></div>
								</div>
								<div class="legend" style="width: 125px;">
									<div class="buttons">
										<a class="btn-zoom" id="seat_zoom_btn" href="#" onclick="ts2SeatZoomClickListener();return false;">크게보기</a>
									</div>
									<div class="seat-icon-desc">
										<span class="icon selected"><span class="icon"></span>선택</span>
										<span class="icon reserved"><span class="icon"></span>예매완료</span>
										<span class="icon notavail"><span class="icon"></span>선택불가</span>
										<!-- 2021.05.25 - 좌석 거리두기 -->
										<!-- 거리두기 좌석 범례 표기 -->
										<span class="icon distanced" style="display: none;"><span class="icon"></span>거리두기 좌석</span>
									</div>
									<div class="seat-type"><span class="radiobutton type-rating_economy" style="display: none;">Light석<span class="icon"></span></span><span class="radiobutton type-rating_comfort" style="display: none;">Standard석<span class="icon"></span></span><span class="radiobutton type-rating_prime" style="display: none;">Prime석<span class="icon"></span></span><span class="radiobutton type-handicap" style="">장애인석<span class="icon"></span></span><span class="radiobutton type-sweet" style="">SWEETBOX<span class="icon"></span></span><span class="radiobutton type-4d" style="display: none;">4DX<span class="icon"></span></span><span class="radiobutton type-gold" style="display: none;">골드<span class="icon"></span></span><span class="radiobutton type-vibration" style="display: none;">진동석<span class="icon"></span></span><span class="radiobutton type-cdc" style="display: none;">모션베드<span class="icon"></span></span><span class="radiobutton type-cinekids" style="display: none;">키즈석<span class="icon"></span></span><span class="radiobutton type-premium" style="display: none;">프리미엄<span class="icon"></span></span><span class="radiobutton type-widebox" style="display: none;">WIDEBOX<span class="icon"></span></span><span class="radiobutton type-couple" style="display: none;">커플석<span class="icon"></span></span><span class="radiobutton type-eggbox" style="display: none;">EGGBOX<span class="icon"></span></span><span class="radiobutton type-recliner" style="display: none;">리클라이너<span class="icon"></span></span><span class="radiobutton type-cabana" style="display: none;">카바나<span class="icon"></span></span><span class="radiobutton type-beanbag" style="display: none;">빈백석<span class="icon"></span></span><span class="radiobutton type-mat" style="display: none;">매트석<span class="icon"></span></span><span class="radiobutton type-relax" style="display: none;">릴렉스시트<span class="icon"></span></span><span class="radiobutton type-comport" style="display: none;">컴포트석<span class="icon"></span></span><span class="radiobutton type-mybox" style="display: none;">MYBOX<span class="icon"></span></span><span class="radiobutton type-cdcCoupleSofa" style="display: none;">커플 리클라이너<span class="icon"></span></span><span class="radiobutton type-cdcRecliner" style="display: none;">리클라이너<span class="icon"></span></span><span class="radiobutton type-cdcSofa" style="display: none;">소파<span class="icon"></span></span><span class="radiobutton type-coupleSofa" style="display: none;">커플소파<span class="icon"></span></span><span class="radiobutton type-suite_A" style="display: none;">Suite 4인<span class="icon"></span></span><span class="radiobutton type-suite_B" style="display: none;">Suite 2인<span class="icon"></span></span><span class="radiobutton type-familyRecliner" style="display: none;">패밀리 리클라이너<span class="icon"></span></span><span class="radiobutton type-private1" style="display: none;">PRIVATE 2인<span class="icon"></span></span><span class="radiobutton type-private2" style="display: none;">PRIVATE_A<span class="icon"></span></span><span class="radiobutton type-private3" style="display: none;">PRIVATE 4인<span class="icon"></span></span></div>
								</div>
								<div class="mouse_block"></div>
							</div>
						</div>
					</div>
					<a class="btn-refresh" href="#">
						<span>다시하기</span>
					</a>
					<!-- 시간표 변경 -->
					<div class="section_time_popup" id="section_time_popup">
						<div class="canvas">
							<div class="sprite">
								<div class="time-option">
									<span class="morning">모닝</span><span class="night">심야</span>
								</div>
								<div class="time-list nano" id="time_popup_list">
									<div class="content scroll-y"></div>
								</div>
							</div>
							<div class="buttons">
								<a href="#" onclick="return false;" class="btn_ok"><span>확인</span></a>
								<a href="#" onclick="return false;" class="btn_cancel"><span>취소</span></a>
								<a href="#" onclick="return false;" class="sreader" onfocus="ticketStep2TimeSelectPopupHide();">시간표 변경 팝업 닫기</a>
							</div>
						</div>
						<div class="corner"></div>
					</div>
					<!-- 시간표 변경 -->
				</div>
				<!-- //step2 -->
				<!-- step3 -->
				<div class="step step3">

<div class="ticket_payment_method">
	<a href="#" onclick="return false;" id="ticket_payment_top" class="sreader">결제시작</a>
	
	<!-- 온라인 큭별 요금제 -->
	<div class="tpm_special" id="onlinePromotion" style="display: none;">
		<div class="special_header">
			<h3 class="title"></h3><span class="desc"></span>
				<!-- <a class="tpmh_btn"><span>펼치기</span></a> -->
			
		</div>
		<div class="special_body membership"> 
			<div class="row online_promotion">
				<div class="divider"></div>
				<div class="title"></div>
				<div class="card_no"><input id="onlinePayApply" type="checkbox"><label for="onlinePayApply" style="margin-left: 10px;"></label></div>
				<div class="result" style="text-align: left;"><span style="line-height: 20px; color: rgb(102, 102, 102);"></span></div>
			</div>
		</div>
	</div>
	
	<!-- 맴버쉽 결제 -->
	<div class="tpm_special tpm_wrap" id="paySpecial" style="display: none;">
		<h4 class="special_header">
			<span class="title">멤버십</span>
			<!-- <span class="desc">멤버십 결제는 다른 할인수단 적용 및 결제와 중복으로 사용하실 수 없습니다.</span> -->
			<a class="tpmh_btn"><span>펼치기</span></a>
		</h4>
		<div class="tpm_body special_body membership" style="display: none;">
			<!-- popupContainers -->

<!-- formContainers -->
		<div class="row" id="spCGVian" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CGV 임직원</div>
	<div class="msg"></div>
	<div class="card_no">
	<div class="title"><label for=""></label></div>
	<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
		<a class="btn_toggle" href="#none">
			<span class="default"> 	조회/적용 	</span>
			<span class="cancel"> 	취소		</span>
		</a>
	</div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	보유매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">	사용매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
</div><div class="row" id="spCGVStaff" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CGV 미소지기</div>
	<div class="msg"></div>
	<div class="card_no">
	<div class="title"><label for=""></label></div>
	<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
		<a class="btn_toggle" href="#none">
			<span class="default"> 	조회/적용 	</span>
			<span class="cancel"> 	취소		</span>
		</a>
	</div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	보유매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">	사용매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
</div><div class="row" id="spFreepass" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CGV 프리패스카드</div>
	<div class="msg"></div>
	<div class="card_no">
	<div class="title"><label for=""></label></div>
	<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
		<a class="btn_toggle" href="#none">
			<span class="default"> 	조회/적용 	</span>
			<span class="cancel"> 	취소		</span>
		</a>
	</div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	보유매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">	사용매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
</div><div class="row" id="spCJEnt" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CJ E&amp;M 임직원</div>
	<div class="msg"></div>
	<div class="card_no">
	<div class="title"><label for=""></label></div>
	<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
		<a class="btn_toggle" href="#none">
			<span class="default"> 	조회/적용 	</span>
			<span class="cancel"> 	취소		</span>
		</a>
	</div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	보유매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">	사용매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
</div><div class="row" id="spEnMmaster" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CJ E&amp;M Master/Power</div>
	<div class="msg"></div>
	<div class="card_no">
	<div class="title"><label for=""></label></div>
	<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
		<a class="btn_toggle" href="#none">
			<span class="default"> 	조회/적용 	</span>
			<span class="cancel"> 	취소		</span>
		</a>
	</div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	보유매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">	사용매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
</div><div class="row" id="spPrestige" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">PRESTIGE 카드 결제</div>
	<div class="msg"></div>
	<div class="card_no">
	<div class="title"><label for=""></label></div>
	<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
		<a class="btn_toggle" href="#none">
			<span class="default"> 	조회/적용 	</span>
			<span class="cancel"> 	취소		</span>
		</a>
	</div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	보유매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">	사용매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
</div><div class="row type2" id="spCJOfficer" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CJ 임원결제</div>
	<div class="msg"></div>
	<div class="contents">
		<p class="title">정상 조회 되었습니다. 아래 적용 버튼을 클릭해 주세요.</p>
		<span class="payName">할인금액:</span>
		<span class="price">0</span><span class="won">원</span>
		<span class="btnCon">
			<a class="btn_toggle" href="#none">
				<span class="default"> 	적용 	</span>
				<span class="cancel"> 	취소		</span>
			</a>
		</span>
	</div>	
</div><div class="row type2" id="spCJClub" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CJ Club 카드 결제</div>
	<div class="msg"></div>
	<div class="contents">
		<p class="title">정상 조회 되었습니다. 아래 적용 버튼을 클릭해 주세요.</p>
		<span class="payName">할인금액:</span>
		<span class="price">0</span><span class="won">원</span>
		<span class="btnCon">
			<a class="btn_toggle" href="#none">
				<span class="default"> 	적용 	</span>
				<span class="cancel"> 	취소		</span>
			</a>
		</span>
	</div>	
</div><div class="row type2" id="spCJClub2" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CJ Club2 카드 결제</div>
	<div class="msg"></div>
	<div class="contents">
		<p class="title">정상 조회 되었습니다. 아래 적용 버튼을 클릭해 주세요.</p>
		<span class="payName">할인금액:</span>
		<span class="price">0</span><span class="won">원</span>
		<span class="btnCon">
			<a class="btn_toggle" href="#none">
				<span class="default"> 	적용 	</span>
				<span class="cancel"> 	취소		</span>
			</a>
		</span>
	</div>	
</div><div class="row" id="spSupport" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CGV 서포터즈 관람카드</div>
	<div class="msg"></div>
	<div class="card_no">
	<div class="title"><label for=""></label></div>
	<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
		<a class="btn_toggle" href="#none">
			<span class="default"> 	조회/적용 	</span>
			<span class="cancel"> 	취소		</span>
		</a>
	</div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	보유매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">	사용매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
</div><div class="row" id="spVIPPartner" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">Partners(VIP)</div>
	<div class="msg"></div>
	<div class="card_no">
	<div class="title"><label for=""></label></div>
	<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
		<a class="btn_toggle" href="#none">
			<span class="default"> 	조회/적용 	</span>
			<span class="cancel"> 	취소		</span>
		</a>
	</div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	보유매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">	사용매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
</div><div class="row" id="spJobworld" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">잡월드 관람카드</div>
	<div class="msg"></div>
	<div class="card_no">
	<div class="title"><label for=""></label></div>
	<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
		<a class="btn_toggle" href="#none">
			<span class="default"> 	조회/적용 	</span>
			<span class="cancel"> 	취소		</span>
		</a>
	</div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	보유매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">	사용매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
</div><div class="row type2" id="vipHalfDisc" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">VIP 반값할인</div>
	<div class="msg"></div>
	<div class="body">
		<div class="block avail_count">
			<span class="title">사용 가능 수량</span>
			<span class="value"><span class="num">0</span>매</span>
		</div>
		<div class="block avail_point">
			<span class="title point">가용 포인트</span>
			<span class="value"><span class="num">0</span>P</span>
		</div>
		<div class="block apply_count"><span class="title">사용매수</span>
			<span class="ticket_type">
				<div class="type adult">
					<span class="title">일반</span>
					<a href="#"><span class="sreader"> 일반 </span><span>0</span><span class="sreader"> 명 </span></a>
					<a href="#"><span class="sreader"> 일반 </span><span>1</span><span class="sreader"> 명 </span></a>
					<a href="#"><span class="sreader"> 일반 </span><span>2</span><span class="sreader"> 명 </span></a>
					<a href="#"><span class="sreader"> 일반 </span><span>3</span><span class="sreader"> 명 </span></a>
					<a href="#"><span class="sreader"> 일반 </span><span>4</span><span class="sreader"> 명 </span></a>
				</div>
				<div class="type youth">
					<span class="title">청소년</span>
					<a href="#"><span class="sreader"> 청소년 </span><span>0</span><span class="sreader"> 명 </span></a>
					<a href="#"><span class="sreader"> 청소년 </span><span>1</span><span class="sreader"> 명 </span></a>
					<a href="#"><span class="sreader"> 청소년 </span><span>2</span><span class="sreader"> 명 </span></a>
					<a href="#"><span class="sreader"> 청소년 </span><span>3</span><span class="sreader"> 명 </span></a>
					<a href="#"><span class="sreader"> 청소년 </span><span>4</span><span class="sreader"> 명 </span></a>
				</div>
			</span>
		</div>

		<div class="block use_point">		<span class="title">사용할 포인트</span>		<span class="value"><span class="num">0</span>P</span></div>
		<div class="block remain_point"> 	<span class="title">잔여 포인트</span> 	<span class="value"><span class="num">0</span>P</span></div>
		<div class="result"> <span class="title">할인금액:</span> <span class="price">0</span> <span class="won">원</span> </div>
		<div class="guide">- 적용 대상: CGV VIP, RVIP, VVIP, SVIP<br>- 사용 한도: <span class="red">등급 기간 내 VIP 5매, RVIP 10매, VVIP 20매, SVIP 30매 / 일 한도 : 4매 (VIP 공통)</span><br>- 사용 조건: 일반 / IMAX / 4DX (무비꼴라쥬 포함) 관에서 상영하는 일반 2D영화와 일반관에서 상영하는 3D 영화 중 일반, 청소년으로 예매 시 적용 가능<br>- 조조, 심야, 일부 특정 상영회차 이용 불가<br>- 컬쳐데이, 온라인 특별 요금제 중복할인 불가<br>- SWEETBOX / GOLD CLASS / CINE de CHEF / 프리미엄 / STARIUM / IMAX / 4DX / PRIVATE CINEMA 이용 불가<br>- 영화 기획전, 영화제 등 특별 편성 프로그램 및 라이트톡, 시네마톡 등 톡프로그램 이용 불가<br></div>
	</div>
</div><div class="row type2" id="sp4dxRed" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CGV 4DX RED CARD</div>
	<div class="msg"></div>
	<div class="card_no"></div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	사용 가능 매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">적용매수</span>
		<select class="useNum">
			<option value="0">0</option>
			<option value="1">1</option>
			<option value="2">2</option>
		</select>
		<span class="exe">매</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
	<div class="msg2">※ 영화당 할인 1회(최대2매)까지 적용 가능 (청소년,어린이,우대 제외)</div>
</div><div class="row type2" id="spNobless" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">CGV 노블레스 BLACK CARD</div>
	<div class="msg"></div>
	<div class="card_no"></div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	사용 가능 매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">적용매수</span>
		<select class="useNum">
			<option value="0">0</option>
			<option value="1">1</option>
			<option value="2">2</option>
		</select>
		<span class="exe">매</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
	<div class="msg2">※ 영화당 할인 1회(최대2매)까지 적용 가능 (청소년,어린이,우대 제외)</div>
</div><div class="row type2" id="spCoupleMem" style="display: none;">
	<div class="dimmCon" style="display: none;"></div>
	<div class="divider"></div>
	<div class="title name">커플링 스윗박스 할인</div>
	<div class="msg"></div>
	<div class="card_no"></div>
	<!--보유티켓-->
	<div class="hold_ticket">
		<span class="title">	사용 가능 매수	</span>
		<span class="value">0</span><span class="exe">	매	</span>
	</div>
	<!--사용티켓-->
	<div class="use_ticket">
		<span class="title">적용매수</span>
		<select class="useNum">
			<option value="0">0</option>
			<option value="1">1</option>
			<option value="2">2</option>
		</select>
		<span class="exe">매</span>
	</div>
	<!--할인금액-->
	<div class="result">
		<span class="title"> 할인금액 :</span>
		<span class="price">0</span><span class="exe">	원	</span>
	</div>
	<div class="msg2">※ 커플링 클럽 가입고객은 스윗박스 주중(월~목) 1만원 관람이 가능합니다.<br>※ 일 1회 동반 1인까지 최대 2매 할인 적용이 가능합니다.</div>
</div></div>
	</div>

	<!-- 할인쿠폰 -->
	
	<!-- 관람권/기프트콘 -->
	
	<!-- 포인트/상품권 -->
	
	<!-- 최종결제 -->
	<div id="lastPayMethod">
		<h4 class="ts3_titlebar ts3_t1">
			<span class="title">최종결제 수단</span>
		</h4>
		<h4 class="ts3_titlebar ts3_t1" style="display: none;">
			<span class="header">비회원결제</span>
			<span class="desc">비회원 예매는 신용카드 결제만 가능합니다.</span>
		</h4>
		
<div class="tpm_wrap tpm_last_pay">
	<div class="tpm_body">
		<div>
			<div class="payment_select_guest">일반 신용카드</div><!-- 비회원 카드 결제 -->
			<div class="payment_select radio_group" id="lastPayCon">
				<span style="opacity: 1;">
					<input type="radio" id="last_pay_radio0" name="last_pay_radio" value="0" checked="checked">
					<label for="last_pay_radio0">신용카드 </label>
				</span>
				<span style="opacity: 1;">
					<input type="radio" id="last_pay_radio1" name="last_pay_radio" value="1">
					<label for="last_pay_radio1">휴대폰 결제</label>
				</span>
				<span style="display: none; opacity: 1;">
					<input type="radio" id="last_pay_radio2" name="last_pay_radio" value="2">
					<label for="last_pay_radio2">계좌이체</label>
				</span>
				<span style="opacity: 1;">
					<input type="radio" id="last_pay_radio3" name="last_pay_radio" value="3">
					<label for="last_pay_radio3">간편결제</label>
				</span>
			<span style="opacity: 1;"><input type="radio" name="last_pay_radio" value="4" id="SettleBank_btn"><label for="SettleBank_btn">내통장결제</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio" value="5" id="toss_btn"><label for="toss_btn">토스</label></span></div>
			<!-- 2021.05.20 - 최종결제수단 '간편결제' 순서 변경 -->
			<div class="payment_select radio_group" id="smartPayCon" style="display: none;"><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="0" id="naverPay_btn"><label for="naverPay_btn">네이버페이</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="1" id="smilePay_btn"><label for="smilePay_btn">스마일페이</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="2" id="SSGPAY_btn"><label for="SSGPAY_btn">SSGPAY</label></span><span style="display: none; opacity: 0.7;"><input type="radio" name="last_pay_radio2" value="3" id="CHAi_btn" disabled=""><label for="CHAi_btn">차이</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="4" id="payKakao_btn"><label for="payKakao_btn">카카오페이</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="5" id="payPayco_btn"><label for="payPayco_btn">PAYCO</label></span><span style="display: none; opacity: 0.7;"><input type="radio" name="last_pay_radio2" value="6" id="Paycoin_btn" disabled=""><label for="Paycoin_btn">페이코인</label></span></div>
			<div class="payment_form">
				
<!-- 신용카드 -->
<div id="payCredit" class="payment_input payment_card" style="display: block;">
	<div class="table_wrap card_default" style="width: auto; min-height: 210px;">
		<table>
			<caption>신용카드의 종류, 카드번호, 비밀번호, 유효기간, 주민등록번호 입력</caption>
			<thead></thead>
			<tbody>
				<tr id="" style="display: table-row;">
					<th scope="row"><label for="lp_card_type">카드종류</label></th>
					<td><div>
						<div class="form_wrap select card_type form_bg">
							<select id="lp_card_type"><option selected="selected">카드를 선택하세요</option><option card_code="BCC" card_type="1" card_digit="14" card_cd="N0002">BC카드</option><option card_code="DIN" card_type="1" card_digit="14" card_cd="N0005">현대카드</option><option card_code="KEB" card_type="1" card_digit="14" card_cd="N0012">하나카드</option><option card_code="WIN" card_type="1" card_digit="15" card_cd="N0023">삼성카드</option><option card_code="SHB" card_type="1" card_digit="15" card_cd="N0021">신한카드</option><option card_code="CNB" card_type="1" card_digit="16" card_cd="N0004">KB국민카드</option><option card_code="KKB" card_type="1" card_digit="16" card_cd="N0024">카카오뱅크카드</option><option card_code="NLC" card_type="1" card_digit="16" card_cd="N0017">NH카드</option><option card_code="SCB" card_type="1" card_digit="16" card_cd="N0020">스탠다드차타드은행카드</option><option card_code="CIT" card_type="1" card_digit="16" card_cd="N0003">씨티카드</option><option card_code="AMX" card_type="1" card_digit="15" card_cd="N0001">롯데/아멕스카드</option><option card_code="KBK" card_type="1" card_digit="16" card_cd="N0025">K뱅크</option><option card_code="PHB" card_type="1" card_digit="16" card_cd="N0018">우리카드</option><option card_code="KNC" card_type="1" card_digit="16" card_cd="N0027">코나카드</option><option card_code="SIN" card_type="1" card_digit="16" card_cd="N0022">신세계카드</option><option card_code="KJB" card_type="1" card_digit="16" card_cd="N0014">광주은행카드</option><option card_code="SAN" card_type="1" card_digit="16" card_cd="N0019">산은캐피탈</option><option card_code="NFF" card_type="1" card_digit="16" card_cd="N0016">수협카드</option><option card_code="KDB" card_type="1" card_digit="16" card_cd="N0011">KDB산업은행카드</option><option card_code="JBB" card_type="1" card_digit="16" card_cd="N0009">전북은행카드</option><option card_code="JJB" card_type="1" card_digit="16" card_cd="N0010">제주은행카드</option><option card_code="KEP" card_type="1" card_digit="16" card_cd="N0013">우체국카드</option><option card_code="MGC" card_type="1" card_digit="16" card_cd="N0015">MG체크카드</option><option card_code="HSC" card_type="1" card_digit="16" card_cd="N0007">KB증권카드(구,현대증권)</option><option card_code="IBK" card_type="1" card_digit="16" card_cd="N0008">기업은행카드</option><option card_code="SSG" card_type="1" card_digit="16" card_cd="N0026">SSG카드</option></select>
						</div>
						<div class="use_point" style="display: none;">
							<input type="checkbox" id="lp_use_point"><label for="lp_use_point">BC Top 포인트 사용</label>
						</div>
						</div>
					</td>
				</tr>
				<tr class="payment_card_radio_wrap radio_group" style="display: none;">
					<td colspan="2">
						<span class="selectType" style="display: none;">
							<input type="radio" id="payment_card_radio0" name="payment_card_radio" value="0" checked="checked">
							<label for="payment_card_radio0">앱카드</label>
						</span>
						<span class="selectType" style="display: none;">
							<input type="radio" id="payment_card_radio3" name="payment_card_radio" value="3">
							<label for="payment_card_radio3">페이북/ISP</label>
						</span>
						<span class="selectType" style="display: none;">
							<input type="radio" id="payment_card_radio1" name="payment_card_radio" value="1" checked="checked">
							<label for="payment_card_radio1">일반 신용카드(체크카드 포함)</label>
						</span>
						<span class="selectType" style="display: none;">
							<input type="radio" id="payment_card_radio2" name="payment_card_radio" value="2">
							<label for="payment_card_radio2">즉시할인 신용카드</label>
						</span>	
					</td>
				</tr>
				<tr id="preDiscNm" class="" style="display: none;">
					<th scope="row"><label for="lp_card_no1">카드명</label></th>
					<td>
						<span class="name" style="display: none;"></span>
						<div class="form_wrap select card_type form_bg" style="display: none;"> <select class="preDiscList"></select> </div>
					</td>
				</tr>
				<tr id="input_card_num" style="display: none;">
					<th scope="row"><label for="lp_card_no1">카드번호</label></th>
					<td><div>
						<div class="form_wrap text card_no form_bg">
							<label for="lp_card_no1">카드 번호 첫번째 숫자 입력</label>
							<input id="lp_card_no1" name="cardNo" type="text" maxlength="4" class="type-n nohan">
						</div>
						<span class="divider">-</span>
						<div class="form_wrap text card_no form_bg">
							<label for="lp_card_no2">카드 번호 두번째 숫자 입력</label>
							<input id="lp_card_no2" name="cardNo" type="password" maxlength="4" class="type-n nohan">
						</div>
						<span class="divider">-</span>
						<div class="form_wrap text card_no form_bg">
							<label for="lp_card_no3">카드 번호 세번째 숫자 입력</label>
							<input id="lp_card_no3" name="cardNo" type="password" maxlength="4" class="type-n nohan">
						</div><span class="divider">-</span>
						<div class="form_wrap text card_no form_bg">
							<label for="lp_card_no4">카드 번호 네번째 숫자 입력</label>
							<input id="lp_card_no4" name="cardNo" type="text" maxlength="4" class="type-n nohan">
						</div>
					</div></td>
				</tr>
				
				<tr id="input_card_Expire" style="display: none;">
					<th scope="row"><label for="lp_card_month">유효기간</label></th>
					<td><div>
						<div class="form_wrap text card_date form_bg">
							<label for="lp_card_month">카드 유효기간 월 숫자 입력</label>
							<input id="lp_card_month" name="cardExpd" type="text" maxlength="2" class="type-n nohan">
						</div><span class="string">월</span>
						<div class="form_wrap text card_date form_bg">
							<label for="lp_card_year">카드 유효기간 년도 숫자 입력</label>
							<input id="lp_card_year" name="cardExpd" type="text" maxlength="2" class="type-n nohan">
						</div><span class="string">년</span>
						<div class="expire_ex">예) 2015년 9월 -&gt; 09월 15년</div>
					</div></td>
				</tr>
				
				<tr id="input_card_pw" style="display: none;">
					<th scope="row"><label for="lp_card_pw">비밀번호</label></th>
					<td><div>
						<div class="form_wrap text card_pw form_bg">
							<label for="lp_card_pw">카드 비밀번호 숫자 입력</label>
							<input id="lp_card_pw" name="cardPw" type="password" maxlength="2" class="type-n nohan">
						</div><span class="password">**</span>
					</div></td>
				</tr>
				
				<tr class="input_card_ssn" style="display: none;">
					<th scope="row">
						<span class="ssn">		<label for="lp_card_ssn">법정생년월일 (6자리)</label></span>
						<span class="corporate" style="display: none;"><label for="lp_coporate">사업자<br>등록번호</label></span>
					</th>
					
					<td><div>
						<div class="ssn">
						<div class="form_wrap text card_ssn form_bg">
							<label for="lp_card_ssn">법정생년월일 (6자리)</label>
							<input id="lp_card_ssn" name="ssn" type="password" maxlength="6" class="type-n nohan">
						</div>
						<span class="divider">-</span><span class="password">*******</span>
						</div>

						<div class="form_wrap text corporate form_bg" style="display: none;">
							<label for="lp_coporate">법인공용카드 사업자등록번호 10자리 입력</label>
							<input id="lp_coporate" name="corporate" type="text" maxlength="10" class="type-n nohan">
						</div>
							
						<div class="use_coporate_card">
							<input type="checkbox" id="lp_use_coporate_card"><label for="lp_use_coporate_card">법인공용카드 사용</label>
						</div>
					</div></td>
				</tr>
			</tbody>
		</table>

		<div class="discount_result">
			<div class="result_reference" style="display: none;">
				<span class="left">＊
					즉시할인혜택이 적용되는 카드는, 즉시할인 신용카드 탭에서 결제하셔야 할인이 적용됩니다.​
				</span>
			</div>

			<div class="result_reference" style="display: none;">
				<span class="left">＊
					카드번호와 유효기간을 입력하신 후 조회를 누르시면 할인 금액이 조회됩니다.
				</span>
				<span class="right">
					<a class="brown btn_verify btn_toggle" href="#" onclick="return false;">
						<span class="default">
							조회/적용
						</span>
						<span class="cancel">
							사용취소	
						</span>
					</a>
				</span><!-- right -->
			</div>
			<div class="discount_price" style="display: none;">
				<div class="discount_price_inner">
					<span class="title">
						추가할인금액:
					</span>
					<span class="price discAmt">0</span>
					<span class="won">원</span>
				</div>
			</div>
			<div class="discount_price" style="display: none;">
				<div class="discount_price_inner">
				  <span class="title">
				  		카드결제금액:</span><span class="price payAmt">0</span><span class="won">원</span>
				</div>
			</div>
		</div><!-- discount_result -->
	</div><!-- card_default -->


	
	<div class="card_explain">
		<ul>
		
			<li class="isp" style="display: none;">선택하신 카드로 결제하려면 ISP 프로그램이 필요합니다. 처음 결제하시는 경우 ISP 프로그램 설치가 진행 됩니다.</li>
			<li class="ssa" style="display: none;">즉시할인/더블적립 혜택이 적용되는 카드는 앱카드 결제 시에도 적용 가능합니다.</li>
			<li class="ssa" style="display: none;">군인권종/동시상영/핫딜/온라인특별요금제/비회원 결제  시 CJONE삼성카드 즉시할인(더블적립) 및 삼성카드 온라인 선할인 적용은 불가합니다.</li>
			<li class="ssa" style="display: none;">통합결제 시 CJONE삼성카드 즉시할인(더블적립) 및 삼성카드 온라인 선할인 적용은 불가합니다.</li>
			<li class="ssa" style="display: none;">타 할인 적용 시 CJONE삼성카드 즉시할인(더블적립) 및 삼성카드 온라인 선할인 적용은 불가합니다. </li>
			<li class="ssa" style="display: none;">카드 할인금액이 3천원 미만일 경우 할인 적용이 불가합니다.</li>

			<!-- 
			<li class="bc"><strong>BC Top 포인트</strong> 보유 고객이라면 결제 시 포인트사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br/>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
			<li class="bc"><strong>평일(월~금) 예매 시, 월 10회/일 1회 2매까지 장당 2천원 추가 할인</strong>
				<p>- 9,000원 이상 티켓에 한함</p>
				<p>- 법인/기프트 카드 제외, 우대/특별관 예매 시 적용 불가</p>
				<p>- 우대/특별관/Family요금제 적용 시 BC 2천원 할인 제외</p>
				<p>- 2018년 12월 31일까지 할인 가능</p>
			</li> 
			<li class="bc">1,000원 할인 또는 즉시할인 혜택 적용여부는 고객님의 실적 및 할인혜택 사용여부에 따라 적용되지 않을 수 있습니다.</li>
			-->
			<li class="yes" style="display: none;"><strong>하나카드 즉시할인</strong>을 받으시려면, 즉시할인 신용카드 &gt; 하나카드할인을 선택하신 후 결제를 진행해주세요.</li>
			<li class="yes" style="display: none;"><strong>하나머니</strong> 보유 고객이라면 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
			<li class="lt" style="display: none;"><strong>CGV롯데포인트 플러스카드 할인 혜택</strong>을 받으시려면, 즉시할인 신용카드 &gt; 롯데카드 할인을 선택하신 후 결제를 진행해주세요.</li>
			<li class="ct" style="display: none;"><strong>CITI포인트</strong> 보유 고객이라면 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
			<li class="nh" style="display: none;"><strong>NH카드 할인혜택</strong>을 받으시려면, 즉시할인 신용카드 &gt; NH카드 할인을 선택하신 후 결제를 진행해주세요.<br><strong> (현재 페이지에서 결제 시 즉시할인 혜택이 제공되지 않습니다.)</strong> </li>
			<li class="nh" style="display: none;"><strong>NH 채움포인트</strong> 보유고객이라면 결제 시 포인트 사용 '네모박스' 체크 후 보유 포인트로 영화를 결제할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서로 확인할 수 있습니다.)</li>
			<li class="nh" style="display: none;"><strong>NH 채움포인트</strong> 부족 시 '네모박스' 체크 해제 후 결제 부탁 드립니다</li>

			<li class="kb" style="display: none;"><strong>KB 포인트리</strong> 보유 고객이라면 결제 시 포인트사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
			<li class="ss" style="display: none;"><strong>CJ ONE 삼성카드 더블적립/할인 혜택</strong>을 받으시려면, 즉시할인 신용카드 &gt; CJ ONE 삼성카드 할인을 선택하신 후 결제를 진행해주세요.</li>
			<li class="ss" style="display: none;"><strong>삼성보너스포인트/S클래스포인트</strong> 보유 고객이라면, 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
			<li class="sh" style="display: none;"><strong>CJ ONE 신한카드 더블적립/할인 혜택</strong>을 받으시려면, 즉시할인 신용카드 &gt; CJ ONE 신한카드 할인을 선택하신 후 결제를 진행해주세요.</li>
			<li class="sh" style="display: none;"><strong>마이신한포인트</strong> 보유 고객이라면, 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)<br>단, 포인트 사용 후 기존 카드 할인 적용됩니다.</li>
			<!-- 2021.01.04 - 현대 M포인트 사용 대상 조정 -->
			<li class="hd" style="display: none;">
				<strong>현대카드M포인트DAY</strong><br> 매주 금요일/토요일 5,000M포인트 사용.<br>그 외 요일은 2,000M포인트 사용.
				<!-- 2021.06.01 - 현대 M포인트 프로모션 할인 -->
				<p class="hd_p" style="margin-top: 5px; display: none;">**2021년 5월 9일부터 6월 1일까지 현대 M포인트가 제공하는 특별 찬스!!<br>- 매일매일 6,000원씩 사용하여 티켓할인적용이 가능합니다.</p>
				<p class="hd_p2" style="margin-top: 5px; display: none;">**2021년 6월 2일부터 7월 3일까지 현대 M포인트가 제공하는 특별 찬스!!<br>- 매일매일 5,000원씩 사용하여 티켓할인적용이 가능합니다.</p>
				<p style="color:#0068b7; margin-top:5px;">현대카드 M포인트를 사용하시려면,<br>Step3. 포인트 및 기타결제 수단 &gt; 현대카드 M포인트에서 결제를 진행하시기 바랍니다.</p>
			</li>
			<li class="sc" style="display: none;"><strong>360도 리워드포인트</strong> 보유 고객이라면 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
			<li class="hnb" style="display: none;"><strong>하나머니</strong> 보유고객이라면 결제 시 ‘하나머니 사용’ 네모박스 체크 후 보유 포인트로 영화를 결제할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서로 확인할 수 있습니다.)</li>
			<li class="nhsale" style="display: none;">
				최종 결제 금액 <strong>8,000원 이상</strong> 시 1천원 할인 제공<br>
				( 최대 2매까지 적용, 일 1회, 월4회 限) 단, 조조, 청소년, 4DX, SoundX 등 특화관 제외 )</li>
			<li class="nhsale" style="display: none;"><strong>예매일 이후 취소</strong> 진행 시, 할인횟수 한도 복원에 <strong>2~3일 소요</strong>될 수 있습니다. (관련 문의 1588 - 1600)</li>
			<li class="nhsale" style="display: none;">일부카드(천·지·인, TAKE 5, 패밀리카드)에 한해 청구할인이 유지되며, 상세 이용기준은 NH농협카드 홈페이지 참조 요망</li>
			<li class="nhsale" style="display: none;"><strong>NH 채움포인트</strong> 보유고객이라면 결제 시 포인트 사용 '네모박스' 체크 후 보유 포인트로 영화를 결제할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서로 확인할 수 있습니다.)</li>
			<li class="nhsale" style="display: none;"><strong>NH 채움포인트</strong> 부족 시 '네모박스' 체크 해제 후 결제 부탁 드립니다</li>
			<!-- NH 문화누리 카드 -->
			<li class="nhc" style="display: none;">문화누리카드 할인 적용 제외 상품의 경우 '일반 신용카드' 메뉴를 이용해주세요.</li>
			<!-- 우리카드 PLCC 즉시할인 카드 -->
			<li class="phb" style="display: none;">CGV 우리카드로 결제 시 제공되는 혜택입니다.</li>
			<li class="phb" style="display: none;">티켓 1매 무료할인이 우선 적용됩니다.</li>
			<li class="phb" style="display: none;">티켓 1매 무료할인 결제 이력이 있을 경우 5천원 즉시할인이 적용됩니다.</li>
			<li class="phb" style="display: none;">월 할인 횟수를 모두 사용했을 경우, ISP 탭에서 결제해 주세요.</li>
			<li class="phb" style="display: none;">카드번호 및 유효기간은 우리카드 APP 내 'MY' - '보유카드조회' 에서 확인 가능합니다.</li>
			<li class="phb" style="display: none;">1매 예매 시, CGV 및 타 할인쿠폰 / 포인트 중복 적용이 불가합니다.</li>
			<!-- 코나카드 일반결제 -->
			<li class="knc" style="display: none;">일반 결제 시 즉시할인은 적용되지 않습니다. 즉시할인 적용을 원하시는 경우 '즉시할인' 메뉴를 이용해 주세요.</li>
			<!-- 코나카드 즉시할인 -->
			<li class="knc_disc" style="display: none;">코나카드로 최종 결제 시 제공되는 혜택입니다.</li>
			<li class="knc_disc" style="display: none;">일 최대 1매 할인 기준으로 적용되며, 일 할인 횟수 모두 사용했을 시 일반 결제 이용 부탁드립니다.</li>
			<li class="knc_disc" style="display: none;">할인 적용 시, 타 할인쿠폰 및 일부 제휴사 POINT 사용 및 중복 할인 적용이 불가합니다.</li>
			<li class="knc_disc" style="display: none;">할인금액에 대해서는 CJ ONE POINT 적립이 불가합니다.</li>
		
		</ul>
	</div>
	<div class="payment_input_exp" id="savePointCon">
		<span>※ 
			신용카드 결제 가능 최소 금액은 1,000원 이상입니다.</span>
		<span>
			<span class="desc">
			<a href="#" onclick="return false;" class="btn_savePoint">삼성U포인트 적립</a>&nbsp;&nbsp;<a href="#" onclick="return false;" class="btn_savePoint">OK캐쉬백 적립</a>&nbsp;&nbsp;&nbsp;&nbsp;
			</span><br>
			<span class="option">
			(삼성U포인트, OK캐쉬백 포인트는 포인트 중복 적립 불가)
			</span>
		</span>
		<!--
		<div class="buttons">
			<a class="btn_okcashbag" href="#" onclick="return false;"><span>OK캐쉬백 번호 입력</span></a>
			<a class="btn_samsung_upoint" href="#" onclick="return false;"><span>삼성 U포인트 번호 입력</span></a>
		</div>
		-->
	</div>
	<div class="banner_wrap" style="display: none;"><a target="_blank" href=""><img src="" alt="" style="visibility: hidden;"></a></div>
</div>
<!-- 신용카드 --><!-- 휴대폰 -->
<div id="payPhone" class="payment_input" style="display: none;">
	<div class="table_wrap">
		<table>
			<caption>휴대폰 번호, 주민등록번호, 결제금액 입력 및 약관 동의</caption>
				<thead></thead>
				<tbody>
					<tr id="phone_price_row">
						<th scope="row">결제금액</th>
						<td>
							<div>
								<span class="string2 amount" style="font-size: 1.5em; font-weight:bold;"></span>
								<span class="string2">원</span>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">상품명</th>
						<td>영화티켓예매</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="payment_transfer">
			<div class="table_wrap transfer_wrap">
				<h6>휴대폰 결제 순서</h6>
				<div class="paymentNotice">
					1. 우측 하단에 있는 "결제하기" 버튼 클릭해주세요.<br>
					2. 예매내역 확인 후 결제하기 버튼 클릭 시 결제 팝업창이 뜹니다.<br>
					3. 해당 팝업에서 통신사 선택 후 정보를 입력해주세요.
					<br><br>
					<b style="color:red">※ 휴대폰 결제 진행시 원할한 사용을 위하여 다음 사항을 꼭 확인하세요.</b><br>
					 * 팝업 차단 설정을 꼭 해제하셔야 합니다. (도구→팝업 차단 끄기)<br>
					 * 팝업 차단 해제 시, 웹 브라우저 새로고침으로 인하여 최대 10분 동안 동일 좌석 선택이 제한 될 수 있습니다.<br>
				</div>
			</div>
		</div>
		
</div>
<!-- 휴대폰 --><!-- 계좌이체 -->
<div id="payTransfer" class="payment_input" style="display: none;">

	<div class="table_wrap transfer_wrap">
		<h6>계좌이체 순서</h6>
		<div>1. 아래 결제하기 버튼 클릭 후 다음 단계로 이동<br>
		2. 결제내역 확인 후 결제하기 버튼 클릭 시 팝업창이 뜸<br>
		3. 해당 팝업에서 원하는 은행을 선택 후 계좌이체 정보를 입력하시면 됩니다.</div>
	</div>
	<div class="payment_input_exp">
		<span>※ 계좌이체 취소 시 다음 사항을 꼭 확인해주세요.<br>
			1) 예매일 이후 7일 이내 취소 시 - 자동환불은행 : 취소 후 즉시 처리 가능<br>
			2) 예매일 7일 이후 취소 시 - 환불 요청일로부터 7일 이상 소요됨<br>
			※ 계좌이체 진행 도중 취소 시, 선택하신 좌석의 재선택이 일시 제한될 수 있습니다.(약10분간)
		</span>
	</div>

</div>
<!-- 계좌이체 -->
			<div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>네이버페이 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 '네이버페이' 결제 인증창이 뜹니다.<br>3. '네이버페이'결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">네이버페이 결제 시 결제 금액의 최대 2.5%가 적립됩니다.<br>(네이버페이 기본 적립 0.1 ~ 최대 1% + 네이버페이 머니 충전 결제 적립 최대 1.5%)<br>네이버페이 기본 적립은 네이버 경로 결제 시 1%, 기타 경로 결제 시 0.1%가 적립되며,<br>적립 관련 문의사항은 네이버페이 고객센터로 문의 부탁드립니다.<br>네이버페이는 즉시 할인 신용카드 및 카드사 포인트 사용이 불가하며 신용카드별 청구할인은 이용 가능합니다.<br>네이버페이는 네이버 ID로 신용카드 또는 은행 계좌 정보를 등록하여 결제할 수 있는 간편결제 서비스입니다.<br>주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수 있습니다.<br>지원 가능 결제수단: 네이버페이 결제창 내 노출되는 모든 카드/계좌</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>스마일페이 결제 순서</h6><div style="width: 490px;">1. 아래 결제하기 버튼 클릭 후 다음 단계로 이동<br>2. 결제내역 확인 후 결제하기 버튼 클릭 시, 팝업창이 뜸<br>3. 해당 '스마일페이' 팝업에서 원하는 카드를 선택 후 정보를 입력하시면 됩니다.</div></div><div class="payment_input_exp"><span class="alert"><b style="display: inline-block; width: auto; text-align: left;">'스마일페이' 결제 시, 기본 0.5% 스마일캐시가 적립되며,<br>스마일카드로 결제 시, 기본 0.5% + 추가 2.0% 적립되어 최대 2.5% 적립됩니다.<br><br>'스마일페이' 는 즉시할인 신용카드, 카드사 포인트는 이용이 불가능하며,<br>신용카드별 청구할인은 이용이 가능합니다.</b></span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>SSGPAY 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 '결제하기' 버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 'SSGPAY' 결제 인증창이 뜹니다.<br>3. 'SSGPAY' 결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">'SSGPAY' 는 결제 시 신용카드 선할인과 카드사 포인트는<br>이용이 불가능하며, 신용카드 별 청구할인은 이용이 가능합니다.</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>차이 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 “결제하기＂버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 ＂차이” 결제 인증창이 뜹니다.<br>3. 차이 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert"><b style="display: inline-block; width: 480px; text-align: left;">- '차이'는 복합결제 시 신용카드 선할인과 카드사 포인트는 이용이 불가능하며, 신용카드별 청구할인은 이용이 가능합니다.<br>- 결제취소 시 환불금액은 차이머니로 환불됩니다.<br>- 결제 부분 취소 시 취소금액에 대해 적립 된 차이머니는 회수됩니다.<br>- 할인금액에 대해서는 차이머니 적립이 불가합니다.<br>- 차이머니 적립과 쿠폰 사용 중복은 불가합니다.</b></span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>카카오페이 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 '결제하기' 버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 '카카오페이' 결제 인증창이 뜹니다.<br>3. '카카오페이' 결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">* '카카오페이' 는 신용카드 선할인과 카드사 포인트는 이용이 불가능하며,<br>신용카드별 청구할인은 이용이 가능합니다.</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>PAYCO 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 '결제하기' 버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 'PAYCO' 결제 인증창이 뜹니다.<br>3. 'PAYCO' 결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">'PAYCO' 는 씨티카드와 즉시할인 신용카드, 카드사 포인트는 이용이 불가능하며,<br>신용카드 별 청구할인은 이용이 가능합니다.<br>'PAYCO' 할인쿠폰 사용 금액에 대해서는 CJ ONE 포인트 적립이 불가합니다.</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>페이코인 결제 순서</h6><div style="width: 490px;">1. 아래 결제하기 버튼 클릭 후 다음 단계로 이동<br>2. 페이코인 QR 코드 인증 시 페이코인 결제 팝업창 발생<br>3. 페이코인 팝업에서 결제금액 확인 후 결제하기</div></div><div class="payment_input_exp"><span class="alert"></span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>내통장결제 결제 순서</h6><div>1. 아래 결제하기 버튼 클릭 후 다음 단계로 이동<br>2. 결제내역 확인 후 결제하기 버튼 클릭 시, 팝업창 노출<br>3. 해당 팝업창을 통해 본인명의의 계좌 1회 등록<br>4. 계좌등록 시, 비밀번호만으로 현금 간편결제 서비스 이용</div></div><div class="payment_input_exp"><span class="alert">'내통장결제'는 CGV 내 본인명의 계좌 등록 후 비밀번호만으로 결제할 수 있는 간편 결제 서비스입니다.<br>은행 점검시간인 경우 내통장결제 서비스 이용이 불가합니다.</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>토스 결제 순서</h6><div>1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 '토스' 결제 인증창이 뜹니다.<br>3. '토스'결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">'토스'는 신용카드 선할인과 카드사 포인트는 이용이 불가능하며,<br>신용카드별 청구할인은 이용이 가능합니다.</span></div></div></div>
		</div>
		
		<div class="payment_input_exp">
			<span><span class="desc"></span><span class="option"></span></span>
			<div class="buttons"></div>
		</div><!-- payment_input_exp -->

	</div><!-- tpm_body -->
</div><!-- tpm_wrap tpm_last_pay -->
	</div>
</div><!--//ticket_payment_method -->

<div class="ticket_payment_summary">
	<div class="tps_wrap" style="top: 0px;">
	<!--<div class="tps_header"><div><span>10분</span> 안에<br/>예매를 완료해 주세요</div></div>-->
	<div class="tps_body">
		<div class="summary_box total_box">
			<div class="payment_header">결제하실 금액</div>
			<div class="payment_footer">
				<div class="result">
					<span class="num verdana" id="summary_total_amount">33,000</span><span class="won">원</span>
				</div>
			</div>
		</div>
		<div class="summary_box discount_box" id="tps_discount_box">
			<div class="payment_header">할인내역</div>
			<div class="payment_body" id="summary_discount_list"></div>
			<div class="payment_footer">
				<div class="label">
					<span>총 할인금액</span>
				</div>
				<div class="result">
					<span class="num verdana" id="summary_discount_total">0</span><span class="won">원</span>
				</div>
			</div>
		</div>
		<div class="summary_box payment_box" id="tps_payment_box">
			<div class="payment_header">결제내역</div>
			<div class="payment_body" id="summary_payment_list"><dl><dt id="summary_payment_list_cat">신용카드</dt><dd><span class="num" id="summary_payment_total_cat"></span><span class="won">원</span></dd></dl></div>
			<div class="payment_footer">
				<div class="label">
					<span>남은 결제금액</span>
				</div>
				<div class="result">
					<span class="num verdana" id="summary_payment_total"></span><span class="won">원</span>
				</div>
			</div>
			<div class="payment_footer" id="cjEmployeeDiscPayInfo" style="display: none;">
				<div class="result">
					<span class="title" style="display: block; position: absolute;">임직원예상결제가</span>
					<span class="amount">19,800</span><span class="won" style="top: 0px;">원</span>
				</div>
				<div class="employee_discount">
					<span class="comment">※ 간편 결제와 카드사에서 제공하는 올인원 카드는 임직원 할인 적용이 불가합니다.</span>
				</div>
			</div>
		</div>
	</div>
	<div class="tps_footer no_english">
		<ul><li><a href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=30014" target="_blank" onmousedown="javascript:logClick('신용카드 프로모션 텍스트배너');"><img src="http://img.cgv.co.kr/Ria/RiaBanner/16249345262810.png" alt="10포인트부터 티켓 전액 결제가능!"><span class="desc">10포인트부터 티켓 전액 결제가능!</span></a></li><li><a href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=31426" target="_blank" onmousedown="javascript:logClick('신용카드 프로모션 텍스트배너');"><img src="http://img.cgv.co.kr/Ria/RiaBanner/16249334008850.png" alt="M포인트 사용하고 즉시 할인받자"><span class="desc">M포인트 사용하고 즉시 할인받자</span></a></li><li><a href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=30018" target="_blank" onmousedown="javascript:logClick('신용카드 프로모션 텍스트배너');"><img src="http://img.cgv.co.kr/Ria/RiaBanner/16249345262650.png" alt="현금처럼 꿀머니 사용 가능!"><span class="desc">현금처럼 꿀머니 사용가능!</span></a></li></ul>
	</div>
<div id="timerView" class="tps_footer " style="height: 50px; font-weight: bold;"></div></div>
</div>
<div class="ticket_payment_clear"></div>
</div>
				<!-- //step3 -->
				<!-- step4 -->
				<div class="step step4">
					<!-- SEAT 섹션 -->
					<div class="section section-seat">
						<div class="col-head" id="skip_seat_list">
							<h3 class="sreader">
								결제완료!
								<span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
							</h3>
							<a href="#" class="skip_to_something" onclick="skipToSomething('tnb_step_btn_right');return false;">인원/좌석선택 건너뛰기</a>
						</div>
						<div class="col-body">
							<div class="person_screen">
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-numberofpeople">
									<div class="col-body">

										<!-- 인접좌석 -->
										<!-- <div class="adjacent_seat_wrap">
											<div class="adjacent_seat" id="adjacent_seat">
												<span class="title">좌석 붙임 설정</span>
												<div class="block_wrap">
													<span class="seat_block block1"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(1, this);" disabled><span class="box"></span><span class="sreader">1석 좌석붙임</span></label></span>
													<span class="seat_block block2"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(2, this);" disabled><span class="box"></span><span class="box"></span><span class="sreader">2석 좌석붙임</span></label></span>
													<span class="seat_block block3"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(3, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">3석 좌석붙임</span></label></span>
													<span class="seat_block block4"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(4, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">4석 좌석붙임</span></label></span>
												</div>
											</div>
										</div> -->

										<div id="nopContainer" class="numberofpeople-select" style="min-width: 426px;">
											<!-- 2021.05.25 - 좌석 거리두기 -->
											<!-- 최대 선택 가능 인원 표기 -->
											<div id="maximum_people" style="padding-bottom: 5px; text-align: right; font-size: 11px !important; color: red;">* 최대 8명 선택 가능</div>
											<div class="group adult" id="nop_group_adult" style="display: block;">
												<span class="title">일반</span>
												<ul id="peopleCount"><li data-count="0" class="selected" type="adult" id="people_0"><a href="#" onclick="peopleCount(0);return false;"><span class="sreader mod">일반</span>0<span class="sreader">명</span></a></li><li data-count="1" class="" type="adult" id="people_1"><a href="#" onclick="peopleCount(1);return false;"><span class="sreader mod">일반</span>1<span class="sreader">명</span></a></li><li data-count="2" class="" type="adult" id="people_2"><a href="#" onclick="peopleCount(2);return false;"><span class="sreader mod">일반</span>2<span class="sreader">명</span></a></li><li data-count="3" class="" type="adult" id="people_3"><a href="#" onclick="peopleCount(3);return false;"><span class="sreader mod">일반</span>3<span class="sreader">명</span></a></li><li data-count="4" class="" type="adult" id="people_4"><a href="#" onclick="peopleCount(4);return false;"><span class="sreader mod">일반</span>4<span class="sreader">명</span></a></li><li data-count="5" class="" type="adult" id="people_5"><a href="#" onclick="peopleCount(5);return false;"><span class="sreader mod">일반</span>5<span class="sreader">명</span></a></li><li data-count="6" class="" type="adult" id="people_6"><a href="#" onclick="peopleCount(6);return false;"><span class="sreader mod">일반</span>6<span class="sreader">명</span></a></li><li data-count="7" class="" type="adult" id="people_7"><a href="#" onclick="peopleCount(7);return false;"><span class="sreader mod">일반</span>7<span class="sreader">명</span></a></li><li data-count="8" class="" type="adult" id="people_8"><a href="#" onclick="peopleCount(8);return false;"><span class="sreader mod">일반</span>8<span class="sreader">명</span></a></li></ul>
											</div>
											
										</div>
									</div>
								</div>
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-screen-select">
									<!-- UI 변경으로 삭제 
									<div class="title">선택하신 상영관<span>/</span>시간</div>
									-->
									<!-- UI 변경
									<div class="screen-time">
										<span class="screen"><b></b></span>
										<span class="seats seat_all"></span>
										<span class="time"></span>
										<span class="seats seat_remain"></span>
									</div>
									-->
									<div id="user-select-info">
										<p class="theater-info"><span class="site">HCY 강남</span><span class="screen">2D </span><span class="seatNum">남은좌석  <b class="restNum">133</b>/<b class="totalNum">169</b></span></p>
										<p class="playYMD-info"><b>2023.10.30</b><b class="exe">&nbsp;</b><b>12:00 ~ 14:00</b></p>
									</div>
								</div>
							</div>
							<!-- THEATER -->
							<div class="theater_minimap">
								<div class="theater nano has-scrollbar" id="seat_minimap_nano">
									<div class="content" tabindex="-1" style="right: -17px; bottom: -17px;">
										<div class="screen" title="SCREEN" style="width: 652px;"><span class="text"></span></div>
										<div class="seats" id="seats_list" style="width: 416px; height: 224px;"><div class="row" style="top:0px;left:85px"><div class="label">A</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">A열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_1" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(1);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_2" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(2);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_3" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(3);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_4" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(4);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:85px" id="seatNum_5" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(5);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:102px" id="seatNum_6" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(6);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_7" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(7);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:136px" id="seatNum_8" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(8);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_9" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(9);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:170px" id="seatNum_10" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(10);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_11" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(11);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_12" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(12);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_13" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(13);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:17px;left:85px"><div class="label">B</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">B열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_14" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(14);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:34px" id="seatNum_15" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(15);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:51px" id="seatNum_16" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(16);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_17" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(17);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:85px" id="seatNum_18" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(18);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_19" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(19);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:119px" id="seatNum_20" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(20);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_21" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(21);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_22" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(22);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:170px" id="seatNum_23" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(23);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:187px" id="seatNum_24" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(24);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_25" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(25);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_26" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(26);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:34px;left:85px"><div class="label">C</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">C열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat reserved" style="left:17px" id="seatNum_27" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(27);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:34px" id="seatNum_28" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(28);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_29" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(29);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:68px" id="seatNum_30" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(30);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:85px" id="seatNum_31" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(31);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_32" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(32);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:119px" id="seatNum_33" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(33);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_34" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(34);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:153px" id="seatNum_35" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(35);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:170px" id="seatNum_36" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(36);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:187px" id="seatNum_37" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(37);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_38" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(38);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_39" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(39);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:51px;left:85px"><div class="label">D</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">D열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat reserved" style="left:17px" id="seatNum_40" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(40);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat reserved" style="left:34px" id="seatNum_41" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(41);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_42" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(42);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_43" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(43);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_44" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(44);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_45" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(45);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_46" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(46);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_47" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(47);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_48" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(48);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_49" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(49);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_50" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(50);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_51" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(51);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_52" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(52);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:68px;left:85px"><div class="label">E</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">E열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_53" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(53);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_54" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(54);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_55" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(55);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_56" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(56);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_57" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(57);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_58" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(58);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_59" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(59);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_60" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(60);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_61" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(61);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_62" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(62);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_63" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(63);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_64" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(64);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_65" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(65);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:85px;left:85px"><div class="label">F</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">F열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_66" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(66);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_67" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(67);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_68" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(68);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_69" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(69);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_70" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(70);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_71" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(71);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_72" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(72);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_73" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(73);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_74" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(74);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_75" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(75);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_76" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(76);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_77" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(77);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_78" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(78);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:102px;left:85px"><div class="label">G</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">G열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_79" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(79);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_80" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(80);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_81" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(81);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_82" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(82);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_83" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(83);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_84" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(84);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_85" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(85);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_86" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(86);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_87" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(87);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_88" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(88);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_89" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(89);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_90" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(90);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_91" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(91);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:119px;left:85px"><div class="label">H</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">H열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_92" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(92);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_93" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(93);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_94" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(94);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_95" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(95);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_96" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(96);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_97" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(97);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_98" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(98);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_99" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(99);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_100" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(100);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_101" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(101);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_102" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(102);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_103" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(103);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_104" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(104);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:136px;left:85px"><div class="label">I</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">I열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_105" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(105);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_106" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(106);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_107" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(107);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_108" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(108);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_109" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(109);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_110" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(110);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_111" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(111);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_112" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(112);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_113" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(113);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_114" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(114);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_115" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(115);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_116" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(116);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_117" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(117);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:153px;left:85px"><div class="label">J</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">J열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_118" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(118);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_119" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(119);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_120" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(120);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_121" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(121);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_122" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(122);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_123" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(123);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_124" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(124);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_125" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(125);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_126" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(126);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_127" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(127);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_128" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(128);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_129" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(129);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_130" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(130);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:170px;left:85px"><div class="label">K</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">K열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_131" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(131);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_132" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(132);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_133" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(133);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_134" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(134);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_135" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(135);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_136" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(136);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_137" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(137);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_138" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(138);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_139" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(139);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_140" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(140);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_141" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(141);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_142" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(142);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_143" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(143);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:187px;left:85px"><div class="label">L</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">L열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_144" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(144);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_145" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(145);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_146" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(146);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_147" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(147);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_148" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(148);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_149" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(149);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_150" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(150);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_151" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(151);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_152" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(152);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_153" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(153);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_154" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(154);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_155" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(155);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_156" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(156);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div><div class="row" style="top:204px;left:85px"><div class="label">M</div><a href="#" onclick="skipToNextRow(event);return false;" class="skip_row">M열 건너뛰기</a><div class="seat_group"><div class="group"><div class="seat" style="left:17px" id="seatNum_157" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(157);return false;"><span class="no">1</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:34px" id="seatNum_158" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(158);return false;"><span class="no">2</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:51px" id="seatNum_159" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(159);return false;"><span class="no">3</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:68px" id="seatNum_160" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(160);return false;"><span class="no">4</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:85px" id="seatNum_161" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(161);return false;"><span class="no">5</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:102px" id="seatNum_162" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(162);return false;"><span class="no">6</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:119px" id="seatNum_163" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(163);return false;"><span class="no">7</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:136px" id="seatNum_164" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(164);return false;"><span class="no">8</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:153px" id="seatNum_165" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(165);return false;"><span class="no">9</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:170px" id="seatNum_166" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(166);return false;"><span class="no">10</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:187px" id="seatNum_167" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(167);return false;"><span class="no">11</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:204px" id="seatNum_168" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(168);return false;"><span class="no">12</span><span class="sreader"> </span><span class="sreader mod"></span></a></div><div class="seat" style="left:221px" id="seatNum_169" data-left="32" data-left_zoom="48"><a href="#" onclick="seatClick(169);return false;"><span class="no">13</span><span class="sreader"> </span><span class="sreader mod"></span></a></div></div></div></div></div>
									</div>
								<div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
								<div class="minimap opened" id="minimap" style="display: none;">
									<div class="mini_header" onclick="ftSeatMinimapToggle();event.preventDefault();">Minimap<span></span></div>
									<div class="mini_container" style="width: 130px; height: 96px;">
										<div class="mini_screen">SCREEN</div>
										<div class="mini_exits"><div class="mini_exit tr"></div></div>
									</div>
									<div class="mini_region" style="height: 96px; width: 130px; top: 25px; left: 5px;"><span></span></div>
								</div>
								<div class="legend" style="width: 125px;">
									<div class="buttons">
										<a class="btn-zoom" id="seat_zoom_btn" href="#" onclick="ts2SeatZoomClickListener();return false;">크게보기</a>
									</div>
									<div class="seat-icon-desc">
										<span class="icon selected"><span class="icon"></span>선택</span>
										<span class="icon reserved"><span class="icon"></span>예매완료</span>
										<span class="icon notavail"><span class="icon"></span>선택불가</span>
										<!-- 2021.05.25 - 좌석 거리두기 -->
										<!-- 거리두기 좌석 범례 표기 -->
										<span class="icon distanced" style="display: none;"><span class="icon"></span>거리두기 좌석</span>
									</div>
									<div class="seat-type"><span class="radiobutton type-rating_economy" style="display: none;">Light석<span class="icon"></span></span><span class="radiobutton type-rating_comfort" style="display: none;">Standard석<span class="icon"></span></span><span class="radiobutton type-rating_prime" style="display: none;">Prime석<span class="icon"></span></span><span class="radiobutton type-handicap" style="">장애인석<span class="icon"></span></span><span class="radiobutton type-sweet" style="">SWEETBOX<span class="icon"></span></span><span class="radiobutton type-4d" style="display: none;">4DX<span class="icon"></span></span><span class="radiobutton type-gold" style="display: none;">골드<span class="icon"></span></span><span class="radiobutton type-vibration" style="display: none;">진동석<span class="icon"></span></span><span class="radiobutton type-cdc" style="display: none;">모션베드<span class="icon"></span></span><span class="radiobutton type-cinekids" style="display: none;">키즈석<span class="icon"></span></span><span class="radiobutton type-premium" style="display: none;">프리미엄<span class="icon"></span></span><span class="radiobutton type-widebox" style="display: none;">WIDEBOX<span class="icon"></span></span><span class="radiobutton type-couple" style="display: none;">커플석<span class="icon"></span></span><span class="radiobutton type-eggbox" style="display: none;">EGGBOX<span class="icon"></span></span><span class="radiobutton type-recliner" style="display: none;">리클라이너<span class="icon"></span></span><span class="radiobutton type-cabana" style="display: none;">카바나<span class="icon"></span></span><span class="radiobutton type-beanbag" style="display: none;">빈백석<span class="icon"></span></span><span class="radiobutton type-mat" style="display: none;">매트석<span class="icon"></span></span><span class="radiobutton type-relax" style="display: none;">릴렉스시트<span class="icon"></span></span><span class="radiobutton type-comport" style="display: none;">컴포트석<span class="icon"></span></span><span class="radiobutton type-mybox" style="display: none;">MYBOX<span class="icon"></span></span><span class="radiobutton type-cdcCoupleSofa" style="display: none;">커플 리클라이너<span class="icon"></span></span><span class="radiobutton type-cdcRecliner" style="display: none;">리클라이너<span class="icon"></span></span><span class="radiobutton type-cdcSofa" style="display: none;">소파<span class="icon"></span></span><span class="radiobutton type-coupleSofa" style="display: none;">커플소파<span class="icon"></span></span><span class="radiobutton type-suite_A" style="display: none;">Suite 4인<span class="icon"></span></span><span class="radiobutton type-suite_B" style="display: none;">Suite 2인<span class="icon"></span></span><span class="radiobutton type-familyRecliner" style="display: none;">패밀리 리클라이너<span class="icon"></span></span><span class="radiobutton type-private1" style="display: none;">PRIVATE 2인<span class="icon"></span></span><span class="radiobutton type-private2" style="display: none;">PRIVATE_A<span class="icon"></span></span><span class="radiobutton type-private3" style="display: none;">PRIVATE 4인<span class="icon"></span></span></div>
								</div>
								<div class="mouse_block"></div>
							</div>
						</div>
					</div>
					<a class="btn-refresh" href="#">
						<span>다시하기</span>
					</a>
					<!-- 시간표 변경 -->
					<div class="section_time_popup" id="section_time_popup">
						<div class="canvas">
							<div class="sprite">
								<div class="time-option">
									<span class="morning">모닝</span><span class="night">심야</span>
								</div>
								<div class="time-list nano" id="time_popup_list">
									<div class="content scroll-y"></div>
								</div>
							</div>
							<div class="buttons">
								<a href="#" onclick="return false;" class="btn_ok"><span>확인</span></a>
								<a href="#" onclick="return false;" class="btn_cancel"><span>취소</span></a>
								<a href="#" onclick="return false;" class="sreader" onfocus="ticketStep2TimeSelectPopupHide();">시간표 변경 팝업 닫기</a>
							</div>
						</div>
						<div class="corner"></div>
					</div>
					<!-- 시간표 변경 -->
				</div>
				<!-- //step4 -->
				<noscript>
					<div class="noscript"><span>현재 사용중인 환경에서는 스크립트 동작이 활성화되지 않아 예매 서비스를 이용하실 수 없습니다.<br/>예매 서비스를 이용하기 위해서는 <a href='http://www.enable-javascript.com/ko/' rel='nofollow'>스크립트 동작을 활성화</a> 해주세요.</span></div>
				</noscript>
			</div>
			<!-- 팝업 -->
			<div class="popups">                
				<!-- Popup - 로그인 --> 
<div class="ft_layer_popup popup_login" style="display:none;">
    <!--<div class="hd">
        <div class="title_area">
            
            <h4>CGV회원 로그인</h4>
			
			<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false;" class="layer_close">닫기</a>
    </div>
    <div class="bd">
        <div class="login_form">
            <div class="input_wrap id">
                <label for="txtUserId" class="blind">아이디</label>
                <input name="txtUserId" id="txtUserId" maxlength="25" type="text">
            </div>
            <div class="input_wrap password">
                <label for="txtPassword" class="blind">비밀번호</label>
                <input name="txtPassword" id="txtPassword" maxlength="25" type="password">
            </div>
            <button type="button" title="로그인" class="btn_login"><span>로그인</span></button>       
        </div>
        <div class="linkbar">
        	
            <a href="#" onclick="return false;" class="join_member">회원가입</a>
            <a href="#" onclick="return false;" class="join_guest">비회원 예매</a>
            <a href="#" onclick="return false;" class="id_find">아이디찾기</a>
            <a href="#" onclick="return false;" class="pw_find">비밀번호찾기</a>    
			
        </div>
    </div>-->
</div>
<!-- //Popup -->

<!-- Popup - 얼럿 --> 
<div class="ft_layer_popup popup_alert original" style="">
    <div class="hd">
        <div class="title_area">
            <h4 class="alert_title">얼럿타이틀</h4>
			<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false;" class="layer_close">닫기</a>
    </div><!-- //hd -->
    <div class="bd">
        <p class="alert_msg" style="width: 475px;">얼럿메세지</p>
    </div><!-- //bd -->
    <div class="ft">
        <a title="확인" href="#" onclick="return false;" class="btn btn_ok"><span>확인</span></a>
        <a title="취소" href="#" onclick="return false;" class="btn btn_white btn_close"><span>취소</span></a>
    </div><!-- //ft -->     
</div>
<!-- //Popup -->

<!-- 2021.06.22 - 홈페이지 관람 안내 문구 팝업 창 -->
<div class="ft_layer_popup popup_alert w450 base" style="top: 50%; position: absolute;">
    <div class="hd">
        <div class="title_area">
            <h4 class="alert_title">얼럿타이틀</h4>
			<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false;" class="layer_close">닫기</a>
    </div>
    <div class="bd">
        <p class="alert_msg">얼럿메세지</p>
    </div>
    <div class="ft">
        <a title="확인" href="#" onclick="return false;" class="btn btn_ok">
            <span>확인</span>
        </a>
        <a title="취소" href="#" onclick="return false;" class="btn btn_white btn_close">
            <span>취소</span>
        </a>
    </div>
</div>

<!-- 2022.12.27 - 영화등급 이미지 및 문구 수정 -->
<div class="ft_layer_popup popup_alert popup_previewGradeInfo base" style="top: 255px; position: absolute;">
    <div class="hd">
        <div class="title_area">
            <h4 class="alert_title">관람등급 안내</h4>
            <span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false" class="layer_close">닫기</a>
    </div>
    <div class="bd">
        <div class="previewGradeInfo_contents">관람등급 안내문구</div>
    </div>
    <div class="ft">
        <a title="확인" href="#" onclick="return false" class="btn btn_ok btn_red">
            <span>동의하고 예매하기</span>
        </a>
    </div>
</div>

<!-- Popup - guide --> 
<div class="ft_layer_popup popup_guide" style="display:none;">
    <div class="guide_hd">
        <h4><span class="blind">CGV 예매가이드</span></h4>
        <p><span class="blind">새롭게 바뀐 CGV 예매 서비스를 직접 확인해보세요!</span></p>
    </div><!-- //hd -->
    <div class="guide_bd">
        <div class="tab_menu clfix">
            <ul>
                <li class="a first"><a href="#none" onclick="return false;" class="on" title="STEP 1 영화, 극장, 날짜, 시간 선택"><span><var><span class="blind_txt tab1">STEP 1 영화, 극장, 날짜, 시간 선택</span></var></span></a></li>
                <li class="b"><a href="#none" onclick="return false;" title="STEP 2 인원, 좌석선택"><span><var><span class="blind_txt tab2">STEP 2 인원, 좌석선택</span></var></span></a></li>
                <li class="c"><a href="#none" onclick="return false;" title="STEP 3 결제하기"><span><var><span class="blind_txt tab3">STEP 3 결제하기</span></var></span></a></li>
            </ul>
        </div>
        <div class="content">
            <div class="guide_step01">
                <p class="notice"><span class="blind">원하시는 영화, 극장, 날짜, 시간 정보를 선택해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">전체 화면구성이 세로형으로 변경되어 더 빠르고 쉽게 정보 선택이 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-영화분류안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">무비꼴라쥬, 특별관 영화를 빠르고 편리하게 분류하여 확인할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <!--
                        <li class="btn03">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-선택할 수 없는 영화안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">선택 불가능한 정보는 장애인 차별금지법에 따라 패턴 디자인을 적용하여 모든 사용자가 쉽게 구분할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        -->
                        <li class="btn04">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-자주가는 CGV안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">자주 가는 극장 설정 기능을 통해 보다 빠른 극장 선택이 가능해졌어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn05">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-영문 빠른예매</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">영문 버전 빠른예매를 통해 다국적 사용자들도 쉽게 예매 서비스를 이용할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn06">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-조조/심야구분안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">조조/심야 영화 시간에 대해 쉽게 확인할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn07">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">선택한 예매 정보 및 나의 예매 진행 단계를 한 눈에 파악할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step01-->
            <div class="guide_step02">
                <p class="notice"><span class="blind">예매 인원수에 맞게 원하시는 자리 를 선택해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-상영관/시간 확인 및 변경안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">선택한 상영관/시간 확인 및 변경 기능이 보다 쉽고 눈에 띄게 변경되었어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-다양한 좌석도 보기안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">좌석도 크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step02-->
            <div class="guide_step03">
                <p class="notice"><span class="blind">원하시는 할인 및 결제수단을 이용하여 예매를 완료해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-할인 및 결제수단안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">전체 화면구성이 할인수단과 결제수단 영역으로 나뉘어 한 눈에 보기 편리해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-CGV영화관람권,할인쿠폰, CJ ONE포인트 안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">주요 할인수단인 CGV영화관람권, CGV할인쿠폰, CJ ONE 포인트의 바로 조회 기능을 통해 보다 빠른 예매가 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn03">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-할인수단별 선택안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">다양한 CGV의 할인수단을 보기 쉽게 그룹화하여 원하는 할인수단만 선택해 이용하실 수 있어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn04">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-결제정보안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">내가 적용한 할인 및 결제수단 내역을 한 눈에 쉽게 확인 가능해요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn05">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-최신할인정보안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">다양한 CGV결제수단의 최신 할인 정보를 쉽게 모아 볼 수 있어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step03-->
        </div>
    </div><!-- //bd -->  
    <div class="ft">
        <a title="닫기" href="#" onclick="return false;" class="btn btn_white btn_close"><span>닫기</span></a>
        <a title="닫기" href="#" onclick="return false;" class="layer_close">닫기</a>
    </div><!-- //ft -->  
</div>
<!-- //Popup -->

			</div>
			<!-- //팝업 -->
		</div>
		<!-- //빠른예매 -->
	</div>
	<!-- //컨텐츠 -->

	<div class="popup_wrap">
		<div class="cgv_popup pop_incomeDeduction dimmed">
			<div class="popup_header">
				<h1>영화관람료 소득공제 안내</h1>
				<a href="#none" class="btn_popupClose">확인</a>
			</div>
			<div class="popup_container">
				<div class="income-deduction-content" style="display: block;">
					<p>본 콘텐츠는 영화관람료 <span></span> 대상 상품입니다.</p>
					<p>문화비 소득공제는 자동 적용되며, 결제 완료 후 변경이 불가합니다.</p>
					<ol>
						<li>
							<strong>1. 영화관람료 소득공제란?</strong>
							<p>2023년 7월 1일 결제분부터 영화관람료에 대해 문화비 소득공제가 적용됩니다.</p>
							<ul>
								<li>총 급여 7천만 원 이하, 신용카드 등 사용액이 총 급여액의 25%가 넘는 근로소득자를 대상으로 적용됩니다.</li>
								<li>공제율은 30%, 공제 한도는 전통시장 사용분, 대중교통 사용분, 문화비 사용분에 대한 소득공제를 합해 총 300만원 입니다.</li>
							</ul>
						</li>
						<li>
							<strong>2. 영화관람료 소득공제 대상 상품</strong>
							<ul>
								<li>영화 및 공연상품 (단, 영화와 매점(패스트오더) 상품 통합결제 시 대상 제외 / 스포츠 중계, 게임 중계, 강연 등 일부 콘텐츠 제외)</li>
							</ul>
						</li>
						<li>
							<strong>3. 영화관람료 소득공제 제외 대상 상품</strong>
							<ul>
								<li>매점(패스트오더), 씨네샵, 포토티켓 등 영화와 무관한 상품 제외</li>
								<li>비상설상영관 등 일부 상영관 제외</li>
							</ul>
						</li>
						<li>
							<strong>4. 영화관람료 소득공제 가능 결제수단</strong>
							<ul>
								<li>카드결제: 신용카드(법인카드 불가, 개인카드에 한함)</li>
								<li>현금결제: 관람권, 포인트 등 현금영수증 처리가 가능한 결제수단</li>
								<li>간편결제: 네이버페이, 카카오페이, Payco, 토스페이</li>
								<li>휴대폰결제</li>
							</ul>
						</li>
						<li>
							<strong>5. 영화관람료 소득공제 제외 결제수단</strong>
							<ul>
								<li>현금영수증 처리가 불가한 제휴 결제수단</li>
								<li>그 외 OK캐쉬백, 그 외 Point 등 일부 결제수단</li>
							</ul>
						</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	
	
	<div id="ticket_tnb" class="tnb_container ">
		<div class="tnb step1">
			<!-- btn-left -->
			<a class="btn-left" href="#" onclick="OnTnbLeftClick(); return false;" title="">이전단계로 이동</a>
			<div class="info movie">
				<span class="movie_poster"></span>
				<div class="row movie_title colspan2">
					<span class="data letter-spacing-min ellipsis-line2"></span>
				</div>
				<div class="row movie_type">
					<span class="data ellipsis-line1" id="movie_type"></span>
				</div>
				<div class="row movie_rating">
					<span class="data" id="raing"></span>
				</div>
				<div class="placeholder" title="영화선택"></div>
			</div>
			<div class="info theater">
			<div  style="display: none" id="infoTheater">
				<div class="row name">
				</div>
				<div class="row date">
					<span class="header">일시</span>
					<span class="data"></span>
				</div>
				<div class="row screen">
					<span class="header">상영관</span>
					<span class="data"></span>
				</div>
				<div class="row number">
					<span class="header">인원</span>
					<span class="data"></span>
				</div>
				</div>
				<div class="placeholder" title="극장선택"></div>
			</div>
			<div class="info seat">
				<div class="row seat_name">
					<span class="header">좌석명</span>
					<span class="data">일반석</span>
				</div>
				<div class="row seat_no colspan3">
					<span class="header">좌석번호</span>
					<span class="data ellipsis-line3"></span>
				</div>
				<div class="placeholder" title="좌석선택"></div>
			</div>
			<div class="info payment-ticket">
				<div class="row payment-final">
					<span class="header">총금액</span>
					<span class="data"><span class="price">0</span><span class="won">원</span></span>
				</div>
			</div>
			<div class="info path">
				<div class="row colspan4">
					<span class="path-step2" title="좌석선택">&nbsp;</span>
					<span class="path-step3" title="결제">&nbsp;</span>
				</div>
			</div>
			<!-- btn-right -->
			<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
			<em class="tooltip_notice">
				<a href="#none" data-popup="pop_incomeDeduction">
					<strong>영화관람료 소득공제</strong>
					<i class="cgvIcon system notice">notice</i><br>
					<span></span> 대상 상품입니다.
				</a>
			</em>
			<a class="btn-right" id="tnb_step_btn_right" href="#" onclick="TnbRightClick(); return false;"  title="">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
		</div>
	</div>

	<!-- bottom banner -->
	<div class="banner" id="ticket_bottom_banner">
		<a target="_blank" title="새창"><span style="sreader">배너광고 영역</span></a>
	</div>
	
	<!-- wing banner -->
	<div id="ticket_banner" class="ticket_banner">
		<div><div>
			<a class="left_link" target="_blank" alt="" title="새창"><span class="sreader">배너광고 영역</span></a>
			<a class="right_link" target="_blank" alt="" title="새창"><span class="sreader">배너광고 영역</span></a>
		</div></div>
	</div>
	
</div>



<div class="blackscreen" style="display:none;" id="blackscreen"></div>
<!-- loading -->
<div class="loading" id="ticket_loading">
	<div class="dimm"></div>
	<p class="loadWrap"><img src="http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/ajax-loader-w.gif" alt="로딩 애니메이션"></p>
</div>
<!-- iframe -->
<iframe id="proxy_iframe" src="http://www.cgv.co.kr/Ticket/Proxy.html" scrolling="no" frameborder="0" width="0" height="0" style="display:none;" title="데이터 연동 숨김 프레임"></iframe>
<iframe src="/CGV2011/RIA/RR999.aspx" name="rsvDataframe" id="rsvDataframe" scrolling="no" frameborder="0" width="0" height="0" style="display:none;" title="데이터 연동 프레임"></iframe>
<!-- javascript 상위프레임에 있는 스크립트를 사용-->
<!--<script type="text/javascript" src="http://img.cgv.co.kr/common/js/insightIS.js"></script>-->

</body></html>
<%@page import="kr.co.sist.util.cipher.DataDecrypt"%>
<%@page import="encryption.Encryption"%>
<%@page import="board.ManageBoardDAO"%>
<%@page import="manageMember.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="manageMember.ManageMemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page info=""%>

<html lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=1200, user-scalable=no">
    <meta http-equiv="imagetoolbar" content="no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>회원관리 1 페이지</title>
    <link rel="icon" href="http://192.168.10.140/jsp_prj/common/main/favicon.png">
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- jQuery CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.ncyok.or.kr:443/theme/basic/css/default.css?ver=1697535328">
    <link rel="stylesheet" href="https://www.ncyok.or.kr:443/skin/board/basic/style.css">

    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta content="" name="description">
    <meta content="" name="author">

    <link href="../CSS/css" rel="stylesheet" id="fontFamilySrc">
    <link href="../CSS/jquery-ui.min.css" rel="stylesheet">
    <link href="../CSS/bootstrap.min.css" rel="stylesheet">
    <link href="../CSS/all.css" rel="stylesheet">
    <link href="../CSS/animate.min.css" rel="stylesheet">
    <link href="../CSS/style.min.css" rel="stylesheet">


    <link href="../CSS/bootstrap_calendar.css" rel="stylesheet">
    <link href="../CSS/jquery.gritter.css" rel="stylesheet">
    <link href="../CSS/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../CSS/responsive.bootstrap.min.css" rel="stylesheet">

    <script src="https://www.ncyok.or.kr:443/js/jquery-1.8.3.min.js"></script>
    <script src="https://www.ncyok.or.kr:443/js/jquery.menu.js"></script>
    <script src="https://www.ncyok.or.kr:443/js/common.js"></script>
    <script src="https://www.ncyok.or.kr:443/js/wrest2.js"></script>
    <script src="https://www.ncyok.or.kr:443/js/printThis.js"></script>
    <meta name="naver-site-verification" content="8e74a1f533fc95526c71b92c12475d0129bcdd32">
    <meta name="robots" content="index,follow">
    <meta name="author" content="www.ncyok.or.kr">
    <meta name="description" content="연구 및 연수활동, 정보지원활동, 국제교류활동, 대회협력활동, 청협사이버평생교육원">
    <meta name="title" content="한국청소년단체협의회">
    <meta name="og:title" content="한국청소년단체협의회">
    <meta name="og:description" content="연구 및 연수활동, 정보지원활동, 국제교류활동, 대회협력활동, 청협사이버평생교육원">
    <meta property="og:image" content="/img/meta.jpg">
    <link rel="canonical" href="https://ncyok.or.kr/index.php">


    <script src="pace.min.js" type="text/javascript"></script>

    <!--[if lt IE 9]>
	    <script src="../assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
    <style type="text/css">
        /* Chart.js */
        @ -webkit-keyframes chartjs-render-animation {
            from {
                opacity: 0.99
            }

            to {
                opacity: 1
            }

        }

        @ keyframes chartjs-render-animation {
            from {
                opacity: 0.99
            }

            to {
                opacity: 1
            }

        }

        .chartjs-render-monitor {
            -webkit-animation: chartjs-render-animation 0.001s;
            animation: chartjs-render-animation 0.001s;
        }
    </style>
    <style type="text/css">
        .jqstooltip {
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: rgb(0, 0, 0) transparent;
            background-color: rgba(0, 0, 0, 0.6);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
                    endColorstr=#99000000);
            -ms-filter:
                "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
            color: white;
            font: 10px arial, san serif;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            border: 1px solid white;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }
    </style>
</head>

<body class="  pace-done" cz-shortcut-listen="true">


    <div class="pace  pace-inactive">
        <div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
            <div class="pace-progress-inner"></div>
        </div>
        <div class="pace-activity"></div>
    </div>

    <div id="page-loader" class="page-loader fade in hide">
        <span class="spinner">Loading...</span>
    </div>


    <div id="page-container" class="fade page-container page-header-fixed page-sidebar-fixed page-with-two-sidebar page-with-footer show">

        <div id="header" class="header navbar navbar-default navbar-fixed-top">

            <div class="container-fluid">

                <div class="navbar-header">
                    <a href="../ManageDashBoard/manage_dashboard.jsp" class="navbar-brand" style="line-height: 0px"><img src="../../common/images/admin_logo.png"></a>
                    <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
                        <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                </div>
            </div>

        </div>


        <div id="sidebar" class="sidebar">

            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
                <div data-scrollbar="true" data-height="100%" data-init="true" style="overflow: hidden; width: auto; height: 100%;">

                    <ul class="nav">
                        <li class="nav-user">
                            <div class="image">
                                <img src="../../common/images/admin.png" alt="">
                            </div>
                            <div class="info">
                                <div class="name dropdown">
                                    <a href="javascript:;" data-toggle="dropdown">admin <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:;">Log Out</a></li>
                                    </ul>
                                </div>
                                <div class="position">Front End Designer</div>
                            </div>
                        </li>
                        <li class="nav-header">today work</li>
                        <li class="active has-sub"><a href="../ManageDashBoard/manage_dashboard.jsp"> <img class="fa fa-home" src="../../common/images/dashboard2.png">
                                <span>회원관리
                                    <!-- <span class="label label-theme m-l-3">NEW</span> --></span>
                            </a>
                            <!-- <ul class="sub-menu">
<li><a href="index.html">Dashboard v1</a></li>
<li><a href="index_v2.html">Dashboard v2</a></li>
<li class="active"><a href="index_v3.html">Dashboard v3</a></li>
<li><a href="index_v4.html">Dashboard v4 <i class="fa fa-paper-plane text-theme m-l-3"></i></a></li>
</ul> -->
                        </li>
                        <!-- <li>
<a href="bootstrap_4.html">
<div class="icon-img"><img src="../assets/img/bootstrap-4.png" alt=""></div>
<span>Bootstrap 4</span>
</a>
</li> -->
                        <li class="has-sub"><a href="../ManageMovie/manage_movie.jsp">
                                <img class="fa fa-inbox" src="../../common/images/movie_icon.png"> <span>영화</span>
                            </a>
                            <ul class="sub-menu">
                                <li><a href="email_inbox.html">Inbox</a></li>
                                <li><a href="email_compose.html">Compose</a></li>
                                <li><a href="email_detail.html">Detail</a></li>
                            </ul>
                        </li>
                        <li><a href="widgets.html"> <img class="fa fa-gem" src="../../common/images/cinema_icon.png"> <span>상영관</span>
                            </a></li>
                        <li class="has-sub"><a href="managemember/manage_member_list.jsp"> <img class="fa fa-suitcase" src="../../common/images/member_icon.png">
                                <span>회원관리</span>
                            </a></li>
                        <li class="has-sub"><a href="javascript:;"> <img class="fa fa-file" src="../../common/images/board_icon.png">
                                <span>게시판 관리</span>
                            </a></li>
                    </ul>
                </div>
                <div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 197.948px;"></div>
                <div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
            </div>

        </div>
        <div class="sidebar-bg"></div>


        <div id="content" class="content">

            <ol class="breadcrumb pull-right">
                <li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
                <li class="breadcrumb-item"><a href="javascript:;">회원관리</a></li>
            </ol>


            <h1 class="page-header">
                Manage Member <small>Manage Member</small>
            </h1>


            <div class="row">
                <div id="container">


                    <!--div class="conTit_tt">
                                                        <span>
                        공지사항
                    </span>
                            </div-->


                    <div class="scontA">
                        <!--  서브상단 이미지 및 로케이션 단  시작 -->
                        <div id="sVisualA" class="svbgc0 svbg_1050">

                            <div class="svisTxt">
                                <span></span>
                                <p></p>
                            </div>

                            <div id="container_title">

                                <div class="conTit_tt">
                                    <span>회원관리</span> <span style="padding-left: 30px; font-size: .9em; font-weight: normal;">

                                    </span>

                                </div>
                                <div class="right_wrap"></div>
                            </div>

                        </div>
                        <!--  서브상단 이미지 및 로케이션 단 끝 -->
                        <!-- me_code : 105010-->
                        <h2 id="container_title">
                            회원관리<span class="sound_only"> 목록</span>
                        </h2>

                        <!-- 게시판 목록 시작 { -->
                        <div id="bo_list" style="width: 100%">



                            <!-- 게시판 페이지 정보 및 버튼 시작 { -->
                            <div class="bo_fx" style="width:50%; margin-left:500px ">
                                <!-- 게시판 카테고리 시작 { -->
                                <!-- } 게시판 카테고리 끝 -->



                                <!-- 게시판 검색 시작 { -->
                                <fieldset id="bo_sch">
                                    <legend>게시물 검색</legend>
                                    <form name="fsearch" method="get">
                                        <input type="hidden" name="bo_table" value="5010"> 
                                        <input type="hidden" name="sca" value=""> 
                                        <input type="hidden" name="sop" value="and">
                                        <label for="sfl" class="sound_only">검색대상</label>
                                        <select name="sfl" id="sfl">
                                            <!--option value="wr_subject">제목</option>
            <option value="wr_content">내용</option-->
                                            <option value="wr_subject||wr_content">아이디</option>

                                            <!--option value="mb_id,0">회원아이디(코)</option>
            <option value="wr_name,1">글쓴이</option>
            <option value="wr_name,0">글쓴이(코)</option-->
                                        </select> 
                                        <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong>
                                        </label> <input type="text" name="stx" value="<%= (request.getParameter("stx") != null) ? request.getParameter("stx") : "" %>" required="" id="stx" class="frm_input required" size="15" maxlength="20" "=" placeholder=" 아이디를 입력해주세요">
                                        <input type="submit" value="검색" class="btn_search">
                                    </form>
                                </fieldset>
                                
                                <!-- } 게시판 검색 끝 -->
                                <!--div id="bo_list_total">
        <span>Total 2,584건</span>
        1 페이지
    </div-->
                            </div>
                            <!-- } 게시판 페이지 정보 및 버튼 끝 -->



                                <div class="tbl_head01 tbl_wrap">



                                    <table>
                                        <thead>
                                            <caption>회원관리 목록</caption>
                                            <tr bgcolor="#E4ECEF" style="text-align:center">
                                                <th scope="col" style="width: 250px">회원번호</th>
                                                <th scope="col" style="width: 250px">이름</th>
                                                <th scope="col" style="width: 250px">아이디</th>
                                                <th scope="col" style="width: 250px">가입일</th>
                                            </tr>
                                        </thead>
                                        <tbody style="text-align: center">
                                          <% int pageScale = 10; // 한 페이지에 표시할 레코드 수 
                                             int currentPage = 1; // 기본값은 첫 번째 페이지 

                                             List<MemberVO> list=ManageMemberDAO.getInstance().selectMemberList(); %>

                                            <%-- 전체 레코드 수 및 전체 페이지 수 계산 --%>
                                          <% int totalRecords = list.size(); 
                                             int totalPages = (int) Math.ceil((double) totalRecords / pageScale); 
                                             String tempPage = request.getParameter("currentPage"); 
                                             if (tempPage != null && !tempPage.isEmpty()) { 
                                             currentPage = Integer.parseInt(tempPage); 
                                            } %>

                                            <%-- 현재 페이지에 표시할 레코드의 시작 및 끝 번호 계산 --%>
                                          <% int startNum = (currentPage - 1) * pageScale; 
                                             int endNum = Math.min(startNum + pageScale, totalRecords); 


                                             Encryption ec = Encryption.getInstance(); 
                                             String name = ""; 
                                             MemberVO mVO = null; 
                                             for (int i = startNum; i < endNum; i++) { 
                                             mVO = list.get(i); 
                                             name = ec.decryption(mVO.getMname()); %>
                                            <tr>
                                                <td><%= i + 1 %></td>
                                                <td><a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_info.jsp?memberId=<%= mVO.getId() %>"><%= name %></a></td>
                                                <td><%= mVO.getId() %></td>
                                                <td><%= mVO.getJoindate() %></td>
                                            </tr>
                                            <% } %>

                                            <tr>

                                        </tbody>
                                    </table>




                                </div>

                        </div>
                        <!--페이지네이션  -->
                        <nav aria-label="Page navigation example" style="text-align:center">
                            <ul class="pagination">

								<% 
								String current = request.getParameter("currentPage");
								if(current!=null){
								int pre = Integer.parseInt(current)-1;
								pageContext.setAttribute("pre", pre);
								if(pre!=0){
								%>
                                <li class="page-item"> <a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp?currentPage=${pre }&dataFlag=1">Previous</a></li>
								<% }}//if%>
								
                                <% for(int i=1;i<totalPages+1;i++){%>
                                <li class="page-item"> <a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp?currentPage=<%=i %>&dataFlag=1"><%=i %></a></li>
                                <% }//for
                                
								int next =0;
						        if (current == null) {/* current가 null이면 1페이지니까 next2로 해줌 */
						        	next = 2;
						        }else{
						        	next =  Integer.parseInt(current)+1;
						        }//else
						        if (!(next > totalPages)) {
								pageContext.setAttribute("next", next);
						        %>
						        <li class="page-item"> <a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp?currentPage=${next }&dataFlag=1">Next</a></li>
						        <%
						            }//if
						        %>

                            </ul>
                        </nav>



                        <!-- } 게시판 목록 끝 -->
                    </div>

                </div>

            </div>
        </div>



    </div>






</body>

</html>
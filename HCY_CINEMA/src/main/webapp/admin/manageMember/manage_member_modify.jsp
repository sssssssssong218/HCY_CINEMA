<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="encryption.Encryption"%>
<%@page import="java.util.List"%>
<%@page import="manageMember.ManageMemberDAO"%>
<%@page import="manageMember.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="회원정보 수정"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <jsp:useBean id="mmDAO" class="manageMember.ManageMemberDAO"/>
<%
	String mname=request.getParameter("mname");
	MemberVO mVO=mmDAO.selectMember(mname);
	pageContext.setAttribute("mVO", mVO);
%> --%>

<!doctype html>
<html lang="en">
<!--<![endif]-->

<head>
    <meta name="viewport" content="width=1200, user-scalable=no">
    <meta http-equiv="imagetoolbar" content="no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://www.ncyok.or.kr:443/theme/basic/css/default.css?ver=1697703969">
    <link rel="stylesheet" href="https://www.ncyok.or.kr:443/skin/board/form_member/style.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=1200, user-scalable=no">
    <meta http-equiv="imagetoolbar" content="no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>회원정보 수정</title>
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

</head>

<body cz-shortcut-listen="true">
    <div id="_overLayer_"></div>

    <link rel="stylesheet" href="https://www.ncyok.or.kr:443/theme/basic/css/sub.css">
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
                        <a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp" class="navbar-brand" style="line-height: 0px"><img src="../../common/images/admin_logo.png"></a>
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
                            <li class=" has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageDashBoard/manage_dashboard.jsp"> <img class="fa fa-home" src="../../common/images/dashboard2.png">
                                    <span>Dashboard
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
                            <li><a href="http://localhost/HCY_CINEMA/admin/manageScreen/manage_screen.jsp"> <img class="fa fa-gem" src="../../common/images/cinema_icon.png"> <span>상영관</span>
                                </a></li>
                            <li class="active has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp"> <img class="fa fa-suitcase" src="../../common/images/member_icon.png">
                                    <span>회원관리</span>
                                </a></li>
                            <li class="has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageBoard/freeboard_list.jsp"> <img class="fa fa-file" src="../../common/images/board_icon.png">
                                    <span>게시판 관리</span>
                                </a></li>
                            <li class=" has-sub"><a href="http://localhost/HCY_CINEMA/admin/manageBoard/notice_list.jsp"> <img class="fa fa-file" src="../../common/images/notice_icon.png">
                                <span>공지사항 관리</span>
                            </a></li>
                                
                        </ul>
                    </div>
                    <div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 197.948px;"></div>
                    <div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
                </div>

            </div>
            <div class="sidebar-bg"></div>


            <div id="content" class="content">

                <ol style="text-align:right">
                    <li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
                    <li class="breadcrumb-item"><a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp">회원관리</a></li>
                </ol>


                <h1 class="page-header">
                    Manage Member <small>Manage Member</small>
                </h1>

                <div id="container">


                    <!--div class="conTit_tt">
                                                        <span>
                        소개 및 검색
                    </span>
                            </div-->


                    <div class="scontA">
                        <!--  서브상단 이미지 및 로케이션 단  시작 -->
                        <div id="sVisualA" class="svbgc0 svbg_1030">

                            <div class="svisTxt">
                                <span></span>
                                <p></p>
                            </div>

                            <div id="container_title">

                                <div class="conTit_tt">
                                    <span>회원정보</span>
                                    <span style="padding-left:30px;font-size:.9em;font-weight:normal;">

                                    </span>

                                </div>
                                <div class="right_wrap">

                                </div>
                            </div>
                        </div> <!--  서브상단 이미지 및 로케이션 단 끝 -->
                        <!-- me_code : 103010-->
                        <script src="https://www.ncyok.or.kr:443/js/viewimageresize.js"></script>

                        <!-- 게시물 읽기 시작 { -->

                        <article id="bo_v" style="width:100%">





                            <!-- 관련링크 시작 { 
	 <section id="bo_v_link">
        <h2>관련링크</h2>
        <ul>
                    <li>
                <a href="https://www.ncyok.or.kr:443/bbs/link.php?bo_table=03_1&amp;wr_id=92&amp;no=1" target="_blank">
                    <img src="https://www.ncyok.or.kr:443/skin/board/form_member/img/icon_link.gif" alt="관련링크">
                   http://www.yeba.or.kr                </a>
                <span class="bo_v_link_cnt">1회 연결</span>
            </li>
                </ul>
    </section>    <!-- } 관련링크 끝 -->


                            <!-- 게시물 상단 버튼 시작 {
    <div id="bo_v_top">
        
        <ul class="formbtnswrap">
                                                                                </ul>
            </div>
    <!-- } 게시물 상단 버튼 끝 -->
  <%
			String memberId=request.getParameter("memberId");
			
  			System.out.println( memberId );
			ManageMemberDAO mmDAO = ManageMemberDAO.getInstance();
			List<MemberVO> list=mmDAO.selectMember(memberId);
			
			Encryption ec=Encryption.getInstance();
			
			String name="";
			String tel="";
			String email="";
			
			MemberVO mVO=null;
			SimpleDateFormat inputDateFormat=new SimpleDateFormat("yyyyMMdd");
			SimpleDateFormat outputDateFormat=new SimpleDateFormat("yyyyMMdd");
			
			for(int i=0; i<list.size(); i++){
				mVO=list.get(i);
				name=ec.decryption(mVO.getMname());
				tel=ec.decryption(mVO.getTel());
				email=ec.decryption(mVO.getEmail());
				
				String birthDateStr=mVO.getBirth();
				Date birthDate=inputDateFormat.parse(birthDateStr);
				String formattedBirthDate=outputDateFormat.format(birthDate);
			%>
			
                               
                            
                            <script>
						    function confirmSave() {
						        var confirmSave = confirm("수정된 회원정보를 저장하시겠습니까?");
						        if (confirmSave) {
						            window.location.href = "http://localhost/HCY_CINEMA/admin/manageMember/manage_member_save.jsp?memberId=<%= mVO.getId() %>"; //예를 선택한 경우 delete.jsp로 이동
						        } else {
						            alert("변경된 내용이 취소되었습니다.");
						            window.location.href = "http://localhost/HCY_CINEMA/admin/manageMember/manage_member_info.jsp?memberId=<%= mVO.getId()%>"; 
			
						        }//end else
						    }//confirmSave
						    
						    
							</script>

                            <!-- 본문 내용 시작 { -->
                            <div class="formtit">회원 기본정보</div>
                            <div style="text-align:right">

                                <form action="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_save.jsp" mehtod="post">
                                <div style="text-align:right">
                               <!--  <form action="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_delete.jsp" method="POST"> -->
                                	<input type="hidden" name="memberId" value="<%= mVO.getId() %>">
                                    <input class="btn btn-danger" type="submit" value="저장" id="save" onclick="confirmSave()">
                                
                                <!-- </form> -->
                                </div>


                            
                            <div class="formtablewrap">
                                <table width="100%" class="formtable" cellpadding="0" cellspacing="5">
                                    <colgroup>
                                        <col width="140px">
                                        <col>
                                    </colgroup>
                                    <!-- 1이름 아이디 생년월일 1휴대전화 1이메일 가입일 -->
                                    <tbody>
                                      
                                        <tr>
                                            <th style="width:250px"><strong>이름</strong></th>
                                            <td style="text-align: center;">
                                            <input type="text" name="newName" value="<%= name %>">
                                            </td>
                                            <td>ex) 홍길동</td>
                                        </tr>
                                        <tr>
                                            <th><strong>아이디</strong></th>
									        <td colspan="2" style="text-align: center;"><%=mVO.getId() %>
									        </td>
									        
                                        </tr>
                                        <tr>
                                            <th><strong>생년월일</strong></th>
                                            <td style="text-align: center; margin-left: 1000px;">
                                            <input type="text" name="newBirth" value="<%= formattedBirthDate %>">
                                            </td>
                                            <td style="width:400px">ex) 19980101</td>
                                        </tr>
                                        <tr>
                                            <th><strong>휴대전화</strong></th>
                                            <td style="text-align: center;">
                                            <input type="text" name="newTel" value="<%=tel %>">
                                            </td>
                                            <td>ex) 010-1234-5678</td>
                                        </tr>
                                        <tr>
                                            <th><strong>이메일</strong></th>
                                            <td style="text-align: center;">
                                            <input type="text" name="newEmail" value="<%=email %>">
                                            </td>
                                            <td>ex) songsong@naver.com</td>
                                        </tr>
                                        <tr>
                                            <th><strong>가입일</strong></th>
                                            <td colspan="2" style="text-align: center;">
                                            <%=mVO.getJoindate()%>
                                            </td>
                                            
                                        </tr>
                                        <%
										}
										%>
                                    </tbody>
                                </table>
                                
                                

                                <!-- } 본문 내용 끝 -->


                            </div>
										</form>
                            </div>
                            <br><br>
                            <div align="center">
							<button type="button" style="width:130px;height:40px" class="btn btn-dark"><a href="http://localhost/HCY_CINEMA/admin/manageMember/manage_member_list.jsp"><span style="color: white; font-size: 15px;"><i>글 목록</i></span></a></button>
							</div>
                            </section>

                            <!-- 링크 버튼 시작 { -->
                            <div id="formbtns">

                                <ul class="formbtnswrap">
                                </ul>
                            </div>
                            <!-- } 링크 버튼 끝 -->

                        </article>
                        <!-- } 게시판 읽기 끝 -->


                        <!-- } 게시글 읽기 끝 -->
                    </div>
                </div>
            </div>

    </body>

</html>
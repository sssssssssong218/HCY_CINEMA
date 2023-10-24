<%@page import="AdiminLogin.AdminLoginDAO"%>
<%@page import="AdiminLogin.AdminVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon"
	href="http://192.168.10.147/jsp_prj/common/main/favicon.png">
<!-- bootStrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style>
* {
	padding: 0;
	margin: 0;
	border: none;
}

body {
	font-size: 14px;
	font-family: 'Roboto', sans-serif;
}

.login-wrapper {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 80vh;
}

.login-wrapper>h2 {
	font-size: 24px;
	color: #6A24FE;
	margin-bottom: 20px;
}

#btn {
	color: #FFFFFF;
	font-weight: 700;
}

#login-form>input {
	width: 500px;
	height: 48px;
	padding: 0 10px;
	box-sizing: border-box;
	margin-bottom: 16px;
	border-radius: 6px;
	background-color: #F8F8F8;
}

#login-form>input::placeholder {
	color: #D2D2D2;
}

#login-form>input[type="submit"] {
	color: #fff;
	font-size: 16px;
	background-color: #6A24FE;
	margin-top: 20px;
}

#login-form>input[type="checkbox"] {
	display: none;
}

#login-form>label {
	color: #999999;
}

#login-form input[type="checkbox"]+label {
	cursor: pointer;
	padding-left: 26px;
	background-image: url("checkbox.png");
	background-repeat: no-repeat;
	background-size: contain;
}

#login-form input[type="checkbox"]:checked+label {
	background-image: url("checkbox-active.png");
	background-repeat: no-repeat;
	background-size: contain;
}
</style>
<script type="text/javascript">
	$(function(){
	    $("#btn").click(function(){
	        var id = $("#userName").val();
	        var pass = $("#userPassword").val();
	    	
	        if (id !== "" && pass !== "") {
	            // 폼을 제출하여 폼 내의 데이터가 서버로 전송됩니다.
	            $("#login-form").submit();
	        } else {
	            alert("아이디 혹은 비밀번호를 입력해주세요!");
	        }
	    })
	        var userInputId = getCookie("name");
            $("input[name='userName']").val(userInputId);

            if (userInputId != '') {
                $("#remember-check").prop('checked', true);
                $("#remember-check").attr('checked', true);
            }

	    $("#remember-check").change(function(){
	    	if($("#remember-check").is(":checked")){
	    		if ($("input[name='userName']").val() == '') {
                    alert("아이디를 입력하세요.");
                    $("#remember-check").prop('checked', false);
                    $("#remember-check").attr('checked', false);                   
                    return false;
                }
				
                setCookie("name", $("#userName").val(),7);
            }
            else {
                setCookie("name", "",-1);
                $("input[name='userName']").val(''); 
               
            }
        });
	    function setCookie(cookieName, value, exdays) {

            var exdate = new Date();
            exdate.setDate(exdate.getDate() + exdays);
            var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
            document.cookie = cookieName + "=" + cookieValue;
        }

        function deleteCookie(cookieName) {
            var expireDate = new Date();

            expireDate.setDate(expireDate.getDate() - expireDate.getDate());
            document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
        }

        function getCookie(cookieName) {
            cookieName = cookieName + '=';
            var cookieData = document.cookie;
            var start = cookieData.indexOf(cookieName);
            var cookieValue = '';
            if (start != -1) {
                start += cookieName.length;
                var end = cookieData.indexOf(';', start);
                if (end == -1) end = cookieData.length;
                cookieValue = cookieData.substring(start, end);
            }
            return unescape(cookieValue);
        }
    });

</script>
</head>
<body>

	<div class="login-wrapper">
		<h2>
			<img src="../../common/images/logo.png">
		</h2>
		<form method="post" id="login-form" action="http://localhost/HCY_CINEMA/admin/manageLogin/admin_login_check.jsp">
			<input type="text" name="userName" placeholder="ID" id="userName"
				><br /> <input
				type="password" name="userPassword" placeholder="Password"
				id="userPassword"><br /> <label for="remember-check"
				style="width: 150px; margin-bottom: 10px;"> <input
				type="checkbox" id="remember-check">아이디 저장하기
			</label><br /> <input type="button" value="Login" id="btn"
				style="background-color: #FB4357;">
		</form>
	</div>
</body>
</html>
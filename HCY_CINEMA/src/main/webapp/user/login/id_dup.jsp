<%@page import="manageMember.LoginDAO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLClientInfoException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">
#idDup{width: 502px;height: 303px;background: #ffffff url(http://localhost/HCY_CINEMA/common/images/id_background.png) no-repeat;}
#wrap{width: 502px;height: 303px;margin: auto;}
#idDiv{position: absolute;top: 100px;left: 80px;width: 300px;}
#idResult{position: absolute;top: 200px;left: 80px;}
</style>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
			checkNull();
	})
	$("#id").keydown(function(evt){
		if( evt.which == 13){
			checkNull();
		}//if
	})//keydown
})

function checkNull(){
	var id =$("#id").val();
	
	if(id.trim() == ""){
		alert("아이디를 입력해주세요")
		return;
	}//if
	
	if(!/^[a-zA-Z0-9]{3,}$/.test(id)){
		alert("올바른 형식의 아이디가 아닙니다./n아이디는 3자 이상인 영어와 숫자의 조합입니다.")
		return;
	}//if
	
	$("#frm").submit();
}//checkNull

function useId(id){
	opener.window.document.frm.txtUserId.value=id
	opener.window.document.hidDupFrm.idDupFlag.value=1
	self.close();
}//useId

</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
    <div id="idDup">
        <div id="idDiv">
            <form name="subFrm" action="http://localhost/HCY_CINEMA/user/login/id_dup.jsp" id="frm">
                <label>아이디</label>
                <input type="text" id="id" name="id" class="inputBox" style="width: 160px;" maxlength="16" autofocus="autofocus" value="${param.id }">
                <input type="button" value="중복확인" class="btn" id="btn" >
                <input type="text" style="display: none;">
            </form>
        </div>
        <c:if test="${ param.id ne '' }">
		<div id="idResult">
		<c:catch var="se">
                <%
                	String id = request.getParameter("id");
                if(id != null){
                	LoginDAO lDAO = LoginDAO.getInstance();
                	try{
                		boolean flag = lDAO.selectCheckID(id);
                		
                		pageContext.setAttribute("dupFlag", flag);
                	%>
                	<strong><c:out value="${ param.id }"/></strong>는
                	<c:choose>
                		<c:when test="${ dupFlag }">
                		<span style="color:#DC5460">이미 사용중 입니다.</span>
                		</c:when>
                		<c:otherwise>
                		<span style="color:#233942">사용가능합니다.</span>
                		<a href="javascript:useId('${param.id }')">사용</a>
                		</c:otherwise>
                	</c:choose>
                	<%
                	}catch(SQLException se){
                		se.printStackTrace();
                	}//catch
                }//if
                %>
                </c:catch>
                <c:if test="${not empty se }">
                문제가 발생하였으니 잠시후 다시 시도해주세요.
                </c:if>
		</div>
		</c:if>
    </div>
</div>
</body>
</html>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="manageMember.MemberVO"%>
<%@page import="ticketing.NonMemberTicketingDAO"%>
<%@page import="encryption.Encryption"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
Encryption en = Encryption.getInstance();
String tel = en.encryption(request.getParameter("tel"));
String birth = request.getParameter("birth");
String pass = en.directEncryption(request.getParameter("pass"));
String result = "f";
boolean flag = false;
JSONObject json = new JSONObject();

flag = NonMemberTicketingDAO.getInstance().selectNonmember(tel,birth,pass);
if(flag){
result = "";
MemberVO mVO = new MemberVO();
mVO.setTel(tel);
mVO.setBirth(birth);
mVO.setPassword(pass);
session.setAttribute("mVO", mVO);
session.setAttribute("nonMemLogin", true);
}//if

json.put("flag", result);

%><%=json.toJSONString()%>
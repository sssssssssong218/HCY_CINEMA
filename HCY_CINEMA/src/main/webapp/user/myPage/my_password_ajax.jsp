<%@page import="manageMember.MemberVO"%>
<%@page import="manageMember.EditMemberInfoDAO"%>
<%@page import="encryption.Encryption"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page info="" trimDirectiveWhitespaces="true"%>
<%
JSONObject json = new JSONObject();
Encryption en = Encryption.getInstance();
String pass = en.directEncryption(request.getParameter("pass"));
MemberVO mVO = (MemberVO)session.getAttribute("mVO");
boolean flag = EditMemberInfoDAO.getInstance().selectFindPW(mVO.getId(),pass);
json.put("flag",flag);
%><%=json.toJSONString()%>
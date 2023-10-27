<%@page import="movie.MovieFileVO"%>
<%@page import="movie.AddMovieDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.InputStream" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upload</title>
</head>
<body>
	
<%
String mname=(String)session.getAttribute("mname");
AddMovieDAO amDAO=AddMovieDAO.getInstance();
String movieCode=amDAO.selectMovieCode(mname);




File saveDir = new File("C:/Users/user/git/HCY_CINEMA/HCY_CINEMA/src/main/webapp/common/poster");
int maxSize = 1024 * 1024 * 50; // 키로바이트 * 메가바이트 * 기가바이트
try {
    MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8", new DefaultFileRenamePolicy());

    String newfile = mr.getFilesystemName("poster_file");
    String fileExtension = newfile.substring(newfile.lastIndexOf(".")); // 파일 확장자 추출
    
    
    
    if(!(fileExtension.equals(".jpg")||fileExtension.equals(".png"))){
    	%>
    	<strong>업로드 실패</strong>
    	<% 
    	return;
    }
    String baseFileName = "0106"; // 기본 파일명
    String newFileName = baseFileName + fileExtension;
    MovieFileVO mVO=new MovieFileVO();
    mVO.setPosterFile(baseFileName);
	
    amDAO.insertMoviePosterFile(mVO, movieCode);
    
    File uploadedFile = new File(saveDir, newfile);
    File renamedFile = new File(saveDir, newFileName);

    int counter = 1;
    // 파일명 중복 확인 및 숫자를 붙여가며 변경
    while (renamedFile.exists()) {
        newFileName = baseFileName + "_" + counter + fileExtension;
        renamedFile = new File(saveDir, newFileName);
        counter++;
    }

    boolean renamed = uploadedFile.renameTo(renamedFile);

    String uploader = mr.getParameter("uploader");
    String age = mr.getParameter("age");
    String originfile = mr.getOriginalFileName("poster_file");

    if (renamed) {
%>
    <strong>업로드 성공</strong><br/>
    업로더: <%= uploader %><br/>
    나이: <%= age %><br/>
    파일명: <%= newFileName %> (<%= originfile %>)<br/>
<%
    } else {
%>
    <strong>파일 이름 변경 실패</strong><br/>
<%
    }
} catch (IOException ie) {
    ie.printStackTrace();
    out.println("파일 업로드 처리 중 문제 발생");
}
%>

</body>
</html>
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
request.setCharacterEncoding("utf-8");

String location = "C:/Users/user/git/HCY_CINEMA/HCY_CINEMA/src/main/webapp/common/poster";
int maxSize = 1024 * 1024 * 50; // 키로바이트 * 메가바이트 * 기가바이트
MultipartRequest multi = new MultipartRequest(request, location, maxSize, "utf-8", new DefaultFileRenamePolicy());

String userName = multi.getParameter("userName");

Enumeration<?> files = multi.getFileNames();

String element = "";
String filesystemName = "";
String originalFileName = "";
String contentType = "";
long length = 0;

if (files.hasMoreElements()) {
    element = (String) files.nextElement();
    originalFileName = multi.getOriginalFileName(element);

    String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
    if (fileExtension.equals(".png")||fileExtension.equals(".jpg")) {
        // 허용되는 확장자인 경우에만 저장
        filesystemName = multi.getFilesystemName(element);
        contentType = multi.getContentType(element);
        length = multi.getFile(element).length();
        
        String newFileName = "my_custom_file_name" + fileExtension;
        File newFile = new File(location, newFileName);
        multi.getFile(element).renameTo(newFile);
    } else{
    	File file=new File(location, originalFileName);
    	if (file.exists()) {
            boolean deleted = file.delete();
            if (deleted) {
                // 파일이 삭제되었을 때 실행할 코드
        	%>
        	<strong>업로드할 파일은 png또는 jpg형식이여야 합니다</strong><br/>
        	<a href="javascript:history.back()">빡대가리심?</a>
        	<%        
            } else {
                // 파일 삭제 실패 시 실행할 코드
                %>
                <strong>오류발생 관리자에게 문의하세요!!</strong><br/>
        	<a href="javascript:history.back()">그런건 없고 다시하세요~</a>
                <%
            }
        } else {
%>
            <strong>업로드중 오류 발생 다시 시도해주세요!</strong><br/>
            <a href="javascript:history.back()">뒤로</a>
<%
        }
    }
}
%>
</body>
</html>
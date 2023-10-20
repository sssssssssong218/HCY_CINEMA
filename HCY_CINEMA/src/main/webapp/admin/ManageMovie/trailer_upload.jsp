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
		
		/*   File uploadFolder = new File(location);
		    if (!uploadFolder.exists()) {
		        uploadFolder.mkdir();
		    } */
		    
		   
		int maxSize = 1024 * 1024 * 50; // 키로바이트 * 메가바이트 * 기가바이트   
		MultipartRequest multi = new MultipartRequest(request,
							 						  location,
													  maxSize,
													  "utf-8",
													  new DefaultFileRenamePolicy());

		String userName = multi.getParameter("userName");
		
		Enumeration<?> files = multi.getFileNames(); // <input type="file">인 모든 파라메타를 반환
				
		String element = "";
		String filesystemName = "";
		String originalFileName = "";
		String contentType = "";
		long length = 0;		
				
		if (files.hasMoreElements()) { 
			
			element = (String)files.nextElement(); 
			
			filesystemName 			= multi.getFilesystemName(element); 
			originalFileName 		= multi.getOriginalFileName(element); 
			contentType 			= multi.getContentType(element);	
			length 					= multi.getFile(element).length(); 
			
		}
	 		 String fileExtension = multi.getOriginalFileName(element).substring(multi.getOriginalFileName(element).lastIndexOf("."));
		
		    String newFileName = "my_custom_file_name" + fileExtension;
		 File newFile = new File(location, newFileName);
		    multi.getFile(element).renameTo(newFile);
	
	%>
</body>
</html>
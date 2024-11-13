<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="java.io.File"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz09_process</title>
</head>
<body>
	<%
		String uploadDir = "/Users/kimminsang/eclipse-workspace/JSP/src/main/webapp/resources/images";
		File dir = new File(uploadDir);
		if (!dir.exists()) {
			dir.mkdir();
		}
	
		int maxFileSize = 10 * 1024 * 1024;
		String encoding = "UTF-8";
		MultipartRequest multipartRequest = new MultipartRequest(request, uploadDir, maxFileSize, encoding);
	
		Enumeration files = multipartRequest.getFileNames();
		while (files.hasMoreElements()) {
			String fileName = (String) files.nextElement();
			String originalFileName = multipartRequest.getOriginalFileName(fileName);
			String contentType = multipartRequest.getContentType(fileName);
			File uploadedFile = multipartRequest.getFile(fileName);
	
			out.println("요청 파라미터 이름: " + fileName + "<br>");
			out.println("실제 파일 이름: " + originalFileName + "<br>");
			out.println("저장 파일 이름: " + uploadedFile.getAbsolutePath() + "<br>");
			out.println("파일 컨텐츠 유형: " + contentType + "<br>");
			out.println("파일 크기: " + uploadedFile.length() + " bytes<br>");
		}
	%>
</body>
</html>
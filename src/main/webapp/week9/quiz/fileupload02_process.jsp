<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz10</title>
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

	DiskFileItemFactory factory = new DiskFileItemFactory();
	factory.setSizeThreshold(maxFileSize);
	factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
	ServletFileUpload upload = new ServletFileUpload(factory);

	try {
		List<FileItem> items = upload.parseRequest(request);

		for (FileItem item : items) {
			if (!item.isFormField()) {
				String fileName = new File(item.getName()).getName();
				String contentType = item.getContentType();
				long fileSize = item.getSize();

				out.println("요청 파라미터 이름: " + item.getFieldName() + "<br>");
				out.println("저장 파일 이름: " + fileName + "<br>");
				out.println("파일 컨텐츠 타입: " + contentType + "<br>");
				out.println("파일 크기: " + fileSize + " bytes<br>");
			}
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>
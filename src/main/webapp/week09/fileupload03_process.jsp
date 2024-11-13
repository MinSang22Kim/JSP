<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String fileUploadPath = "/WEB-INF/upload"; // 파일 업로드 경로 설정
		DiskFileUpload upload = new DiskFileUpload(); // 파일 업로드 객체 생성
		List items = upload.parseRequest(request); // 요청에서 파일 항목 파싱
		Iterator params = items.iterator(); // 항목 이터레이터 생성

		while (params.hasNext()) {
			FileItem fileItem = (FileItem) params.next(); // 파일 항목 가져오기
			if (!fileItem.isFormField()) { // 일반 폼 필드가 아닐 경우
				String fileName = fileItem.getName(); // 파일 이름 가져오기
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1); // 파일 경로에서 파일 이름만 추출
				File file = new File(fileUploadPath + "/" + fileName); // 파일 객체 생성
				fileItem.write(file); // 파일 저장
		}
	}
	%>
</body>
</html>
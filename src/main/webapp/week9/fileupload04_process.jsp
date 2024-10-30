<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String path = "/Users/kimminsang"; // 파일 업로드 경로 설정
		DiskFileUpload upload = new DiskFileUpload(); // DiskFileUpload 객체 생성
	
		upload.setSizeMax(1000000); // 최대 파일 크기 설정
		upload.setSizeThreshold(4096); // 메모리 임계값 설정
		upload.setRepositoryPath(path); // 파일 저장 경로 설정
	
		List items = upload.parseRequest(request); // 요청 파라미터 파싱
		Iterator params = items.iterator(); // 이터레이터 생성
	
		while (params.hasNext()) {
			FileItem item = (FileItem) params.next(); // 다음 파일 항목 가져오기
	
			if (item.isFormField()) { // 일반 폼 필드인지 확인
				String name = item.getFieldName(); // 필드 이름 가져오기
				String value = item.getString("utf-8"); // 필드 값 가져오기
				out.println(name + " = " + value + "<br>"); // 출력
			} else { // 파일 항목인 경우
				String fileFieldName = item.getFieldName(); // 파일 필드 이름
				String fileName = item.getName(); // 파일 이름
				String contentType = item.getContentType(); // 파일 콘텐츠 유형
				
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1); // 파일 경로에서 파일 이름만 추출
				long fileSize = item.getSize(); // 파일 크기
	
				File file = new File(path + "/" + fileName); // 파일 객체 생성
				item.write(file); // 파일 저장
	
				// 출력
				out.println("------------------------------<br>");
				out.println("요청 파라미터 이름: " + fileFieldName + "<br>");
				out.println("저장 파일 이름: " + fileName + "<br>");
				out.println("파일 콘텐츠 유형: " + contentType + "<br>");
				out.println("파일 크기: " + fileSize + "<br>");
			}
		}
	%>
</body>
</html>
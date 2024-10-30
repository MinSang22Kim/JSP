<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz10</title>
</head>
<body>
	<form action="fileupload02_process.jsp" method="post" enctype="multipart/form-data">
		파일 : 
		<input type="file" name="찾아보기" id="fileUpload"> 
		<input type="submit" value="Upload File" name="파일 올리기">
	</form>
</body>
</html>
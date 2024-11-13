<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz08</title>
</head>
<body>
	<h2>전송된 요청 파라미터</h2>
	<%
		String queryString = request.getQueryString();
		out.println("전송된 요청 파라미터: " + queryString);
	%>
</body>
</html>
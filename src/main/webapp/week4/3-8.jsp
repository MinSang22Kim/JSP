<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request</title>
</head>
<body>
	<%
	request.setAttribute("RequestAttribute", "request 내장 객체");
	%>
	${requestScope.ReqeustAttribute }
</body>
</html>
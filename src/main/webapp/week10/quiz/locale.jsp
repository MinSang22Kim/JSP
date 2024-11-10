<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Locale</title>
</head>
<body>
	<h3>현재 로케일</h3>

	<%
		Locale locale = request.getLocale();
	%>

	<p>
		언어:
		<%=locale.getLanguage()%></p>
	<p>
		국가:
		<%=locale.getCountry()%></p>
</body>
</html>
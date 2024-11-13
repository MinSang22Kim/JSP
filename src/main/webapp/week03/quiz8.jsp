<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz8</title>
</head>
<body>
	<%
	Date currentDate = new Date();
	out.println("<p>Today: " + currentDate + "</p>");
	%>
</body>
</html>
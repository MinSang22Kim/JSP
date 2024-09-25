<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.lang.Math" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz8</title>
</head>
<body>
	<% 
		Date now = new Date();
		double result = Math.pow(5, 2);
	%>
	<h2>현재 날짜: <%= now %></h2>
	<h2>5의 제곱: <%= result %></h2>
</body>
</html>
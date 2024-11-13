<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%!String message = "Hello, Java Server Pages";%>

<%!String getString() {
	return message;
}%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz7</title>
</head>
<body>
	<p><%=getString()%></p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz08</title>
</head>
<body>
	<%
		int number = Integer.parseInt(request.getParameter("number"));
	%>
	<%
		for (int i = 1; i <= 9; i++) {
			int result = number * i;
	%>
	<p><%= number %> * <%= i %> = <%= result %></p>
	<%
		}
	%>
</body>
</html>
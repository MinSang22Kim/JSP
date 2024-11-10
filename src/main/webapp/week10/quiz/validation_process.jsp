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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
		out.println("아이디: " + username + "<br>");
		out.println("비밀번호: " + password + "<br>");
	%>
</body>
</html>
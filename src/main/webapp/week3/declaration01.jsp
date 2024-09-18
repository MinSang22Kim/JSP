<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<!-- 선언문은 !랑 써줌, 전역으로 선언 -->
	<%! int data = 50; %>
	<!--  스크립틀릿 -->
	<%
		out.println("Value of the variable is:" + data);
	%>
</body>
</html>
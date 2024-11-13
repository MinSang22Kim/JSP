<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dao.GuGuDan"%>
<jsp:useBean id="gugudanDAO" class="com.dao.GuGuDan" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz10</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<%=gugudanDAO.process(5)%>
</body>
</html>
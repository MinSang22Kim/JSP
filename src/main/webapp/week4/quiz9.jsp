<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz9</title>
</head>
<body>
	<%@ include file="quiz9-header.jsp"%>

	현재 시간:
	<%=java.util.Calendar.getInstance().getTime()%>
</body>
</html>
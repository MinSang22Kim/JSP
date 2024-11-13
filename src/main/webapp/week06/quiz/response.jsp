<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz09</title>
</head>
<body>
	<% 
	    response.setHeader("Refresh", "5");
	    Calendar cal = Calendar.getInstance();
	    int hour = cal.get(Calendar.HOUR_OF_DAY);
	    int minute = cal.get(Calendar.MINUTE);
	    int second = cal.get(Calendar.SECOND);
	%>
    <h2>현재 시간</h2>
    <p><%= hour %>시 <%= minute %>분 <%= second %>초</p>
    <a href="response_data.jsp">Google 홈페이지로 이동하기</a>
    
    
</body>
</html>
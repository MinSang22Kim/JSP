<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
    <%-- 전역 변수 선언문 --%>
    <%! int data = 50; %>

    <%-- 스크립틀릿: 지역 변수 선언 --%>
    <% 
        int cnt = 0; 
    %>

    <%-- 전역 변수 data 출력 --%>
    <%
        out.println("data: " + data);
    %>

    <%-- 표현문 --%>
    <%= "cnt: " + cnt %>

</body>
</html>

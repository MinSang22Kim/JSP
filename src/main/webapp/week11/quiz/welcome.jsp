<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<%
	    String userId = (String) session.getAttribute("userId");
	    if (userId == null) {
	        response.sendRedirect("session.jsp");
	        return;
	    }
	%>
    <h2><%= userId %> 님 반갑습니다.</h2>
    <form action="session_out.jsp" method="post">
        <input type="submit" value="로그아웃">
    </form>
</body>
</html>
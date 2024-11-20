<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionProcess</title>
</head>
<body>
	<%
	    String userId = request.getParameter("id");
	    String password = request.getParameter("password");
	
	    if ("admin".equals(userId) && "admin1234".equals(password)) {
	        session.setAttribute("userId", userId);
	        response.sendRedirect("welcome.jsp");
	    } else {
	        out.println("아이디 혹은 비밀번호가 틀립니다!");
	    }
	%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request_process</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("id");
	String password = request.getParameter("passwd");
	
	if(userId.equals("admin") && password.equals("1234")){
		response.sendRedirect("response01_success.jsp");
	} else {
		response.sendRedirect("response01_failed.jsp");
	}
	%>
	<p>
		아이디: <%=userId%>
	<p>
		비밀번호: <%=password%>
</body>
</html>
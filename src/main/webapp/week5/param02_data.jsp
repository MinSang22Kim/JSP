<%@ page contentType = "text/html; charset = utf-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<%
		// request.getAttribute()로 파라미터 값 받기
		String title = (String) request.getAttribute("title");
		String date = (String) request.getAttribute("date");
	%>
	<h3><%=java.net.URLDecoder.decode(title, "UTF-8") %></h3>
	Today is: <%= date %>
</body>
</html>

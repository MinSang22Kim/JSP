<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz08</title>
</head>
<body>
    <form action="request_process.jsp" method="get">
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id"><br>
        
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password"><br>
        
        <input type="submit" value="전송">
    </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
    <form action="session_process.jsp" method="post">
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id"><br><br>
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password"><br><br>
        <input type="submit" value="전송">
    </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PreparedStatement 객체로 INSERT 쿼리문 실행하기</title>
</head>
<body>
	<form method="post" action="insert02_process.jsp">
        <p>아이디 : <input type="text" name="id"></p>
        <p>비밀번호 : <input type="password" name="passwd"></p>
        <p>이름 : <input type="text" name="name"></p>
        <p><input type="submit" value="전송"></p>
    </form>
</body>
</html>
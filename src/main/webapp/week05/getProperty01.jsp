<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="com.dao.Person" scope="request"/>
	<jsp:setProperty property="id" name="person" value="2020202020"/>
	<jsp:setProperty property="name" name="person" value="김민상상플러스"/>
	<p> 아이디 : <jsp:getProperty property="id" name="person"/>
	<p> 이 름 : <jsp:getProperty property="name" name="person"/>
</body>
</html>
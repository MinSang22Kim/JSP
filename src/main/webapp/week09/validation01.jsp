<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation01</title>
<script type="text/javascript">
	function checkForm() {
		alert("아이디 : " + document.loginForm.id.value + "\n" + "비밀번호 : "
				+ document.loginForm.passwd.value);
	}
</script>
</head>
<body>
	<form name="loginForm" onsubmit="checkForm(); return false;">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> <input type="submit" value="전송">
	</form>
</body>
</html>
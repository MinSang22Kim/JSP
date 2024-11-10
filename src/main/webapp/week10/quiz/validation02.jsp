<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz09</title>
<script type="text/javascript">
	function validatePassword(password) {
		var pattern = /([a-zA-Z0-9])\1\1/;
		return pattern.test(password);
	}

	function validateForm() {
		var username = document.forms["validationForm"]["username"].value;
		var password = document.forms["validationForm"]["password"].value;
		var confirmPassword = document.forms["validationForm"]["confirmPassword"].value;

		if (username == "") {
			alert("아이디를 입력해주세요.");
			return false;
		}

		if (password == "") {
			alert("비밀번호를 입력해주세요.");
			return false;
		}

		if (confirmPassword == "") {
			alert("비밀번호 확인을 입력해주세요.");
			return false;
		}

		if (password !== confirmPassword) {
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			return false;
		}

		if (validatePassword(password)) {
			alert("비밀번호는 연속 3자 이상의 영문 또는 숫자를 포함할 수 없습니다.");
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<form name="validationForm" action="validation_process.jsp" 
		  method="post" onsubmit="return validateForm()">
        아이디: <input type="text" name="username"><br>
        비밀번호: <input type="password" name="password"><br>
        비밀번호 확인: <input type="password" name="confirmPassword"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
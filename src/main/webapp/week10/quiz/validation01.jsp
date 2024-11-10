<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz08</title>
<script type="text/javascript">
	function validateForm() {
		var username = document.forms["form"]["username"].value;
		var password = document.forms["form"]["password"].value;

		if (username == "") {
			alert("아이디를 입력해주세요.");
			return false;
		}

		if (password == "") {
			alert("비밀번호를 입력해주세요.");
			return false;
		}

		if (password.includes(username)) {
			alert("비밀번호는 아이디를 포함할 수 없습니다.");
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<form name="fForm" action="validation_process.jsp" 
		  method="post" onsubmit="return form()">
        아이디: <input type="text" name="username"><br>
        비밀번호: <input type="password" name="password"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
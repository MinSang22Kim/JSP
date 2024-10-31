<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation03</title>
</head>
<script type="text/javascript">
	function checkLogin() {
	    var form = document.loginForm;
	
	    // 아이디 유효성 검사
	    if (form.id.value.length < 4 || form.id.value.length > 12) {
	        alert("아이디는 4~12자 이내로 입력 가능합니다!");
	        form.id.select();
	        return; // 유효성 검사 실패 시 함수 종료
	    }
	
	    // 비밀번호 유효성 검사
	    if (form.passwd.value.length < 4) {
	        alert("비밀번호는 4자 이상으로 입력해야 합니다!");
	        form.passwd.select();
	        return; // 유효성 검사 실패 시 함수 종료
	    }
	
	    form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation03_process.jsp" method="post">
        <p>아이디: <input type="text" name="id">
        <p>비밀번호: <input type="password" name="passwd">
        <p><input type="button" value="전송" onclick="checkLogin()">
    </form>
</body>
</html>
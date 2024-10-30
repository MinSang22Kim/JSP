<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation04</title>
</head>
<script type="text/javascript">
	function checkLogin() {
	    var form = document.loginForm;
	
	    // ID 유효성 검사
	    if (i=0; i<form.id.value.length; i++) {
	    	var ch =form.id.value.charAt(i);
	    	
	    	if((ch<'a'||ch>'z') && (ch<'A'||ch>'Zå') && (ch<'0'||ch>'9')){
	        	alert("아이디는 영문 소문자만 입력 가능 합니다!");
	        	form.id.select();
	        	return; // 유효성 검사 실패 시 함수 종료
	    	}
	    }
	
	 	// 비밀번호 유효성 검사
	   	if(isNaN(form.passwd.value){
	   		alert("비밀번호는 숫자만 입력 가능합니다!");
            form.passwd.select();
            return; // 유효성 검사 실패 시 함수 종료
	   	}
	
	    // 모든 검사 통과 시 폼 제출
	    form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation04_process.jsp" method="post">
		<p>아이디: <input type="text" name="id">
		<p>비밀번호: <input type="password" name="passwd">
		<p><input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>
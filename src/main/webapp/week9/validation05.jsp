<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규표현식</title>
<script type="text/javascript">
	function checkMember() {
		
	    var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 아이디 형식
	    var regExpName = /^[가-힣]*$/; // 이름: 한글
        var regExpPasswd = /^[0-9]*$/; // 비밀번호: 숫자만
        var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/; // 전화번호 형식
        var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z](-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; // 이메일 형식

        var form = document.Member;

        var id = form.id.value;
        var name = form.name.value;
        var passwd = form.passwd.value;
        var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
        var email = form.email.value;

     	// ID 유효성 검사
        if (!regExpId.test(id)) {
            alert("아이디는 영문자와 한글로만 입력 가능합니다!");
            form.id.select();
            return;
        }

        // 이름 유효성 검사
        if (!regExpName.test(name)) {
            alert("이름은 한글로만 입력 가능합니다!");
            form.name.select();
            return;
        }

        // 비밀번호 유효성 검사
        if (!regExpPasswd.test(passwd)) {
            alert("비밀번호는 숫자만 입력 가능합니다!");
            form.passwd.select();
            return;
        }

        // 전화번호 유효성 검사
        if (!regExpPhone.test(phone)) {
            alert("전화번호 형식이 올바르지 않습니다!");
            form.phone1.select();
            return;
        }

        // 이메일 유효성 검사
        if (!regExpEmail.test(email)) {
            alert("이메일 형식이 올바르지 않습니다!");
            form.email.select();
            return;
        }

        // 모든 검사 통과 시 폼 제출
        form.submit()
	}
</script>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="validation05_process.jsp" name="Member" method="post">
		<p> 아이디: <input type="text" name="id">
		<p> 비밀번호: <input type="password" name="passwd">
		<p> 이름: <input type="text" name="name">
		<p> 연락처: 
		<select name="phone1">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="019">019</option>
		</select> - <input type="text" maxlength="4" size="4" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3">
		</p>
		<p>
			이메일: <input type="text" name="email">
		</p>
		<p>
			<input type="button" value="가입하기" onclick="checkMember()">
		</p>
	</form>
</body>
</html>

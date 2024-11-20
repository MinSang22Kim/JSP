<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie01</title>
</head>
<body>
	<%
	    // 사용자 입력 파라미터 받기
	    String user_id = request.getParameter("id");
	    String user_pw = request.getParameter("passwd");
	
	    // 사용자 인증 확인
	    if ("admin".equals(user_id) && "1234".equals(user_pw)) {
	        // 쿠키 생성
	        Cookie cookie_id = new Cookie("userID", user_id);
	        Cookie cookie_pw = new Cookie("userPW", user_pw);
	
	        // 쿠키 추가
	        response.addCookie(cookie_id);
	        response.addCookie(cookie_pw);
	
	        // 성공 메시지 출력
	        out.println("쿠키 생성이 성공했습니다.<br>");
	        out.println(user_id + "님 환영합니다.");
	    } else {
	        // 실패 메시지 출력
	        out.println("쿠키 생성이 실패했습니다.");
	    }
	%>
</body>
</html>
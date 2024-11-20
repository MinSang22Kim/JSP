<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie03: Delete Cookie</title>
</head>
<body>
	<%
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
            	
            	 // 쿠키 만료 시간 0으로 설정
                cookies[i].setMaxAge(0);
            	 
                // 만료된 쿠키를 클라이언트에 재전송
                response.addCookie(cookies[i]);
            }
        }

        response.sendRedirect("cookie02.jsp");
    %>

</body>
</html>
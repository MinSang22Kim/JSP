<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Internationalization</title>
</head>
<body>
    <!-- 언어 선택 링크 -->
    <p><a href="?language=ko">Korean</a> | <a href="?language=en">English</a></p>

    <!-- URL 파라미터로 받은 언어 설정 -->
    <fmt:setLocale value="${param.language}" />
    <fmt:setBundle basename="com.bundle.quizBundle" var="resourceBundle" />

    <!-- 다국어 메시지 변수 설정 -->
    <fmt:message key="id" bundle="${resourceBundle}" var="idLabel" />
    <fmt:message key="password" bundle="${resourceBundle}" var="passwordLabel" />
    <fmt:message key="button" bundle="${resourceBundle}" var="buttonLabel" />

    <!-- 다국어 메시지 출력 -->
    <form action="submit_form.jsp" method="post">
        <p>${idLabel}: <input type="text" name="id" placeholder="${idLabel}"></p>
        <p>${passwordLabel}: <input type="password" name="password" 
        											placeholder="${passwordLabel}"></p>
        <p><button type="submit">${buttonLabel}</button></p>
    </form>
</body>
</html>

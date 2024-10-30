<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.calculator.Calculator" %>
<jsp:useBean id="calculator" class="com.calculator.Calculator" scope="session" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>계산기 과제</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px; /* 최대 너비 */
            margin: auto;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="number"], select {
            width: 80%; /* 너비를 80%로 조정 */
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            max-width: 300px; /* 최대 너비 설정 */
        }
        input[type="submit"] {
            background-color: #5cb85c;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
        h2 {
            text-align: center;
            color: #d9534f;
        }
    </style>
</head>
<body>
    <h1>계산기 프로그램</h1>
    <form action="calculator.jsp" method="post">
        <label for="num1">첫 번째 숫자:</label>
        <input type="number" name="num1" required>

        <label for="operator">연산자:</label>
        <select name="operator" required>
            <option value="+">덧셈</option>
            <option value="-">뺄셈</option>
            <option value="*">곱셈</option>
            <option value="/">나눗셈</option>
        </select>

        <label for="num2">두 번째 숫자:</label>
        <input type="number" name="num2" required>

        <input type="submit" value="계산">
    </form>

    <%
        String num1Str = request.getParameter("num1");
        String operator = request.getParameter("operator");
        String num2Str = request.getParameter("num2");

        if (num1Str != null && operator != null && num2Str != null) {
            double num1 = Double.parseDouble(num1Str);
            double num2 = Double.parseDouble(num2Str);
            
            calculator.setNum1(num1);
            calculator.setNum2(num2);
            calculator.setOperator(operator);
            double result = calculator.calculate();

            out.println("<h2>결과: " + result + "</h2>");
        }
    %>
</body>
</html>

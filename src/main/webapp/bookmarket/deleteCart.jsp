<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.book.Book"%>
<%@ page import="com.book.BookRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>장바구니: 하나의 제품 삭제</title>
</head>
<body>
	<%
	    String id = request.getParameter("cartId");
	    if (id == null || id.trim().equals("")) {
	        response.sendRedirect("cart.jsp");
	        return;
	    }
	
	    session.invalidate();
	    response.sendRedirect("cart.jsp");
	%>
</body>
</html>
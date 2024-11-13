<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.book.Book"%>
<%@ page import="com.book.BookRepository"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>Welcome</title>
</head>
<body>
	<div class="container py-4">
		<%@ include file="menu.jsp"%>
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">도서 쇼핑몰에 오신 것을 환영합니다</h1>
				<p class="col-md-8 fs-4">BookMarket</p>
			</div>
		</div>
		
		<%
			BookRepository dao = BookRepository.getInstance();
			ArrayList<Book> listOfBooks = dao.getAllBooks();
		%>

		<div class="row text-center">
			<%
				if (listOfBooks != null && !listOfBooks.isEmpty()) {
					for (int i = 0; i < listOfBooks.size(); i++) {
						Book book = listOfBooks.get(i);
			%>
			<div class="col-md-4">
				<div class="h-100 p-2">
					<img src="../resources/images/<%=book.getFilename()%>" style = "width : 200; height : 300">
					<h5><b><%=book.getName()%></b></h5>
					<p>저자:<%=book.getAuthor()%></p>
					<p>가격:<%=book.getUnitPrice()%>원</p>
					<a href="./book.jsp?id=<%=book.getBookId()%>"class="btn btn-secondary">상세 정보 &raquo;</a>
				</div>
			</div>
			<%
					}
				} else {
			%>
				<p>도서 목록이 비어 있습니다.</p>
			<%
				}
			%>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>

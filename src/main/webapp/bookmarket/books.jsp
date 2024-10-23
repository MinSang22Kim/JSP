<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.book.Book" %>
<jsp:useBean id="bookDAO" class="com.book.BookRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Market</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container py-4">
        <h1 class="display-5 fw-bold">도서 목록</h1>
        <p class="col-md-8 fs-4">Book List</p>
        <% ArrayList<Book> listOfBooks = bookDAO.getAllBooks(); %>
        <div class="row align-items-md-stretch text-center">
            <%
            	for (int i = 0; i < listOfBooks.size(); i++) {
                	Book book = listOfBooks.get(i);
            %>
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <div class="card-body">
                        <h5 class="card-title"><%= book.getName() %></h5>
                        <p class="card-text"><strong>저자:</strong> <%= book.getAuthor() %></p>
                        <p class="card-text"><strong>출판사:</strong> <%= book.getPublisher() %> | 
                        <strong>가격:</strong> <%= book.getUnitPrice() %>₩</p>
                        <p class="card-text"><%= book.getDescription().substring(0, 60) %>...</p>
                        <p class="card-text"><strong>출판일:</strong> <%= book.getReleaseDate() %></p>
                    </div>
                </div>
            </div>
            <%
            	}
            %>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

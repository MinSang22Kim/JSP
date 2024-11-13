<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.book.Book"%>
<%@ page import="com.book.BookRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddCart</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		if (id == null || id.trim().equals("")) {
			response.sendRedirect("books.jsp");
			return;
		}
	
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
		if (book == null) {
			response.sendRedirect("exceptionNoBookId.jsp");
		}
	
		ArrayList<Book> goodsList = dao.getAllBooks();
		Book goods = new Book();
		for (int i = 0; i < goodsList.size(); i++) {
			goods = goodsList.get(i);
			if (goods.getBookId().equals(id)) {
				break;
			}
		}
	
		ArrayList<Book> list = (ArrayList<Book>) session.getAttribute("cartlist");
		if (list == null) {
			list = new ArrayList<Book>();
			session.setAttribute("cartlist", list);
		}
	
		int cnt = 0;
		Book goodsQnt = new Book();
		for (int i = 0; i < list.size(); i++) {
			goodsQnt = list.get(i);
			if (goodsQnt.getBookId().equals(id)) {
				cnt++;
				long orderQuantity = goodsQnt.getUnitsInStock() + 1;
				goodsQnt.setUnitsInStock(orderQuantity);
			}
		}
	
		if (cnt == 0) {
			goods.setUnitsInStock(1);
			list.add(goods);
		}
	
		response.sendRedirect("book.jsp?id=" + id);
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.book.Book"%>
<%@ page import="com.book.BookRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processAddBook</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		// 파일 및 경로 설정
		String filename = "";
		String path = "../resources/images/books";
		
		int maxSize = 5 * 1024 * 1024;
		String encType = "utf-8";
	
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encType, new DefaultFileRenamePolicy());
	
		// 폼 데이터 가져오기
		String bookId = multi.getParameter("bookId");
		String name = multi.getParameter("name");
		String passwd = multi.getParameter("passwd");
		String unitPrice = multi.getParameter("unitPrice");
		String author = multi.getParameter("author");
		String publisher = multi.getParameter("publisher");
		String releaseDate = multi.getParameter("releaseDate");
		String description = multi.getParameter("description");
		String category = multi.getParameter("category");
		String unitsInStock = multi.getParameter("unitsInStock");
		String condition = multi.getParameter("condition");
	
		// 파일 처리
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		String fileName = multi.getFilesystemName(fname);
	
		// 가격 및 재고 수량 처리
        Integer price = unitPrice.isEmpty() ? 0 : Integer.valueOf(unitPrice);
        long stock = unitsInStock.isEmpty() ? 0 : Long.valueOf(unitsInStock);

	
		// 책 객체 생성 및 저장
		Book newBook = new Book();
		newBook.setBookId(bookId);
		newBook.setName(name);
		newBook.setUnitPrice(price);
		newBook.setAuthor(author);
		newBook.setPublisher(publisher);
		newBook.setReleaseDate(releaseDate);
		newBook.setDescription(description);
		newBook.setCategory(category);
		newBook.setUnitsInStock(stock);
		newBook.setFilename(fileName);
	
		// 데이터베이스에 저장
		BookRepository dao = BookRepository.getInstance();
		dao.addBook(newBook);
	
		// 페이지 리다이렉트
		response.sendRedirect("books.jsp");
	%>
</body>
</html>
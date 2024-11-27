<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

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

        if (unitsInStock.isEmpty())
        	stock = 0;
        else
        	stock = Long.valueOf(unitsInStock);
        
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO book VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, bookId);
		pstmt.setString(2, name);
		pstmt.setInt(3, price);
		pstmt.setString(4, author);
		pstmt.setString(5, description);
		pstmt.setString(6, publisher);
		pstmt.setString(7, category);
		pstmt.setLong(8, stock);
		pstmt.setString(9, releaseDate);
		pstmt.setString(10, condition);
		pstmt.setString(11, fileName);
		pstmt.executeUpdate();
	
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	
		// 페이지 리다이렉트
		response.sendRedirect("books.jsp");
	%>
</body>
</html>

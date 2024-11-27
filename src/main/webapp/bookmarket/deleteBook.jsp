<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 삭제</title>
</head>
<body>
	<%
	    String bookId = request.getParameter("id");
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    try {
	        String sql = "SELECT * FROM book WHERE b_id=?";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, bookId);
	        rs = pstmt.executeQuery();
	
	        if (rs.next()) {
	            sql = "DELETE FROM book WHERE b_id=?";
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, bookId);
	            pstmt.executeUpdate();
	        } else {
	            out.println("해당하는 도서가 없습니다");
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        out.println("Error: " + e.getMessage());
	    } finally {
	        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
	        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
	        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
	    }
	    response.sendRedirect("editBook.jsp?edit=delete");
	%>
</body>
</html>
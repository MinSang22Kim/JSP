<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PreparedStatement 객체로 SELECT 쿼리문 실행결과 가져오기</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
    <table width="300" border="1">
        <tr>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>이름</th>
        </tr>
        <%
            ResultSet rs = null;
            PreparedStatement pstmt = null;

            try {
                String sql = "SELECT * FROM Member";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();

                while (rs.next()) {
                    String id = rs.getString("id");
                    String pw = rs.getString("passwd");
                    String name = rs.getString("name");
        %>
        <tr>
            <td><%= id %></td>
            <td><%= pw %></td>
            <td><%= name %></td>
        </tr>
        <%
                }
            } catch (SQLException ex) {
                out.println("Member 테이블 조회에 실패했습니다.<br>");
                out.println("SQLException: " + ex.getMessage());
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException e) { }
                if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { }
                if (conn != null) try { conn.close(); } catch (SQLException e) { }
            }
        %>
    </table>
</body>
</html>
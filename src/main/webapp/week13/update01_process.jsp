<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Statement 객체로 UPDATE 쿼리문 실행결과</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
    <%
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        String name = request.getParameter("name");
        ResultSet rs = null;
        Statement stmt = null;

        try {
            String sql = "SELECT id, passwd FROM Member WHERE id = '" + id + "'";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                String rId = rs.getString("id");
                String rPasswd = rs.getString("passwd");

                if (id.equals(rId) && passwd.equals(rPasswd)) {
                    sql = "UPDATE Member SET name = '" + name + "' WHERE id = '" + id + "'";
                    stmt.execute(sql);
                    out.println("Member 테이블이 성공적으로 수정되었습니다.");
                } else {
                    out.println("입력하신 비밀번호가 일치하지 않습니다.");
                }
            } else {
                out.println("Member 테이블에 일치하는 아이디가 없습니다.");
            }
        } catch (SQLException ex) {
            out.println("SQLException: " + ex.getMessage());
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) { }
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { }
            if (conn != null) try { conn.close(); } catch (SQLException e) { }
        }
    %>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>도서 편집</title>
<script type="text/javascript">
    function deleteConfirm(id) {
        if (confirm("해당 도서를 삭제하시겠습니까?")) {
            location.href = "./deleteBook.jsp?id=" + id;
        } else {
            return;
        }
    }
</script>
</head>
<body>
	<% String edit = request.getParameter("edit"); %>
    <div class="container py-4">
        <%@ include file="menu.jsp" %>

        <div class="p-5 mb-4 bg-body-tertiary rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold">도서 편집</h1>
                <p class="col-md-8 fs-4">Book Editing</p>
            </div>
        </div>

        <%@ include file="dbconn.jsp" %>
        <div class="row align-items-md-stretch text-center">
            <%
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                String sql = "SELECT * FROM book";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
                while (rs.next()) {
            %>
                <div class="col-md-4">
                    <div class="h-100 p-2 rounded-3">
                        <img src=".resources/images/<%=rs.getString("b_filename")%>" style="width: 250px; height:350px" />
                        <p><h5><%=rs.getString("b_name")%></h5></p>
                        <p><%=rs.getString("b_author")%></p>
                        <p><%=rs.getString("b_publisher")%> | <%=rs.getString("b_unitPrice")%>원</p>
                        <p><%=rs.getString("b_description").substring(0, 60)%>...</p>
                        <p><%=rs.getString("b_unitPrice")%>원</p>
                        <% if ("update".equals(edit)) { %>
                            <a href="./updateBook.jsp?id=<%=rs.getString("b_id")%>" class="btn btn-success" role="button">수정 &raquo;</a>
                        <% } else if ("delete".equals(edit)) { %>
                            <a href="#" onclick="deleteConfirm('<%=rs.getString("b_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;</a>
                        <% } %>
                    </div>
                </div>
            <% } %>
            <% if (rs != null) rs.close(); if (pstmt != null) pstmt.close(); if (conn != null) conn.close(); %>
        </div>
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>

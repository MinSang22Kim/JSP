<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>도서 수정</title>
</head>
<body>
    <div class="container py-4">
        <%@ include file="menu.jsp" %>

        <div class="p-5 mb-4 bg-body rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold">도서 수정</h1>
                <p class="col-md-8 fs-4">Book Editing</p>
            </div>
        </div>

        <%@ include file="dbconn.jsp" %>
        <%
            String bookId = request.getParameter("id");
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            String sql = "SELECT * FROM book WHERE b_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bookId);
            rs = pstmt.executeQuery();
            if (rs.next()) {
        %>
                <div class="row align-items-md-stretch">
                    <div class="col-md-5">
                        <img src="./resources/images/<%= rs.getString("b_filename") %>" alt="image" style="width: 100%" />
                    </div>
                    <div class="col-md-7">
                        <form name="newBook" action="./processUpdateBook.jsp" method="post" enctype="multipart/form-data">
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">도서코드</label>
                                <div class="col-sm-5">
                                    <input type="text" name="bookId" id="bookId" class="form-control" value="<%= rs.getString("b_id") %>">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">도서명</label>
                                <div class="col-sm-5">
                                    <input type="text" name="name" id="name" class="form-control" value="<%= rs.getString("b_name") %>">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">가격</label>
                                <div class="col-sm-5">
                                    <input type="text" name="unitPrice" id="unitPrice" class="form-control" value="<%= rs.getString("b_unitPrice") %>">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">저자</label>
                                <div class="col-sm-5">
                                    <input type="text" name="author" class="form-control" value="<%= rs.getString("b_author") %>">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">출판사</label>
                                <div class="col-sm-5">
                                    <input type="text" name="publisher" class="form-control" value="<%= rs.getString("b_publisher") %>">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">분류</label>
                                <div class="col-sm-5">
                                    <input type="text" name="category" class="form-control" value="<%= rs.getString("b_category") %>">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">재고수량</label>
                                <div class="col-sm-5">
                                    <input type="text" name="unitsInStock" class="form-control" value="<%= rs.getString("b_unitsInStock") %>">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">설명</label>
                                <div class="col-sm-8">
                                    <textarea name="description" id="description" cols="50" rows="2" class="form-control" placeholder="100자 이상 작성해주세요"><%= rs.getString("b_description") %></textarea>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <input type="submit" class="btn btn-primary" value="수정">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
        <%
            }
            rs.close();
            pstmt.close();
            conn.close();
        %>
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>

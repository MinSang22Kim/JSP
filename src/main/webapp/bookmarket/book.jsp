<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.book.Book"%>
<%@ page import="com.book.BookRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script type="text/javascript">
   function addToCart() {
      if (confirm("도서를 장바구니에 추가하시겠습니까?")) {
         document.addForm.submit();
      } else {
         document.addForm.reset();
      }
   }
</script>
<title>도서 정보</title>
</head>
<body>
   <div class="container py-4">
      <%@ include file="menu.jsp"%>

      <div class="p-5 mb-4 bg-body-tertiary rounded-3">
         <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">도서 정보</h1>
            <p class="col-md-8 fs-4">BookInfo</p>
         </div>
      </div>
      <%
          String id = request.getParameter("id");
          if (id == null || id.trim().isEmpty()) {
              out.println("유효하지 않은 도서 ID입니다.");
              return;
          }

          BookRepository dao = BookRepository.getInstance();
          Book book = dao.getBookById(id);
          if (book == null) {
              out.println("해당 도서를 찾을 수 없습니다.");
              return;
          }
      %>

      <div class="row align-items-md-stretch">
         <div class="col-md-5">
            <img src="../resources/images/<%=book.getFilename()%>" style="width:70%" />
         </div>
         <div class="col-md-12">
            <h3><b><%=book.getName() %></b></h3>
            <p><%=book.getDescription() %></p>
            <p><b>도서코드:</b> <span class="badge text-bg-danger"><%=book.getBookId() %></span></p>
            <p><b>저자</b>: <%=book.getAuthor() %></p>
            <p><b>출판사</b>: <%=book.getPublisher() %></p>
            <p><b>출판일</b>: <%=book.getReleaseDate() %></p>
            <p><b>분류</b>: <%=book.getCategory() %></p>
            <p><b>재고</b>: <%=book.getUnitsInStock() %></p>
            <h4><%=book.getUnitPrice() %>원</h4>
            <form name="addForm" action="./addCart.jsp?id=<%= book.getBookId() %>" method="post">
               <a href="#" class="btn btn-info" onclick="addToCart()">도서주문 &raquo;</a>
               <a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
               <a href="./books.jsp" class="btn btn-secondary">도서 목록 &raquo;</a>
            </form>
         </div>
      </div>
      <jsp:include page="footer.jsp" />
   </div>
</body>
</html>

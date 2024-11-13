<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<title>Book Market</title>
</head>
<body>
	<!-- Header Section -->
	<header class="pb-3 mb-4 border-bottom">
		<a href="./welcome.jsp" class="d-flex align-items-center text-dark text-decoration-none">
			<svg width="32" height="32" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
				<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z" />
				<path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z" />
			</svg> 
			<span class="fs-4">Home</span>
		</a>
	</header>

	<!-- Navbar Section -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="./addBook.jsp">도서추가</a></li>
					<li class="nav-item"><a class="nav-link" href="./cart.jsp">장바구니</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>
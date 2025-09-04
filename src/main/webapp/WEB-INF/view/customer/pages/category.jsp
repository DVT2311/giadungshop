<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/css/css.css">
</head>
<body>
	<jsp:include page="../layout/header.jsp" />

	<div class="container-fluid p-5">
		<div class="container-title">
			<div class="category">
				<h2 class="section-title" style="">${category.name}</h2>
			</div>
			<div class="price-filter">
				<label class="lb-filter" for="sort-by">Sắp xếp theo:</label> <select
					id="sort-by" name="sort-by" class="select-sort">
					<option value="new">Mới nhất</option>
					<option value="asc">Tăng dần</option>
					<option value="desc">Giảm dần</option>
				</select>
			</div>
		</div>
		<div class="row g-4">
			<c:forEach var="products" items="${products}">
				<div class="product col-6 col-sm-4 col-md-3">
					<div class="product-block">
						<div class="product-img">
							<a href="/product/${products.id}"> <img
								src="/images/product/${products.image}"
								class="img-fluid rounded" />
							</a>
						</div>
						<div class="product-detail">
							<a href="/product/${products.id}" class="product-detail-link">
								<p>${products.name}</p>
								<h5>${products.price}₫</h5>
							</a>
						</div>
						<div class="product-action">
							<a href="#" class="product-action-cart add-to-cart "
								data-id="${products.id}" data-name="${products.name}"
								data-price="${products.price}"
								data-image="/images/product/${products.image}" data-quantity="1">
								<i class="fa-solid fa-cart-shopping add-to-cart"></i> Thêm vào
								giỏ hàng
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<div class="paginator">
			<div class="paginator-block">
				<ul id="pagination" class="pagination"></ul>
			</div>
		</div>
	</div>

	<jsp:include page="../layout/footer.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.js"></script>
	<script src="/js/index.js"></script>
	<script src="/js/cart.js"></script>
</body>
</html>
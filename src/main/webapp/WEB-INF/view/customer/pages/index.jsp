<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<title>Trang chủ</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />

	<!-- Banner -->
	<div class="banner-home">
		<img src="/images/banner/banner.png" class="img-fluid" />
	</div>

	<!-- Top 8 sản phẩm mới nhất -->
	<div class="container-fluid p-5">
		<div>
			<h2 class="section-title">Sản phẩm mới nhất</h2>
		</div>
		<div class="row g-4">
			<c:forEach var="product" items="${top8Pro}">
				<div class="product col-6 col-sm-4 col-md-3">
					<div class="product-block">
						<div class="product-img">
							<a href="/product/${product.id}"> <img
								src="/images/product/${product.image}" class="img-fluid rounded" />
							</a>
						</div>
						<div class="product-detail">
							<a href="/product/${product.id}" class="product-detail-link">
								<p>${product.name}</p>
								<h5>
									<fmt:formatNumber value="${product.price}" type="number"
										groupingUsed="true" /> ₫
								</h5>

							</a>
						</div>
						<div class="product-action">
							<a href="#" class="product-action-cart add-to-cart"
								data-id="${product.id}" data-name="${product.name}"
								data-price="${product.price}"
								data-image="/images/product/${product.image}" data-quantity="1">
								<i class="fa-solid fa-cart-shopping"></i> Thêm vào giỏ hàng
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<c:forEach var="category" items="${categories}">
		<!-- Lấy danh sách sản phẩm của category hiện tại -->
		<c:set var="productsOfCategory"
			value="${categoryProducts[category.id]}" />

		<!-- Chỉ hiển thị nếu có sản phẩm -->
		<c:if test="${not empty productsOfCategory}">
			<div class="container-fluid p-5">
				<div>
					<a href="/category/${category.id}" class="section-title-link">
						<h2 class="section-title">${category.name}</h2>
					</a>
				</div>

				<div class="row g-4">
					<c:forEach var="product" items="${productsOfCategory}">
						<div class="product col-6 col-sm-4 col-md-3">
							<div class="product-block">
								<div class="product-img">
									<a href="/product/${product.id}"> <img
										src="/images/product/${product.image}"
										class="img-fluid rounded" />
									</a>
								</div>
								<div class="product-detail">
									<a href="/product/${product.id}" class="product-detail-link">
										<p>${product.name}</p>
										<h5>
											<fmt:formatNumber value="${product.price}" type="number"
												groupingUsed="true" />
											₫
										</h5>

									</a>
								</div>
								<div class="product-action">
									<a href="#" class="product-action-cart add-to-cart"
										data-id="${product.id}" data-name="${product.name}"
										data-price="${product.price}"
										data-image="/images/product/${product.image}"
										data-quantity="1"> <i class="fa-solid fa-cart-shopping"></i>
										Thêm vào giỏ hàng
									</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</c:if>
	</c:forEach>


	<!-- Policy -->
	<div class="policy p-5">
		<div class="policy-item">
			<div>
				<img src="/images/index/policy3.svg" width="60" height="60" />
			</div>
			<div>
				<p class="policy-item-title">Thương hiệu đảm bảo</p>
				<p>Nhập khẩu, bảo hành chính hãng</p>
			</div>
		</div>
		<div class="policy-item">
			<div>
				<img src="/images/index/policy4.svg" width="60" height="60" />
			</div>
			<div>
				<p class="policy-item-title">Đổi trả dễ dàng</p>
				<p>Theo chính sách đổi trả tại Gia dụng 47</p>
			</div>
		</div>
		<div class="policy-item">
			<div>
				<img src="/images/index/policy2.svg" width="60" height="60" />
			</div>
			<div>
				<p class="policy-item-title">Sản phẩm chất lượng</p>
				<p>Đảm bảo tương thích và độ bền cao</p>
			</div>
		</div>
		<div class="policy-item">
			<div>
				<img src="/images/index/policy1.svg" width="60" height="60" />
			</div>
			<div>
				<p class="policy-item-title">Giao hàng tận nơi</p>
				<p>Tại khu vực TP.HCM</p>
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

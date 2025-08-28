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

	<div>
		<div class="banner-home">
			<img src="/images/banner/banner.png" />
		</div>
		<div class="container-fluid p-5">
			<div>
				<a href="/shop/best-selling" class="section-title-link">
					<h2 class="section-title">Sản phẩm mới nhất</h2>
				</a>
			</div>
			<div class="row g-4">
				<c:forEach var="top8Pro" items="${top8Pro}">
					<div class="product col-6 col-sm-4 col-md-3">
						<div class="product-block">
							<div class="product-img">
								<a href="/product/${top8Pro.id}"> <img
									src="/images/product/${top8Pro.image}"
									class="img-fluid rounded" />
								</a>
							</div>
							<div class="product-detail">
								<a href="/product/${top8Pro.id}" class="product-detail-link">
									<p>${top8Pro.name}</p>
									<h5>${top8Pro.price}₫</h5>
								</a>
							</div>
							<div class="product-action">
								<a href="#" class="product-action-cart add-to-cart "
									data-id="${top8Pro.id}" data-name="${top8Pro.name}"
									data-price="${top8Pro.price}"
									data-image="/images/product/${top8Pro.image}" data-quantity="1">
									<i class="fa-solid fa-cart-shopping add-to-cart"></i> Thêm vào
									giỏ hàng
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="container-fluid p-5">
			<div>
				<a href="/shop/best-selling" class="section-title-link">
					<h2 class="section-title">Đồ dùng ăn uống</h2>
				</a>
			</div>
			<div class="row g-4">
				<c:forEach var="anUong" items="${anUong}">
					<div class="product col-6 col-sm-4 col-md-3">
						<div class="product-block">
							<div class="product-img">
								<a href="/product/${anUong.id}"> <img
									src="/images/product/${anUong.image}" class="img-fluid rounded" />
								</a>
							</div>
							<div class="product-detail">
								<a href="/product/${anUong.id}" class="product-detail-link">
									<p>${anUong.name}</p>
									<h5>${anUong.price}₫</h5>
								</a>
							</div>
							<div class="product-action">
								<a href="#" class="product-action-cart add-to-cart "
									data-id="${anUong.id}" data-name="${anUong.name}"
									data-price="${anUong.price}"
									data-image="/images/product/${anUong.image}" data-quantity="1">
									<i class="fa-solid fa-cart-shopping add-to-cart"></i> Thêm vào
									giỏ hàng
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="container-fluid p-5">
			<div>
				<a href="/shop/best-selling" class="section-title-link">
					<h2 class="section-title">Dụng cụ nhà bếp</h2>
				</a>
			</div>
			<div class="row g-4">
				<c:forEach var="nhaBep" items="${anUong}">
					<div class="product col-6 col-sm-4 col-md-3">
						<div class="product-block">
							<div class="product-img">
								<a href="/product/${anUong.id}"> <img
									src="/images/product/${anUong.image}" class="img-fluid rounded" />
								</a>
							</div>
							<div class="product-detail">
								<a href="/product/${anUong.id}" class="product-detail-link">
									<p>${anUong.name}</p>
									<h5>${anUong.price}₫</h5>
								</a>
							</div>
							<div class="product-action">
								<a href="#" class="product-action-cart add-to-cart "
									data-id="${anUong.id}" data-name="${anUong.name}"
									data-price="${anUong.price}"
									data-image="/images/product/${anUong.image}" data-quantity="1">
									<i class="fa-solid fa-cart-shopping add-to-cart"></i> Thêm vào
									giỏ hàng
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="container-fluid p-5">
			<div>
				<a href="/shop/best-selling" class="section-title-link">
					<h2 class="section-title">Vệ sinh và phòng tắm</h2>
				</a>
			</div>
			<div class="row g-4">
				<c:forEach var="veSinh" items="${veSinh}">
					<div class="product col-6 col-sm-4 col-md-3">
						<div class="product-block">
							<div class="product-img">
								<a href="/product/${veSinh.id}"> <img
									src="/images/product/${veSinh.image}" class="img-fluid rounded" />
								</a>
							</div>
							<div class="product-detail">
								<a href="/product/${veSinh.id}" class="product-detail-link">
									<p>${veSinh.name}</p>
									<h5>${veSinh.price}₫</h5>
								</a>
							</div>
							<div class="product-action">
								<a href="#" class="product-action-cart add-to-cart "
									data-id="${veSinh.id}" data-name="${veSinh.name}"
									data-price="${veSinh.price}"
									data-image="/images/product/${veSinh.image}" data-quantity="1">
									<i class="fa-solid fa-cart-shopping add-to-cart"></i> Thêm vào
									giỏ hàng
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="container-fluid p-5">
			<div>
				<a href="/shop/best-selling" class="section-title-link">
					<h2 class="section-title">Đồ tạp hóa</h2>
				</a>
			</div>
			<div class="row g-4">
				<c:forEach var="tapHoa" items="${tapHoa}">
					<div class="product col-6 col-sm-4 col-md-3">
						<div class="product-block">
							<div class="product-img">
								<a href="/product/${tapHoa.id}"> <img
									src="/images/product/${tapHoa.image}" class="img-fluid rounded" />
								</a>
							</div>
							<div class="product-detail">
								<a href="/product/${tapHoa.id}" class="product-detail-link">
									<p>${tapHoa.name}</p>
									<h5>${tapHoa.price}₫</h5>
								</a>
							</div>
							<div class="product-action">
								<a href="#" class="product-action-cart add-to-cart "
									data-id="${tapHoa.id}" data-name="${tapHoa.name}"
									data-price="${tapHoa.price}"
									data-image="/images/product/${tapHoa.image}" data-quantity="1">
									<i class="fa-solid fa-cart-shopping add-to-cart"></i> Thêm vào
									giỏ hàng
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

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
	</div>

	<jsp:include page="../layout/footer.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.js"></script>
	<script src="js/index.js"></script>
	<script src="js/cart.js"></script>
</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link href="/css/css.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="../layout/header.jsp" />

	<div>
		<div class="banner-home">
			<img src="/images/banner/20240731_czjnMnEv.png" />
		</div>
		<div class="container-fluid">
			<div>
				<a href="/shop/best-selling" class="section-title-link">
					<h2 class="section-title">Sản phẩm bán chạy</h2>
				</a>
			</div>
			<div class="section-product">
				<c:forEach var="top8Pro" items="${top8Pro}">
					<div class="product">
						<div class="product-block">
							<div class="product-img">
								<a href="/product/${top8Pro.id}"> <img
									src="/images/product/${top8Pro.image}" />
								</a>
							</div>
							<div class="product-detail">
								<a href="/product/${top8Pro.id}" class="product-detail-link">
									<p>${top8Pro.name}</p>
									<h3>${top8Pro.price}₫</h3>
								</a>
							</div>
							<div class="product-action">
								<a href="#" class="product-action-cart add-to-cart"> <i
									class="fa-solid fa-cart-shopping"></i> Thêm vào giỏ hàng
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="policy">
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

	

	<script src="js/index.js"></script>
</body>
</html>

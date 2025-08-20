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
		<div class="container">
			<div class="product-detail-wrapper">
				<div class="product-detail-main">
					<div class="product-detail-left">
						<div class="product-content-top">
							<div class="detail-img-related">
								<div class="thumbnails small-img">
									<div class="thumbnail">
										<img
											src="../images/upload/20201204_mokX4M3opHoupYgU0Qzmui1Q.jpg"
											alt="Ảnh 1">
									</div>
									<div class="thumbnail">
										<img src="../images/upload/20231002_JiGReqEMAV.jpeg"
											alt="Ảnh 2">
									</div>
									<div class="thumbnail">
										<img src="../images/upload/20231104_pKsUdfHZww.jpeg"
											alt="Ảnh 3">
									</div>
								</div>
							</div>
							<div class="product-img-box">
								<img id="main-image"
									src="../images/upload/20201204_mokX4M3opHoupYgU0Qzmui1Q.jpg"
									alt="Sản phẩm">
							</div>
						</div>
						<div class="product-content-bottom">
							<div class="product-content">
								<p>
									Tên Sản Phẩm: <strong>Túi 100 Mũ Nilon Bao Trùm Tóc
										Khi Tắm Hoặc Ủ Tóc Tiện Lợi</strong>
								</p>
								<p>Chất liệu: PE - Nhựa trong suốt</p>
								<p>Quy cách: Combo 100 Mũ Trùm Đầu</p>
								<p>Giữ cho mái tóc của bạn khô ráo với những chiếc mũ tắm
									trong suốt dùng một lần</p>
								<p>Dùng để ủ tóc hấp dầu dưỡng tóc tại nhà, chụp tóc khi
									tắm, ngăn nước, tránh bị gãy tóc khi kẹp...</p>
								<p>Một sản phẩm tuyệt vời để giữ trong tủ quần áo quanh năm</p>
								<p>Sử dụng chất liệu gọn nhẹ, thiết kế sẵn chun nên sử dụng
									rất dễ dàng, chỉ cần trùm lên đầu là xong</p>
							</div>
						</div>
					</div>
					<div class="product-detail-right">
						<!-- Thông tin sản phẩm -->
						<div class="product-title">
							<h3>Màng Bọc Thực Phẩm GẤU</h3>
							<p>
								Mã sản phẩm: <strong>ABC123</strong>
							</p>
							<p class="product-status">
								Trạng thái: <strong>Còn hàng</strong>
							</p>
						</div>
						<div class="product-price">
							Giá thành: <strong>5.500 ₫</strong>
						</div>
						<form>
							<div style="display: none;">5.500 ₫</div>
							<div class="selector-action">
								<input type="button" class="btn-quantity" id="btn-decrease"
									value="-"> <input type="text" class="txt-quantity"
									id="quantity" name="quantity" value="1" max="0" readonly>
								<input type="button" class="btn-quantity" id="btn-increase"
									value="+">
							</div>
							<div class="stock-info">Có thể bán: 0</div>
							<div class="btn-group">
								<button type="button" class="btn-black add-to-cart">Thêm
									vào giỏ hàng</button>
								<button type="button" class="btn-black">Mua ngay</button>
							</div>
						</form>
						<div class="product-infor">
							<ul class="policy-product">
								<li><img src="../images/policy5.png" alt=""> <span
									class="policy-info">
										<h4>Giao hàng toàn quốc</h4>
										<p>(Free ship đơn từ 3,000,000đ trong bán kính 7km)</p>
								</span></li>
								<li><img src="../images/policy6.png" alt=""> <span
									class="policy-info">
										<h4>Dịch vụ đảm bảo</h4>
										<p>(Miễn phí đổi trả nếu lỗi do nhà sản xuất hoặc vận
											chuyển)</p>
								</span></li>
								<li><img src="../images/policy7.png" alt=""> <span
									class="policy-info">
										<h4>Tổng đài bán hàng 0123.456.789</h4>
										<p>(Làm việc từ 8h30 - 17:30 T2 - T7)</p>
								</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="review-box"></div>
				<div class="more-product">
					<h3>Sản phẩm liên quan</h3>
					<div class="product-related">
						<div class="product-related-block">
							<div class="product-items">
								<div class="product-items-block">
									<a class="product-items-link" href="#">
										<div class="product-related-img">
											<img src="../images/upload/20231104_pKsUdfHZww.jpeg" alt="">
										</div>
										<div class="product-detail">
											<p>Miếng tròn rửa bát 2 mặt XÁM</p>
											<h3>3.500 ₫</h3>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="product-related-block">
							<div class="product-items">
								<div class="product-items-block">
									<div class="product-related-img">
										<img src="../images/upload/20231104_pKsUdfHZww.jpeg" alt="">
									</div>
									<div class="product-detail">
										<a href="#" class="product-detail-link">
											<p>Miếng tròn rửa bát 2 mặt XÁM</p>
											<h3>3.500 ₫</h3>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="product-related-block">
							<div class="product-items">
								<div class="product-items-block">
									<div class="product-related-img">
										<img src="../images/upload/20231104_pKsUdfHZww.jpeg" alt="">
									</div>
									<div class="product-detail">
										<a href="#" class="product-detail-link">
											<p>Miếng tròn rửa bát 2 mặt XÁM</p>
											<h3>3.500 ₫</h3>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="product-related-block">
							<div class="product-items">
								<div class="product-items-block">
									<div class="product-related-img">
										<img src="../images/upload/20231104_pKsUdfHZww.jpeg" alt="">
									</div>
									<div class="product-detail">
										<a href="#" class="product-detail-link">
											<p>Miếng tròn rửa bát 2 mặt XÁM</p>
											<h3>3.500 ₫</h3>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../layout/footer.jsp" />

	<jsp:include page="../layout/sidebar.jsp" />

	<script src="js/index.js"></script>
</body>
</html>

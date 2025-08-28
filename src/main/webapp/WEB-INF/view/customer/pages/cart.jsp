<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ hàng</title>
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
		<h2 class="mb-4 text-center">🛒 Giỏ hàng của bạn</h2>
		<div class="row g-4">

			<!-- Danh sách sản phẩm -->
			<div class="col-lg-8">
				<div class="card shadow-sm">
					<div class="card-body">
						<table class="table table-bordered align-middle cart-table">
							<thead class="table-light text-center">
								<tr>
									<th>Sản phẩm</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
									<th>Thao tác</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="total" value="0" />
								<c:forEach var="item" items="${cart.items}">
									<c:set var="lineTotal" value="${item.price * item.quantity}" />
									<c:set var="total" value="${total + lineTotal}" />

									<tr>
										<td>
											<div class="d-flex align-items-center">
												<img src="${item.image}" alt="${item.name}">
												<a href="/product/${item.id}" class="text-dark text-decoration-none">
												    <span class="ms-3">${item.name}</span>
												</a>
											</div>
										</td>
										<td class="text-center">${item.price}đ</td>
										<td class="text-center">
											<div
												class="quantity-control d-flex align-items-center justify-content-center">
												<button class="btn btn-sm btn-outline-secondary">-</button>
												<input type="text" value="${item.quantity}"
													class="form-control text-center mx-1" style="width: 60px;">
												<button class="btn btn-sm btn-outline-secondary">+</button>
											</div>
										</td>
										<td class="text-center"><strong>${lineTotal} đ</strong></td>
										<td class="text-center"><a
											href="/cart/remove?id=${item.id}" class="text-danger"> <i
												class="fa fa-trash"></i> Xóa
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<c:if test="${empty cart.items}">
							<p class="text-center text-muted">Giỏ hàng của bạn đang trống.</p>
						</c:if>
					</div>
				</div>
			</div>

			<!-- Tóm tắt đơn hàng -->
			<div class="col-lg-4">
				<div class="summary-box card shadow-sm p-3">
					<h5>Tóm tắt đơn hàng</h5>
					<hr>
					<div class="d-flex justify-content-between mb-2">
						<span>Tạm tính</span> <strong>${total} đ</strong>
					</div>
					<div class="d-flex justify-content-between mb-2">
						<span>Phí vận chuyển</span> <strong>15.000 đ</strong>
					</div>
					<hr>
					<div class="d-flex justify-content-between mb-3">
						<span>Tổng cộng</span> <strong class="text-danger fs-5">${total + 15000}
							đ</strong>
					</div>
					<button class="btn btn-checkout w-100 py-2">
						<i class="fa fa-credit-card"></i> Thanh toán
					</button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../layout/footer.jsp" />

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.js"></script>
	<script src="/js/cart.js"></script>
</body>
</html>

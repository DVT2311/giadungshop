<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="header">
	<div class="top-header">
		<div class="d-flex align-items-center">
			<i class="fa-solid fa-phone"></i> <span class="txt-top">0358708384</span>
		</div>
		<ul class="nav">
			<li class="nav-item"><a class="nav-link" href="/login">
					<i class="fa-solid fa-user"></i> <span class="txt-top">Tài
						khoản</span>
			</a></li>
			<li class="nav-item"><a id="cart-icon" class="nav-link"
				href="/cart/view"> <i class="fa-solid fa-cart-shopping"></i> <span
					class="txt-top">Giỏ hàng</span> <span id="cart-count"
					style="color: red">(0)</span>
			</a></li>
		</ul>
	</div>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-light custom-navbar sticky-top">
		<div class="container-fluid">
			<!-- Logo -->
			<a class="navbar-brand" href="/"> <img
				src="/images/index/logo-shop.png" width="180" alt="Logo Shop">
			</a>

			<!-- Toggle button mobile -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mainNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Menu -->
			<div class="collapse navbar-collapse" id="mainNavbar">
				<ul class="navbar-nav mx-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="/about">Giới
							thiệu</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						data-bs-toggle="dropdown">Sản phẩm</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="/category/do-dung-an-uong">Đồ dùng ăn uống</a></li>
							<li><a class="dropdown-item"
								href="/category/dung-cu-nha-bep">Dụng cụ nhà bếp</a></li>
							<li><a class="dropdown-item"
								href="/category/ve-sinh-va-phong-tam">Vệ sinh và phòng tắm</a></li>
							<li><a class="dropdown-item" href="/category/do-tap-hoa">Đồ
									tạp hóa</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="/contact">Liên
							hệ</a></li>
				</ul>

				<!-- Search -->
				<form class="d-flex form-search">
					<input type="text" class="txt-search" placeholder="Tìm kiếm...">
					<input type="submit" class="form-submit">
				</form>
			</div>
		</div>
	</nav>
</div>
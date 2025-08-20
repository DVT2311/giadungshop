<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="header">
	<div>
		<div class="top-header">
			<div class="top-left">
				<i class="fa-solid fa-phone"></i> <span class="txt-top">0358708384</span>
			</div>
			<div class="top-right">
				<ul class="navbar">
					<li><a class="navbar-link" href="/login"> <i
							class="fa-solid fa-user"></i> <span class="txt-top">Tài
								khoản</span>
					</a></li>
					<li><a id="cart-icon" class="navbar-link product-action-cart"
						href="/cart/view"> <i class="fa-solid fa-cart-shopping"></i> <span
							class="txt-top">Giỏ hàng</span> <span id="cart-count"
							style="color: red">(0)</span>
					</a></li>
				</ul>
			</div>
		</div>

		<div class="menu-header">
			<div class="menu">
				<div class="menu-left">
					<a href="#"><img src="/images/index/logo-shop.png" width="225"
						height="45" /></a>
				</div>
				<div class="menu-center">
					<div class="navbar-mobile">
						<i class="fa-solid fa-bars"></i>
					</div>
					<nav>
						<ul class="navbar">
							<li><a class="navbar-link" href="index.html">Giới thiệu</a></li>
							<li><a class="navbar-link" href="pages/products.html">Sản
									phẩm</a>
								<ul class="submenu">
									<li><a href="/category/do-dung-an-uong"
										class="submenu-link">Đồ dùng ăn uống</a></li>
									<li><a href="/category/dung-cu-nha-bep"
										class="submenu-link">Dụng cụ nhà bếp</a></li>
									<li><a href="/category/ve-sinh-va-phong-tam"
										class="submenu-link">Vệ sinh và phòng tắm</a></li>
									<li><a href="/category/do-tap-hoa" class="submenu-link">Đồ
											tạp hóa</a></li>
								</ul></li>
							<li><a class="navbar-link" href="/shop/sale">Ưu đãi</a></li>
							<li><a class="navbar-link" href="/shop/contact">Liên hệ</a></li>
						</ul>
					</nav>
				</div>
				<div class="menu-right">
					<div class="navbar-mobile">
						<i class="fa-solid fa-magnifying-glass"></i>
					</div>
					<form clas="form-search">
						<input type="text" class="txt-search" placeholder='Tìm kiếm...' />
						<input type=submit " class="form-submit" />
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

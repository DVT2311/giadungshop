<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
    <div class="container">
        <a href="/"><img src="../images/logo-shop.png"></a>

        <h2>Đăng ký tài khoản</h2>
        <form class="main-form">
            <div class="form-group">
                <label for="username">Tên đăng nhập</label>
                <input type="text" id="username" placeholder="Nhập tên đăng nhập" required>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu</label>
                <input type="password" id="password" placeholder="Nhập mật khẩu" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Xác nhận mật khẩu</label>
                <input type="password" id="confirm-password" placeholder="Nhập lại mật khẩu" required>
            </div>
            <div class="form-group">
                <label for="fullname">Họ và tên</label>
                <input type="text" id="fullname" placeholder="Nhập họ và tên" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" placeholder="Nhập email" required>
            </div>
            <button type="submit" class="btn-form">Đăng ký</button>
            <div class="other-option">
                <p class="login-link">Đã có tài khoản? <a href="login.html">Đăng nhập</a></p>
            </div>
        </form>
    </div>
</body>
</html>
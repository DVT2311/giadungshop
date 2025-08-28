<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/css/login.css">
</head>
<body>

<div class="container">
    <a href="/"><img src="/images/index/logo-shop.png"></a>

    <h2>Đăng nhập</h2>

    <form action="#" method="POST" class="main-form">
        <div class="form-group">
            <label for="username"><i class="fa-solid fa-user"></i> Tên đăng nhập</label>
            <input type="text" id="username" name="username" placeholder="Nhập tên đăng nhập" required>
        </div>

        <div class="form-group">
            <label for="password"><i class="fa-solid fa-lock"></i> Mật khẩu</label>
            <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required>
        </div>

        <button type="submit" class="btn-form">Đăng nhập</button>

        <div class="form-group other-option">
            <a href="#">Quên mật khẩu?</a> |
            <a href="/register">Đăng ký</a>
        </div>
    </form>
</div>

</body>
</html>
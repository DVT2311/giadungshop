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
        <div class="container-fluid">
            <div class="container-title">
                <div class="category">
                    <h2 class="section-title">Giỏ hàng</h2>
                </div>
            </div>
            
            <div class="section-product">
                <table>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Hình ảnh</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                    </tr>
                    <c:forEach var="item" items="${cart.items}">
                    <tr>
                        <td>${item.name}</td>
                        <td><img src="/images/product/${item.image}" width="200px" height="200px" ></td>
                        <td>${item.price}</td>
                        <td>${item.quantity}</td>
                        <td>${item.price * item.quantity}</td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>

    <jsp:include page="../layout/footer.jsp" />

    <jsp:include page="../layout/sidebar.jsp" />

    <script src="/js/index.js"></script>
</body>
</html>
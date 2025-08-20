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
                    <h2 class="section-title" style="visibility: hidden;">${category}</h2>
                </div>
                <div class="price-filter">
                    <label class="lb-filter" for="sort-by">Sắp xếp theo:</label>
                    <select id="sort-by" name="sort-by" class="select-sort">
                        <option value="new">Mới nhất</option>
                        <option value="asc">Tăng dần</option>
                        <option value="desc">Giảm dần</option>
                    </select>
                </div>
            </div>
            
            <div class="section-product">
                <c:forEach var="products" items="${products}">
                <div class="product">
                    <div class="product-block">
                        <div class="product-img">
                            <a href="/product/${products.id}">
                                <img src="/images/product/${products.image}"/>
                            </a>
                        </div>
                        <div class="product-detail">
                            <a href="/product/${products.id}" class="product-detail-link">
                                <p>${products.name}</p>
                                <h3>${products.price} ₫</h3>
                            </a>
                        </div>
                        <div class="product-action">
                            <form action="/cart/add" method="post">
                                <input type="hidden" name="id" value="${products.id}">
                                <input type="hidden" name="name" value="${products.name}">
                                <input type="hidden" name="image" value="${products.image}">
                                <input type="hidden" name="price" value="${products.price}">
                                <input type="hidden" name="quantity" value="1">
                                <button type="submit" class="product-action-cart">
                                    <i class="fa-solid fa-cart-shopping"></i>
                                    Thêm vào giỏ hàng
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
                <div class="paginator">
                    <div class="paginator-block">
                        <ul id="pagination" class="pagination"></ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../layout/footer.jsp" />

    <jsp:include page="../layout/sidebar.jsp" />

    <script src="/js/index.js"></script>
</body>
</html>
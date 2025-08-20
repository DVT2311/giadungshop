// product detail
document.addEventListener("DOMContentLoaded", function () {
    const mainImage = document.getElementById("main-image");
    const thumbnails = document.querySelectorAll(".thumbnail img");

    // Mặc định chọn hình đầu tiên
    if (thumbnails.length > 0) {
        thumbnails[0].classList.add("active-thumbnail");
        mainImage.setAttribute("src", thumbnails[0].getAttribute("src"));
    }

    thumbnails.forEach(thumbnail => {
        thumbnail.addEventListener("click", function () {
            const newSrc = this.getAttribute("src");
            mainImage.setAttribute("src", newSrc);

            thumbnails.forEach(img => img.classList.remove("active-thumbnail"));
            this.classList.add("active-thumbnail");
        });
    });
});

function initPaginator(totalPages) {
    // Lấy page hiện tại từ URL (?page=...)
    const urlParams = new URLSearchParams(window.location.search);
    let currentPage = parseInt(urlParams.get('page')) || 1;

    function renderPaginator(total, current) {

        const pagination = document.getElementById('pagination');
        pagination.innerHTML = '';

        // Nút prev «
        if (current > 1) {
        const liPrev = document.createElement('li');
        const aPrev = document.createElement('a');
        aPrev.href = '?page=' + (current - 1);
        aPrev.textContent = '«';
        liPrev.appendChild(aPrev);
        pagination.appendChild(liPrev);
        }

        // Các số trang
        for (let i = 1; i <= total; i++) {
        const li = document.createElement('li');
        if (i === current) {
            const span = document.createElement('span');
            span.textContent = i;
            span.classList.add('current');
            li.appendChild(span);
        } else {
            const a = document.createElement('a');
            a.href = '?page=' + i;
            a.textContent = i;
            li.appendChild(a);
        }
        pagination.appendChild(li);
        }

        // Nút next »
        if (current < total) {
        const liNext = document.createElement('li');
        const aNext = document.createElement('a');
        aNext.href = '?page=' + (current + 1);
        aNext.textContent = '»';
        liNext.appendChild(aNext);
        pagination.appendChild(liNext);
        }
    }

    renderPaginator(totalPages, currentPage);
}

/*
function setupQuantityControls(decreaseBtnId, increaseBtnId, inputId, min = 1, max = 10) {
    const btnDecrease = document.getElementById(decreaseBtnId);
    const btnIncrease = document.getElementById(increaseBtnId);
    const quantityInput = document.getElementById(inputId);

    btnDecrease.addEventListener('click', () => {
        let current = parseInt(quantityInput.value) || min;
        if (current > min) {
            quantityInput.value = current - 1;
        }
    });

    btnIncrease.addEventListener('click', () => {
        let current = parseInt(quantityInput.value) || min;
        if (current < max) {
            quantityInput.value = current + 1;
        }
    });
}


document.addEventListener("DOMContentLoaded", function () {
    const cartIcon = document.getElementById("cart-icon");
    const cartSidebar = document.getElementById("cart-sidebar");
    const closeCart = document.getElementById("close-cart");
    const overlay = document.getElementById("cart-overlay");
    const cartCount = document.getElementById("cart-count");
    const addToCartButtons = document.querySelectorAll(".add-to-cart");
    const cartItemsContainer = document.getElementById("cart-items");

    let cart = [];

    // Mở giỏ hàng
    cartIcon.addEventListener("click", function (e) {
        e.preventDefault();
        cartSidebar.classList.add("active");
        overlay.classList.add("active");
    });

    // Đóng giỏ hàng
    closeCart.addEventListener("click", closeSidebar);
    overlay.addEventListener("click", closeSidebar);

    function closeSidebar() {
        cartSidebar.classList.remove("active");
        overlay.classList.remove("active");
    }

    // Xử lý thêm sản phẩm vào giỏ
    addToCartButtons.forEach(button => {
        button.addEventListener("click", function (e) {
            e.preventDefault();
            const name = this.getAttribute("data-name");
            const price = parseInt(this.getAttribute("data-price"));

            // Kiểm tra sản phẩm có trong giỏ chưa
            const existing = cart.find(item => item.name === name);
            if (existing) {
                existing.qty += 1;
            } else {
                cart.push({ name, price, qty: 1 });
            }

            updateCartUI();
        });
    });

    // Cập nhật giao diện giỏ hàng
    function updateCartUI() {
        // Cập nhật số lượng tổng
        const totalQty = cart.reduce((sum, item) => sum + item.qty, 0);
        cartCount.textContent = `(${totalQty})`;

        // Hiển thị sản phẩm trong sidebar
        if (cart.length === 0) {
            cartItemsContainer.innerHTML = "<p>Chưa có sản phẩm nào.</p>";
            return;
        }

        cartItemsContainer.innerHTML = cart.map(item => `
            <div class="cart-item">
                <strong>${item.name}</strong><br>
                Giá: ${item.price.toLocaleString()} ₫<br>
                Số lượng: ${item.qty}
            </div>
        `).join("");
    }
});
*/

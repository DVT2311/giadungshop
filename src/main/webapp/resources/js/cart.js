document.addEventListener("DOMContentLoaded", function() {
    const cartTableBody = document.querySelector(".cart-table tbody");
    const subtotalElement = document.querySelector(".summary-box strong:nth-child(2)");
    const totalElement = document.querySelector(".summary-box .text-danger");
    const cartCount = document.getElementById("cart-count");
    const shippingFee = 15000;

    // --- Load giỏ hàng từ localStorage ---
    let cart = JSON.parse(localStorage.getItem("cart")) || [];

    // --- Render giỏ hàng ra HTML ---
    function renderCart() {
        if (!cartTableBody) {
            // Không phải trang cart.html, chỉ update số lượng trên icon
            cartCount.textContent = cart.length;
            localStorage.setItem("cart", JSON.stringify(cart));
            return;
        }

        cartTableBody.innerHTML = "";

        if (cart.length === 0) {
            cartTableBody.innerHTML = `
      <tr>
        <td colspan="5" class="text-center text-muted">Giỏ hàng trống</td>
      </tr>
    `;
        }

        let subtotal = 0;

        cart.forEach((item, index) => {
            const itemTotal = item.price * item.quantity;
            subtotal += itemTotal;

            const row = document.createElement("tr");
            row.innerHTML = `
      <td>
        <div class="d-flex align-items-center">
          <img src="${item.image}" alt="${item.name}" style="object-fit:cover; border-radius:10px">
          <a href="/product/${item.id}" class="text-dark text-decoration-none">
            <span class="ms-3">${item.name}</span>
          </a>
        </div>
      </td>
      <td class="text-center">${item.price.toLocaleString()} đ</td>
      <td class="text-center">
        <div class="quantity-control d-flex align-items-center justify-content-center">
          <button class="btn-decrease">-</button>
          <input type="text" value="${item.quantity}" readonly>
          <button class="btn-increase">+</button>
        </div>
      </td>
      <td class="text-center"><strong>${itemTotal.toLocaleString()} đ</strong></td>
      <td class="text-center">
        <a href="#" class="text-danger btn-delete"><i class="fa fa-trash"></i> Xóa</a>
      </td>
    `;

            // Gắn sự kiện tăng/giảm số lượng
            row.querySelector(".btn-decrease").addEventListener("click", () => updateQuantity(index, -1));
            row.querySelector(".btn-increase").addEventListener("click", () => updateQuantity(index, 1));
            row.querySelector(".btn-delete").addEventListener("click", (e) => {
                e.preventDefault();
                removeItem(index);
            });

            cartTableBody.appendChild(row);
        });

        subtotalElement.textContent = subtotal.toLocaleString() + " đ";
        totalElement.textContent = (subtotal + (cart.length > 0 ? shippingFee : 0)).toLocaleString() + " đ";
        cartCount.textContent = cart.length;

        localStorage.setItem("cart", JSON.stringify(cart));
    }

    // --- Cập nhật số lượng ---
    function updateQuantity(index, change) {
        cart[index].quantity += change;
        if (cart[index].quantity <= 0) {
            cart.splice(index, 1);
            showToast("Đã xóa sản phẩm khỏi giỏ");
        }
        renderCart();
    }

    // --- Xóa sản phẩm ---
    function removeItem(index) {
        const removed = cart[index].name;
        cart.splice(index, 1);
        renderCart();
        showToast(`Đã xóa "${removed}"`);
    }

    // --- Thêm sản phẩm bằng AJAX ---
    const addToCartButtons = document.querySelectorAll(".add-to-cart");
    addToCartButtons.forEach(btn => {
        btn.addEventListener("click", function(e) {
            e.preventDefault();

            const product = {
                id: this.getAttribute("data-id"),
                name: this.getAttribute("data-name"),
                price: parseFloat(this.getAttribute("data-price")),
                image: this.getAttribute("data-image"),
                quantity: 1
            };

            // Gửi AJAX tới backend
            fetch("/cart/add", {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: new URLSearchParams(product)
            })
                .then(res => res.json())
                .then(data => {
                    if (data.success) {
                        // Cập nhật localStorage
                        let existing = cart.find(item => item.id == product.id);
                        if (existing) {
                            existing.quantity += 1;
                        } else {
                            cart.push(product);
                        }
                        renderCart();
                        showToast(data.message);
                    } else {
                        showToast("Có lỗi xảy ra!");
                    }
                })
                .catch(err => console.error(err));
        });
    });

    // --- Thông báo Toast (custom, không lỗi CSP) ---
    function showToast(message) {
        let toast = document.createElement("div");
        toast.className =
            "toast-message position-fixed bottom-0 end-0 m-3 p-3 bg-success text-white rounded shadow";
        toast.style.zIndex = 9999;
        toast.textContent = message;
        document.body.appendChild(toast);

        setTimeout(() => {
            toast.style.opacity = "0";
            setTimeout(() => toast.remove(), 500);
        }, 2000);
    }


    // --- Khởi động ---
    renderCart();
});

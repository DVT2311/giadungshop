package com.tamkeyboard.giadungshop.controller.customer;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tamkeyboard.giadungshop.domain.Cart;
import com.tamkeyboard.giadungshop.domain.CartItem;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/cart")
public class CustomerCartController {

	private Cart getCart(HttpSession session) {
        Cart cart = (Cart) session.getAttribute("CART_SESSION");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("CART_SESSION", cart);
        }
        return cart;
    }

    // Hiển thị giỏ hàng
    @GetMapping("/view")
    public String viewCart(Model model, HttpSession session) {
        Cart cart = getCart(session);
        model.addAttribute("cart", cart);
        return "customer/pages/cart"; // trỏ tới cart.jsp
    }

    // Thêm sản phẩm vào giỏ
    @PostMapping("/add")
    @ResponseBody
    public Map<String, Object> addToCart(
            @RequestParam("id") int id,
            @RequestParam("name") String name,
            @RequestParam("price") double price,
            @RequestParam("quantity") int quantity,
            @RequestParam(value = "image", required = false) String image,
            HttpSession session
    ) {
        Cart cart = getCart(session);

        CartItem item = new CartItem();
        item.setId(id);
        item.setName(name);
        item.setPrice(price);
        item.setQuantity(quantity);
        item.setImage(image != null ? image : "default.jpg");

        cart.addItem(item);

        Map<String, Object> response = new HashMap<>();
        response.put("success", true);
        response.put("message", "Đã thêm sản phẩm vào giỏ hàng!");
        response.put("cartSize", cart.getItems().size());

        return response;
    }


    // Xóa sản phẩm khỏi giỏ
    @GetMapping("/remove")
    public String removeFromCart(@RequestParam("id") int id, HttpSession session) {
        Cart cart = getCart(session);
        cart.removeItem(id);
        return "redirect:/cart";
    }
    
}

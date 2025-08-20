package com.tamkeyboard.giadungshop.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tamkeyboard.giadungshop.domain.Cart;
import com.tamkeyboard.giadungshop.domain.CartItem;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/cart")
public class CustomerCartController {

    @GetMapping("/view")
    public String viewCart(HttpSession session, Model model) {
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }
        model.addAttribute("cart", cart);
        return "customer/pages/cart";  // trỏ về file cart.jsp của bạn
    }

    @PostMapping("/add")
    public String addToCart(
            @RequestParam("id") int id,
            @RequestParam("name") String name,
            @RequestParam("price") double price,
            @RequestParam("image") String image,
            @RequestParam("quantity") int quantity,
            HttpSession session,
            HttpServletRequest request) {

        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }

        CartItem item = new CartItem(id, name, image, price, quantity);
        cart.addItem(item);

        session.setAttribute("cart", cart);

        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }
    
}

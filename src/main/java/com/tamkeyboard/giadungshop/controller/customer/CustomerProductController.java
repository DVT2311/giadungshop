package com.tamkeyboard.giadungshop.controller.customer;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.tamkeyboard.giadungshop.domain.Product;
import com.tamkeyboard.giadungshop.services.ProductService;

@Controller
public class CustomerProductController {

	private final ProductService productService;

	public CustomerProductController(ProductService productService) {
		this.productService = productService;
	}

	@GetMapping("/")
	public String getTop8Product(Model model) {
		List<Product> prs = this.productService.getTop8Product();
		model.addAttribute("top8Pro", prs);
		return "customer/pages/index";
	}

	@GetMapping("/login")
	public String loginPage() {
		return "customer/pages/login";
	}

	@GetMapping("/register")
	public String registerPage() {
		return "customer/pages/register";
	}
	
	@GetMapping("/product/{id}")
	public String getProduct(@PathVariable long id, Model model) {
        Product product = productService.fetchProductById(id).get();
        model.addAttribute("product", product);
        model.addAttribute("id", id);
        return "customer/pages/product";
    }

	@GetMapping("/category/{category}")
	public String getProductsByCategory(@PathVariable("category") String category, Model model) {
		List<Product> products = productService.getProductByCategory(category);
		model.addAttribute("products", products);
		model.addAttribute("category", category);
		return "customer/pages/category";
	}

}

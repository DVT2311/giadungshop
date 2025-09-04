package com.tamkeyboard.giadungshop.controller.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.tamkeyboard.giadungshop.domain.Category;
import com.tamkeyboard.giadungshop.domain.Product;
import com.tamkeyboard.giadungshop.services.CategoryService;
import com.tamkeyboard.giadungshop.services.ProductService;

@Controller
public class CustomerProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@ModelAttribute("categories")
    public List<Category> categories() {
        return categoryService.findAllCategories();
    }

	@GetMapping("/")
	public String mainPage(Model model) {
	    // 8 sản phẩm mới nhất
	    List<Product> top8Pro = productService.getTop8Product();
	    model.addAttribute("top8Pro", top8Pro);

	    // Lấy 8 sản phẩm cho từng category
	    Map<Long, List<Product>> categoryProducts = new HashMap<>();
	    for (Category category : categories()) {
	        categoryProducts.put(category.getId(), productService.getTop8ByCategory(category.getId()));
	    }
	    model.addAttribute("categoryProducts", categoryProducts);

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
	public String getProductsByCategory(@PathVariable("category") Category category, Model model) {
		List<Product> products = productService.getProductByCategory(category);
		model.addAttribute("products", products);
		model.addAttribute("category", category);
		return "customer/pages/category";
	}
	
	@GetMapping("/about")
	public String aboutPage() {
		return "customer/pages/about";
	}
	
	@GetMapping("/contact")
	public String contactPage() {
		return "customer/pages/contact";
	}
}

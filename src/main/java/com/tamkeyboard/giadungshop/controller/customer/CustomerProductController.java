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
		List<Product> top8Pro = this.productService.getTop8Product();
		
		List<Product> anUong = productService.getTop8ByCategory("do-dung-an-uong");
        List<Product> nhaBep = productService.getTop8ByCategory("dung-cu-nha-bep");
        List<Product> veSinh = productService.getTop8ByCategory("ve-sinh-va-phong-tam");
        List<Product> tapHoa = productService.getTop8ByCategory("do-tap-hoa");

        model.addAttribute("top8Pro", top8Pro);
        model.addAttribute("anUong", anUong);
        model.addAttribute("nhaBep", nhaBep);
        model.addAttribute("veSinh", veSinh);
        model.addAttribute("tapHoa", tapHoa);
		
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
	
	@GetMapping("/about")
	public String aboutPage() {
		return "customer/pages/about";
	}
	
	@GetMapping("/contact")
	public String contactPage() {
		return "customer/pages/contact";
	}
}

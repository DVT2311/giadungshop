package com.tamkeyboard.giadungshop.controller.admin;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tamkeyboard.giadungshop.domain.Category;
import com.tamkeyboard.giadungshop.domain.Product;
import com.tamkeyboard.giadungshop.services.CategoryService;

import jakarta.validation.Valid;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@GetMapping("/admin/category")
	public String getAllCategories(Model model) {
		List<Category> categories = categoryService.findAllCategories();
		model.addAttribute("categories", categories);
		return "admin/category/show";
	}

	@GetMapping("/admin/category/create")
	public String getCreateCategoryPage(Model model) {
		model.addAttribute("newCategory", new Category());
		return "admin/category/create";
	}
	
	@PostMapping("/admin/category/create")
	public String handleCreateProduct(@ModelAttribute("newCategory") Category category) {

		this.categoryService.saveCategory(category);

		return "redirect:/admin/category";
	}
	
	@GetMapping("/admin/category/update/{id}")
    public String getUpdateCategoryPage(Model model, @PathVariable long id) {
        Optional<Category> currentCategory = this.categoryService.findCategoryById(id);
        model.addAttribute("currentCategory", currentCategory.get());
        return "admin/category/update";
    }

    @PostMapping("/admin/category/update")
    public String updateCategory(@ModelAttribute("currentCategory") Category category) {
        Optional<Category> currentCategoryOpt = this.categoryService.findCategoryById(category.getId());

        if (currentCategoryOpt.isPresent()) {
            Category currentCategory = currentCategoryOpt.get();
            currentCategory.setName(category.getName());
            currentCategory.setStatus(category.getStatus());
            this.categoryService.saveCategory(currentCategory);
            return "redirect:/admin/category?success=updated";
        } else {
            return "redirect:/admin/category?error=notfound";
        }
    }

}

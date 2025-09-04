package com.tamkeyboard.giadungshop.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.tamkeyboard.giadungshop.domain.Category;
import com.tamkeyboard.giadungshop.repository.CategoryRepository;

@Service
public class CategoryService {
	
	private final CategoryRepository categoryRepository;
	
	public CategoryService(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}
	
	public Optional<Category> findCategoryById(long id) {
		return this.categoryRepository.findById(id);
	}

	public List<Category> findAllCategories() {
		return this.categoryRepository.findAll();
	}
	
	public Category saveCategory(Category category) {
		return this.categoryRepository.save(category);
	}
	
}

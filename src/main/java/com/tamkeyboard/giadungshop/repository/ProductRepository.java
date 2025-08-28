package com.tamkeyboard.giadungshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tamkeyboard.giadungshop.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	
	List<Product> findTop8ByOrderByIdDesc();
	
	List<Product> findTop8ByCategoryOrderByIdDesc(String category);
	
	List<Product> findByCategory(String category);
	
}
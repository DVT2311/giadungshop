package com.tamkeyboard.giadungshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tamkeyboard.giadungshop.domain.Category;
import com.tamkeyboard.giadungshop.domain.Product;


@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
	
	List<Product> findTop8ByOrderByIdDesc();
	
	List<Product> findTop8ByCategory_IdOrderByIdDesc(Long categoryId);
	
	List<Product> findByCategory(Category category);
	
}
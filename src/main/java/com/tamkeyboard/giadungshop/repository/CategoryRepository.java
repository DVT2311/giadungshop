package com.tamkeyboard.giadungshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tamkeyboard.giadungshop.domain.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
	
}

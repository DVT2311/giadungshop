package com.tamkeyboard.giadungshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tamkeyboard.giadungshop.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
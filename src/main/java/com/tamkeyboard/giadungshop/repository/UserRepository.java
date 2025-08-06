package com.tamkeyboard.giadungshop.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tamkeyboard.giadungshop.domain.User;

//crud: create, read, update, delete
@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User save(User eric);
}

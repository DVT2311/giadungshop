package com.tamkeyboard.giadungshop.services;

import org.springframework.stereotype.Service;

import com.tamkeyboard.giadungshop.domain.User;
import com.tamkeyboard.giadungshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User handleSaveUser(User user) {
        User eric = this.userRepository.save(user);
        System.out.println(eric);
        return eric;
    }
}

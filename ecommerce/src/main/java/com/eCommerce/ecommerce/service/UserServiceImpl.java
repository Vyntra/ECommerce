package com.eCommerce.ecommerce.service;

import com.eCommerce.ecommerce.model.User;
import com.eCommerce.ecommerce.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;

    @Override
    public User findByUserEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public User findByUserContactNumber(String contactNumber) {
        return userRepository.findByContactNumber(contactNumber);
    }

    @Override
    public User findByUserEmailAndPassword(String email, String password) {
        return userRepository.findByEmailAndPassword(email, password);
    }

    @Override
    public void saveUser(User user) {
        userRepository.save(user);
    }

    @Override
    public void deleteUser(User user) {
        userRepository.delete(user);
    }

    @Override
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }
}

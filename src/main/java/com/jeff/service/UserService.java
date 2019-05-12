package com.jeff.service;

import java.util.List;

import com.jeff.entity.User;

public interface UserService {

	User getUserById(Long id);

	List<User> getUserList();

}

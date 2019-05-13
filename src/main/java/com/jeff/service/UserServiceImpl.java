package com.jeff.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeff.entity.User;
import com.jeff.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public User getUserById(Long id) {

		return userMapper.getUserById(id);
	}

	@Override
	public List<User> getUserList() {

		return userMapper.getUserList();
	}

	@Override
	public int updateUser(Long id, String name) {

		return userMapper.updateUser(id, name);
	}

}

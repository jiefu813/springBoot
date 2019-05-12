package com.jeff.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jeff.entity.User;
import com.jeff.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("getUserById")
	public User getUserById(Long id) {

		return userService.getUserById(id);
	}

	@RequestMapping("getUserList")
	public Object getUserList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<User> userList = userService.getUserList();
		PageInfo<User> page = new PageInfo<>(userList);
		return page;
	}

}

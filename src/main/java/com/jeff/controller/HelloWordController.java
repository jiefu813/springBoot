package com.jeff.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWordController {

	@RequestMapping("hello")
	public String hello() {

		return "HelloWord";
	}

}

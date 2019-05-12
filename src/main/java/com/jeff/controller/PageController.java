package com.jeff.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping("index")
	public String index(Map<String, Object> map) {
		map.put("name", "Jeff");
		map.put("sex", "0");
		List<String> list = new ArrayList<>();
		list.add("读书");
		list.add("玩游戏");
		list.add("敲代码");
		map.put("hobbys", list);
		return "index";
	}

}

package com.jeff.controller.classmanager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeff.service.classmanager.ClassManagerService;

@Controller
@RequestMapping("classManager")
public class ClassManagerController {

	@Autowired
	private ClassManagerService classManagerService;

	@RequestMapping("manager")
	public String manager() {

		return "classManager/classManagerList";
	}

	@RequestMapping("datagrid")
	@ResponseBody
	public Object datagrid() {

		return classManagerService.selectDatagrid();
	}

}

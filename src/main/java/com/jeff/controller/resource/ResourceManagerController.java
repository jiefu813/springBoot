package com.jeff.controller.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeff.service.resource.ResourceManagerService;

@Controller
@RequestMapping("resourceManager")
public class ResourceManagerController {

	@Autowired
	private ResourceManagerService resourceManagerService;

	@RequestMapping("manager")
	public String manager() {

		return "resourceManager/resourceManagerList";
	}

	@RequestMapping("treeGrid")
	@ResponseBody
	public Object treeGrid() {

		return resourceManagerService.selectTreeGrid();
	}

}

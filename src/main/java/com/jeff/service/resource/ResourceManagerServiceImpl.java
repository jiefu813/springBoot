package com.jeff.service.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeff.common.Datagrid;
import com.jeff.entity.resource.Resource;
import com.jeff.mapper.resource.ResourceManagerMapper;

@Service
public class ResourceManagerServiceImpl implements ResourceManagerService {

	@Autowired
	private ResourceManagerMapper resourceManagerMapper;

	@Override
	public Datagrid selectTreeGrid() {
		List<Resource> classGradeList = resourceManagerMapper.getResourceList();
		Datagrid datagrid = new Datagrid();
		datagrid.setRows(classGradeList);
		datagrid.setTotal(classGradeList.size());
		return datagrid;
	}

}

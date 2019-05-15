package com.jeff.service.classmanager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeff.common.Datagrid;
import com.jeff.entity.classmanager.ClassGrade;
import com.jeff.mapper.classmanager.ClassManagerMapper;

@Service
public class ClassManagerServiceImpl implements ClassManagerService {

	@Autowired
	private ClassManagerMapper classManagerMapper;

	@Override
	public Datagrid selectDatagrid() {
		List<ClassGrade> classGradeList = classManagerMapper.getClassGradeList();
		Datagrid datagrid = new Datagrid();
		datagrid.setRows(classGradeList);
		datagrid.setTotal(classGradeList.size());
		return datagrid;
	}

}

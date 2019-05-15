package com.jeff.mapper.classmanager;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.jeff.entity.classmanager.ClassGrade;

@Mapper
public interface ClassManagerMapper {

	@Select("select * from class_grade")
	List<ClassGrade> getClassGradeList();

}

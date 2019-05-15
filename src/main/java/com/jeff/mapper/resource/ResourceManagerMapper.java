package com.jeff.mapper.resource;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.jeff.entity.resource.Resource;

@Mapper
public interface ResourceManagerMapper {

	@Select("select * from resource")
	List<Resource> getResourceList();

}

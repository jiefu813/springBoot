package com.jeff.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jeff.entity.User;

@Mapper
public interface UserMapper {

	@Select("select id,login_name loginName,nick_name nickName,name,birthday from user where id=#{id}")
	User getUserById(@Param("id") Long id);

	@Select("select id,login_name loginName,nick_name nickName,name,birthday from user")
	List<User> getUserList();

}

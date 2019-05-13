package com.jeff.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;

import com.jeff.entity.User;

@Mapper
@CacheConfig(cacheNames = "baseCache")
public interface UserMapper {

	@Cacheable
	@Select("select id,login_name loginName,nick_name nickName,name,birthday from user where id=#{id}")
	User getUserById(@Param("id") Long id);

	@Select("select id,login_name loginName,nick_name nickName,name,birthday from user")
	List<User> getUserList();

	@Update("update user set name=#{name} where id=#{id}")
	int updateUser(@Param("id") Long id, @Param("name") String name);

}

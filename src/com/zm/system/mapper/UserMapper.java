package com.zm.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zm.system.po.User;


/**
 * DAO接口

 *
 */
public interface UserMapper {
	//增加    即  前台向客户表插入信息      ok
	public void add(User user);
	//  按城市名封装总记录数
	public long getAllRecordBycity(int city);
	//  查询总记录数     ok
	public long getAllRecord();
	//  按管理员所在城市分页查询所有的客户信息
	public List<User> findAll(@Param(value="start") Integer start,@Param(value="pageSize") Integer pageSize,@Param(value="city")String city);
	//  超级管理员分页查询所有客户信息
	public List<User> selectAll(@Param(value="start") Integer start,@Param(value="pageSize") Integer pageSize);
	//超级管理员根据城市模糊查询客户信息
	public List<User> selectCity(@Param(value="start") Integer start,@Param(value="pageSize") Integer pageSize,@Param(value="city") String city);
	// 根据日期查询 查询总记录数
	public long getAllRecordByDate(String createTime);
	//  超级管理员按日期查询
	public List<User> selectDate(@Param(value="start") Integer start,@Param(value="pageSize") Integer pageSize,@Param(value="createTime") String createTime);
	
}

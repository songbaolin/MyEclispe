package com.zm.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zm.system.po.Customer;


//  Dao接口
public interface CustomerMapper {
	//增加    即  前台向客户表插入信息      ok
	public void add(Customer customer);
//  查询总记录数     ok
	public long getAllRecord();
//  超级管理员分页查询所有电商客户信息
	public List<Customer> selectAll(@Param(value="start") Integer start,@Param(value="pageSize") Integer pageSize);
	// 根据日期查询 查询总记录数
	public long getAllRecordByDate(String createTime);
	//  超级管理员按日期查询
	public List<Customer> selectDate(@Param(value="start") Integer start,@Param(value="pageSize") Integer pageSize,@Param(value="createTime") String createTime);
	
	
	
	
	
	
	
	
	
	
	//  按城市名封装总记录数
	public long getAllRecordBycity(int city);
	
	//  按管理员所在城市分页查询所有的客户信息
	public List<Customer> findAll(@Param(value="start") Integer start,@Param(value="pageSize") Integer pageSize,@Param(value="city")String city);
	
	//超级管理员根据城市模糊查询客户信息
	public List<Customer> selectCity(@Param(value="start") Integer start,@Param(value="pageSize") Integer pageSize,@Param(value="city") String city);
	

}

package com.zm.system.service;

import java.util.List;
import java.util.Map;

import com.zm.system.po.Page;
import com.zm.system.po.User;

public interface UserService {
	//前台用户提交信息
	public void insert(User po);
	// 按照管理员所在城市分页查询数据
	public Page show(int currPageNO,String city,Integer zm_adminid);
	//  超级管理员 分页查询所有顾客信息
	public Page show(int currPageNO);
	//  超级管理员按照城市模糊查询客户信息
	public Page selectCity(int parseInt, String test1);
	
	//  超级管理员按日期模糊查询客户信息
	public Page selectDate(int parseInt, String createTime);
	
	
	
	
	
	
	
}

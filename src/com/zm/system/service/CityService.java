package com.zm.system.service;

import java.util.List;

import com.zm.system.po.City;

//  城市的service接口
public interface CityService {
	//  去数据库查询
	public List<City> selectCity(String city);
	//  向数据库插入一条数据
	public int addcity(City city);

	
	
	
	
	
	
	
}

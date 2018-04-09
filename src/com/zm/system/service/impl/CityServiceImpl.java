package com.zm.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.zm.system.mapper.CityMapper;
import com.zm.system.po.City;
import com.zm.system.service.CityService;

public class CityServiceImpl implements CityService{

	//  注入到
	@Autowired
	CityMapper cityDao;


	//  向city数据库插入一条数据
	public int addcity(City city) {
		
		return cityDao.addcity(city);
	}







	public List<City> selectCity(String city) {
		
		return cityDao.select(city);
	}

}

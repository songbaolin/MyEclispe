package com.zm.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zm.system.po.City;



/**
 * DAO接口

 *
 */
public interface CityMapper {
	//从数据库查询城市信息
	public List<City> select(String city);
	//  向数据库插入一条数据

	public int addcity(City city);
	
	
	
}

package com.zm.system.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zm.system.mapper.CityMapper;
import com.zm.system.po.City;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext-dao.xml")
public class cityTest {
	 @Resource
	 private CityMapper userDAO;
	 
	 
	 
	 @Test
	 public void select(){
		/* City  city=userDAO.select("界首");
		 System.out.println(city);*/
		 
	 }
	 @Test
	 public  void add(){
		 City  city=new City();
		 city.setCityName("阜南");
		 city.setCityUrl("/hefei.jsp");
		userDAO.addcity(city);
		
		 
		 
		 
	 }
	 @Test
	 public void select1(){
		 List<City> city=userDAO.select("合肥");
		 for (City city2 : city) {
			 System.out.println(city2);
		}
		
	 }
	 
	 
	 
	
	
	 

}

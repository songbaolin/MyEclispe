package com.zm.system.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zm.system.mapper.UserMapper;
import com.zm.system.po.User;
import com.zm.system.service.impl.UserImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext-dao.xml")
public class UserTest {
 @Resource
 private UserMapper userDAO;
 
 
 
 
 
 @Test
 //  查询所有记录的方法的测试    ok
 public void getAllRecord(){
	
	System.out.println(userDAO.getAllRecord());

 }
 @Test
 //  按城市查询总记录数
 public void getAllRecordBycity(){
	int aa= (int) userDAO.getAllRecordBycity(2);
	 System.out.println(aa+"==================================");
	 
	 
 }

 
 //  增加客户提交的信息的测试的方法    ok
 @Test
 public void add1(){
	 User user=new User();
	
	 for(int i=0;i<10;i++){
		 Date date=new Date();
		 SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 user.setCreateTime(dateFormat.format(date));
		 user.setName("王先生");
		 user.setSex("男");
		/* user.setCity("安徽"+i);*/
		 user.setMobile("1555");
		 user.setBuyInterest("买买买");
		 user.setCarType("别克"+i);
		 user.setCarBrand("威朗"+i);
		 user.setCity(2);
		 userDAO.add(user);

	 }
 }
 
 //  根据城市名称模糊查询
/* @Test
	public void select(){
	  User user=new User();
	  user.setCity("阳");
	 List<User> users= userDAO.select(user.getCity());  
	 List<User> list=userDAO.select("1");
	 for (User user2 : users) {
		System.out.println(user2);
	}
	 for (User user : list) {
		System.out.println(user);
	}
	 
	}*/
 
 
//分级管理员  按该管理员所在地区查询客户信息  测试
/* @Test
 public  void hhh(){
	 selectByadminCity
	 List<User> userlist=userDAO.selectByadminCity("六安");
	 for (User user : userlist) {
		System.out.println(user+"========================");
	}
 }*/
 @Test
//  超级管理员按城市模糊查询  分页所有客户信息
 public void selectAll(){
	 
	 List<User> list=userDAO.selectCity(0, 15,"合肥");
	 for (User user : list) {
		 System.out.println(user);
	}
	 
	 
 }
 @Test
 // 超级管理员分页查询数据  测试
 public  void  selectAll1(){
	 List<User> list=userDAO.selectAll(0, 136);
	 Date date=null;
	 
	for (User user : list) {
		date=(Date) user.getCreateTime();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String aa=df.format(date);
		user.setCreateTime(aa);
		System.out.println(user);
	}
 }
 
 
 @Test
 public void aa(){
	 Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		String time=df.format(day);
		
	 
	 
 }
 @Test
 public  void  selectDate(){
	 //  超级管理员按日期查询测试
	 List<User> list=userDAO.selectDate(0, 30,"2018-02");
	 for (User user : list) {
		System.out.println(user);
	}
	 
	
	 
 }
 @Test
 public  void selectDateRecord(){
 	 //  按日期查询总记录数  测试
	 long  aa=userDAO.getAllRecordByDate("02-01");
 	 System.out.println(aa);
 }
 	
 
}

 
 
 


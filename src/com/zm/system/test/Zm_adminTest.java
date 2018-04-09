package com.zm.system.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zm.system.mapper.Zm_adminMapper;
import com.zm.system.po.Zm_admin;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext-dao.xml")
public class Zm_adminTest {
	 @Resource
	 private Zm_adminMapper userinfoDAO;
	 
	 //  查询所有后台管理员的方法
	 @Test
	  public void user(){
		 Zm_admin user=new Zm_admin();
		List<Zm_admin>user2=userinfoDAO.userList(user);
		for (Zm_admin userinfoPO : user2) {
			System.out.println(userinfoPO);
		}
	  }
	
	@Test
	  public void login(){
		Zm_admin po=new Zm_admin("admin","admin");
		  
		Zm_admin po2=userinfoDAO.login(po);
		System.out.println(po2);
		  
	  }
	@Test
	public void add(){
		Zm_admin zm_admin=new Zm_admin();
		zm_admin.setZm_name("AAA");
		zm_admin.setZm_password("aaa");
		zm_admin.setZm_city("六安");	
		userinfoDAO.insert(zm_admin);
		
	}
	@Test
	public void update(){
		Zm_admin  zm_admin=new Zm_admin();
		zm_admin.setZm_id(2);
		zm_admin.setZm_password("123");
		userinfoDAO.update(zm_admin);
	}
	@Test
	//  查询管理员总记录数的测试
	public  void selectCountAdmin(){
		
		int aa=userinfoDAO.getAllRecord();
		System.out.println(aa+"======================================");
		
		
	}
	@Test
	//  后台管理员分页方法的测试i
	public  void selectAdminByfy(){
		
		List<Zm_admin> zmList=userinfoDAO.selectAdminByfy(0, 4);
		
		for (Zm_admin zm_admin : zmList) {
			System.out.println(zm_admin+"======================");
		}	
	}
	
	@Test//  根据传进来的城市查询是否有该管理员方法的测试
	public void  selectAdminBycname(){
		Zm_admin admin=userinfoDAO.selectAdminBycname("阳");
		System.out.println(admin+"+++++============================================================++++++++++");
		
		
	}
	
	@Test
	public void delete(){
		Zm_admin admin=new Zm_admin();
	    admin.setZm_id(2);
		userinfoDAO.delete(2);
	}
	
	
	
	
	
}
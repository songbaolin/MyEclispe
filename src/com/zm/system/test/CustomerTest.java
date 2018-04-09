package com.zm.system.test;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zm.system.mapper.CustomerMapper;
import com.zm.system.po.Customer;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext-dao.xml")
public class CustomerTest {

	@Resource
	private CustomerMapper  customerDao;
	
	//  增加电商用户方法的测试
	@Test
	public void add(){
		Customer  customer=new Customer();
		customer.setC_name("老王");
		customer.setC_mobile("15551321657");
		customer.setC_address("安徽省阜阳市");
		customerDao.add(customer);
		
		
	}
	
	//  批量插入数据
	@Test
	public void aa(){
		Customer customer=null;
		Date  data=null;
		for(int i=1;i<200;i++){
			customer=new Customer();
			customer.setC_name("老王"+i);
			customer.setC_mobile("15551321657"+i);
			customer.setC_carBrand("宝马"+i);
			customer.setC_carType("AAA"+i);
			customer.setC_sex("男"+i);
			customer.setC_city("阜阳"+i);
			customer.setC_address("安徽省阜阳市"+i);
			data=new Date();    
			customer.setC_createTime(data);
			customerDao.add(customer);
		}
		
		
	}
	
	
	
	
	//  查询电商所有客户数目的测试
	@Test
	public void selectAllrecord(){
		long a=customerDao.getAllRecord();
		System.out.println(a+"===========");
	}
	
	
	//  超级管理员分页查询电商客户信息的测试
	@Test
	public void selectCustomerByPage(){
		List<Customer> aa=customerDao.selectAll(0, 50);
		for (Customer customer : aa) {
			System.out.println(customer);
		}
	}
	
	
	// 按时间查询总数的测试
	@Test
	public void select(){
		long  a=customerDao.getAllRecordByDate("2018-03-01");
		System.out.println(a+"===================");
		
	}
	//  按时间查询客户信息的测试
	@Test
	public  void selectByDate(){
		List<Customer> list=customerDao.selectDate(1, 20, "2018-03-01");
		for (Customer customer : list) {
			System.out.println(customer);
		}
	}
	
	
	
	
	
	
}

package com.zm.system.service.impl;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import com.zm.system.mapper.CustomerMapper;
import com.zm.system.po.Customer;
import com.zm.system.po.Page;
import com.zm.system.po.User;
import com.zm.system.service.CustomerService;

public class CustomerServiceImpl implements CustomerService {

	// 注入customerMapperDao
	@Resource
	CustomerMapper  customerDao;
	//  向customer电商插入数据
	public void insert(Customer customer) {
		
	//  获取当前系统时间
			 Date day=new Date();
			 SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
			 customer.setC_createTime(dateFormat.format(day));
		customerDao.add(customer);
		
	}
	
	//  超级管理员分页查询电商客户信息
	public Page selectCustomerByPage(int currPageNO) {
		
		Page page = new Page();
		
		//封装当前页号
		page.setCurrPageNO(currPageNO);
		
		//封装总记录数
		int allRecordNO = (int) customerDao.getAllRecord();
		page.setAllRecordNO(allRecordNO);
		
		//封装总页数
		int allPageNO = 0;
		if(page.getAllRecordNO() % page.getPerPageSize() == 0){
			allPageNO = page.getAllRecordNO() / page.getPerPageSize();
		}else{
			allPageNO = page.getAllRecordNO() / page.getPerPageSize() + 1;
		}
		page.setAllPageNO(allPageNO);
		
		//封装内容
		int size = page.getPerPageSize();
		int start = (page.getCurrPageNO()-1) * size;
		List<Customer> customerlist = customerDao.selectAll(start,size);
		List<Customer> aalist=new ArrayList<Customer>();
		Date date=null;
		for (Customer qq : customerlist) {
			System.out.println(qq+"第一次的集合=============================");
			
			date=(Date) qq.getC_createTime();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String aa=df.format(date);
			qq.setC_createTime(aa);
			aalist.add(qq);
		}
		page.setCulist(aalist);
		
		
		
		return page;
	}

	//  超级管理员日期分页查询电商信息
	public Page selectDate(int currPageNO, String createTime) {
		
		Page page = new Page();
		
		
		//封装当前页号
		page.setCurrPageNO(currPageNO);
		//封装总记录数       按照日期查询总记录数
		int allRecordNO =  (int) customerDao.getAllRecordByDate(createTime);
		page.setAllRecordNO(allRecordNO);
		
		//封装总页数
		int allPageNO = 0;
		if(page.getAllRecordNO() % page.getPerPageSize() == 0){
			allPageNO = page.getAllRecordNO() / page.getPerPageSize();
		}else{
			allPageNO = page.getAllRecordNO() / page.getPerPageSize() + 1;
		}
		page.setAllPageNO(allPageNO);
		
		//封装内容
		int size = page.getPerPageSize();
		int start = (page.getCurrPageNO()-1) * size;
		List<Customer> articleList = customerDao.selectDate(start,size,createTime);
		
		List<Customer> aalist=new ArrayList<Customer>();
		Date date=null;
		for (Customer customer : articleList) {
			date=(Date) customer.getC_createTime();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd ");
			String aa=df.format(date);
			customer.setC_createTime(aa);
			aalist.add(customer);
		}
		page.setCulist(aalist);
		return page;
		
	}

}

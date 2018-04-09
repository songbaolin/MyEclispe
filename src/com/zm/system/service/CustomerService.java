package com.zm.system.service;

import com.zm.system.po.Customer;
import com.zm.system.po.Page;

public interface CustomerService {
	
	//  向电商用户表中插入数据
	public void insert(Customer customer);

	public Page selectCustomerByPage(int parseInt);

	public Page selectDate(int parseInt, String createTime);

}

package com.zm.system.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.zm.system.mapper.UserMapper;
import com.zm.system.mapper.Zm_adminMapper;
import com.zm.system.po.Page;
import com.zm.system.po.User;
import com.zm.system.po.Zm_admin;
import com.zm.system.service.Zm_adminService;
import com.zm.system.service.UserService;
@Service  //表示这是一个业务层，是service类， @Controller是用于标注控制层组件，Component是当某一个类不好归类的时候用 这个注解
public class UserImpl implements UserService{
	@Resource //自动装载，根据名称注入
	//定义dao类型的属性
	UserMapper udao;
	
	@Resource //自动装载，根据名称注入
	//定义dao类型的属性
	Zm_adminMapper zmdao;


	//  前台向客户表插入数据
	/*public void insert(User user) {
		//  获取当前系统时间
		 Date day=new Date();
		 user.setCreateTime(day);
		udao.add(user);
	}*/
	public void insert(User user) {
		//  获取当前系统时间
		 Date day=new Date();
		 SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		 user.setCreateTime(dateFormat.format(day));
		udao.add(user);
	}
	
	
	
	
	
	
	
	
	
	
	

	//  按管理员所在城市分页查询所有顾客信息
	public Page show(int currPageNO,String city,Integer zm_adminid) {
		Page page = new Page();
		
		//封装当前页号
		page.setCurrPageNO(currPageNO);
		
		//封装总记录数
		int allRecordNO = (int) udao.getAllRecordBycity(zm_adminid);
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
		List<User> articleList = udao.findAll(start,size,city);
		
		
		List<User> aalist=new ArrayList<User>();
		Date date=null;
		for (User user : articleList) {
			date=(Date) user.getCreateTime();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String aa=df.format(date);
			user.setCreateTime(aa);
			aalist.add(user);
		}
		page.setArticleList(aalist);
		
		
		
		
		
		
		
		
		
		/*page.setArticleList(articleList);*/
		return page;
		
	}
	
	//  超级管理员分页查询所有顾客信息
	public Page show(int currPageNO) {
		
		Page page = new Page();
		
		//封装当前页号
		page.setCurrPageNO(currPageNO);
		
		//封装总记录数
		int allRecordNO = (int) udao.getAllRecord();
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
		List<User> articleList = udao.selectAll(start,size);
		
		
		List<User> aalist=new ArrayList<User>();
		Date date=null;
		for (User user : articleList) {
			date=(Date) user.getCreateTime();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String aa=df.format(date);
			user.setCreateTime(aa);
			aalist.add(user);
		}
		page.setArticleList(aalist);
		
		
		/*page.setArticleList(articleList);*/
		
		return page;
	}
	
	// 超级管理员按城市查询客户信息
		public Page selectCity(int currPageNO, String city) {
			Page page = new Page();
			
		
			//  根据传过来的city  查询有无该城市的管理员   如果没有  即查询不到
			Zm_admin zm_admin=zmdao.selectAdminBycname(city);
			if(zm_admin==null){
				//  说明  搜索输入的城市  没有顾客信息   直接返回空的page
				return page;
				
			}
			// 不为空的话  取出  管理员的id   然后根据管理员id   即顾客城市的int 值  查询指定城市的总数
			int  zm_id=zm_admin.getZm_id();
			
			//封装当前页号
			page.setCurrPageNO(currPageNO);
			//封装总记录数
			int allRecordNO =  (int) udao.getAllRecordBycity(zm_id);
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
			List<User> articleList = udao.selectCity(start,size,city);
			
			List<User> aalist=new ArrayList<User>();
			Date date=null;
			for (User user : articleList) {
				date=(Date) user.getCreateTime();
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd ");
				String aa=df.format(date);
				user.setCreateTime(aa);
				aalist.add(user);
			}
			page.setArticleList(aalist);
			
			
			
			/*page.setArticleList(articleList);*/
			
			return page;
			
			
		}











		//  超级管理员按日期查询客户信息
		public Page selectDate(int currPageNO, String createTime) {
			Page page = new Page();
			
			
			//封装当前页号
			page.setCurrPageNO(currPageNO);
			//封装总记录数       按照日期查询总记录数
			int allRecordNO =  (int) udao.getAllRecordByDate(createTime);
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
			List<User> articleList = udao.selectDate(start,size,createTime);
			
			List<User> aalist=new ArrayList<User>();
			Date date=null;
			for (User user : articleList) {
				date=(Date) user.getCreateTime();
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd ");
				String aa=df.format(date);
				user.setCreateTime(aa);
				aalist.add(user);
			}
			page.setArticleList(aalist);
			
			
			
			/*page.setArticleList(articleList);*/
			
			return page;
			
		}
	
}

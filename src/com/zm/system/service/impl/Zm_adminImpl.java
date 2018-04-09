package com.zm.system.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.zm.system.mapper.Zm_adminMapper;
import com.zm.system.po.Page;
import com.zm.system.po.User;
import com.zm.system.po.Zm_admin;
import com.zm.system.service.Zm_adminService;
import com.zm.system.utils.MD5Util;
@Service  //表示这是一个业务层，是service类， @Controller是用于标注控制层组件，Component是当某一个类不好归类的时候用 这个注解
public class Zm_adminImpl implements Zm_adminService{
	@Resource //自动装载，根据名称注入
	//定义dao类型的属性
	Zm_adminMapper udao;
	/**
	 * 验证后台管理员登录
	 */
	public Zm_admin getlogin(Zm_admin po) {
		//调dao里的方法
		Zm_admin userinfo = udao.login(po);
		return userinfo;
	}
	
	
	/**
	 * 查询用户列表
	 */
	public List<Zm_admin> getuserList(Zm_admin po) {
		List<Zm_admin> userinfo = udao.userList(po);
		return userinfo;
	}
	
//  修改后台管理员的信息  密码

	public void getupdate(Zm_admin po, String newpassword) {
		
		po.setZm_password(newpassword);
		udao.update(po);
		
	}
	
	
	/**
	 * 添加后台管理员用户信息
	 */
	public String getinsert(Zm_admin po) {
		int i = udao.insert(po);
		String message="";
		if(i > 0){
			message = "添加成功";
		}else{
			message = "添加失败";
		}
		return message;
	}



	//  按照用户名查询后台管理员  是否存在同名
	public Zm_admin selectUsername(String username) {
		// TODO Auto-generated method stub
		
		return udao.select(username);
	}


// 超级管理员查询所有管理员信息
	public Page selectadmin(int currPageNO) {
		
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
		List<Zm_admin> zmlist = udao.selectAdminByfy(start,size);
		List<Zm_admin> list=new ArrayList<Zm_admin>();
		
		
		
		for (Zm_admin zm_admin : zmlist) {
			String password=zm_admin.getZm_password();
			// md5解密
			String  md5password=MD5Util.convertMD5(password);
			zm_admin.setZm_password(md5password);
			list.add(zm_admin);
		}
		
		
		page.setZmlist(list);
		
		/*page.setZmlist(zmlist);*/
		
		return page;
		
	}


	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return udao.delete(id);
	}


	
}

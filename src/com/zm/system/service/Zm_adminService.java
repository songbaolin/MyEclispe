package com.zm.system.service;

import java.util.List;
import java.util.Map;

import com.zm.system.po.Page;
import com.zm.system.po.Zm_admin;

public interface Zm_adminService {
	//验证登录
	public Zm_admin getlogin(Zm_admin po);
	//查询用户列表
	public List<Zm_admin> getuserList(Zm_admin po);
	//修改后台管理员用户信息  修改密码
	public void getupdate(Zm_admin po, String newpassword);
	//添加后台管理员用户信息
	public String getinsert(Zm_admin po);
	//  后台按照用户名查询管理员是否存在  若有同名管理员  不允许添加
	public Zm_admin selectUsername(String username);
	
	// 超级管理员查询所有管理员信息
	public Page selectadmin(int parseInt);
	  
	 public int delete(Integer id);
	
}

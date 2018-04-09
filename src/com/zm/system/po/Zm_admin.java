package com.zm.system.po;

import java.util.ArrayList;
import java.util.List;

//  后台管理员的实体类

public class Zm_admin {
	
	private Integer  zm_id;//主键
	private String zm_name;//管理员姓名
	private String zm_password;  //  管理员密码
	private String  zm_city;    //  管理员所在的城市
	private  List<User> userlist=new ArrayList<User>();  // 与客户表的关联属性
	public  Zm_admin(){}
	public Integer getZm_id() {
		return zm_id;
	}
	public void setZm_id(Integer zm_id) {
		this.zm_id = zm_id;
	}
	public String getZm_name() {
		return zm_name;
	}
	public void setZm_name(String zm_name) {
		this.zm_name = zm_name;
	}
	public String getZm_password() {
		return zm_password;
	}
	public void setZm_password(String zm_password) {
		this.zm_password = zm_password;
	}
	public String getZm_city() {
		return zm_city;
	}
	public void setZm_city(String zm_city) {
		this.zm_city = zm_city;
	}
	public List<User> getUserlist() {
		return userlist;
	}
	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}
	public Zm_admin(Integer zm_id, String zm_name, String zm_password,
			String zm_city, List<User> userlist) {
		super();
		this.zm_id = zm_id;
		this.zm_name = zm_name;
		this.zm_password = zm_password;
		this.zm_city = zm_city;
		this.userlist = userlist;
	}
	@Override
	public String toString() {
		return "Zm_admin [zm_id=" + zm_id + ", zm_name=" + zm_name
				+ ", zm_password=" + zm_password + ", zm_city=" + zm_city
				+ ", userlist=" + userlist + "]";
	}
	public Zm_admin(String zm_name, String zm_password) {
		super();
		this.zm_name = zm_name;
		this.zm_password = zm_password;
	}
	
	
	
 
}
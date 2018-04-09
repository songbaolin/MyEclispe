package com.zm.system.po;

import java.util.Date;


/**
 * 客户表实体类
 * 
 * */
public class User {
	private Integer id;    //顾客ID
	private  String name;   //姓名
	private String sex;   //性别   是否全款购车
	private String mobile;   //  手机号
	private Integer city;    //  城市  此处为Integer  与管理员地对应
	private String carBrand;   //  品牌
	private  String carType;      //  车型
	private String buyInterest;    //  购买意向
	private Object createTime;          // 保留字段
	private  Zm_admin admin;     //与管理员表的关联属性 
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Integer getCity() {
		return city;
	}
	public void setCity(Integer city) {
		this.city = city;
	}
	
	public String getCarBrand() {
		return carBrand;
	}
	public void setCarBrand(String carBrand) {
		this.carBrand = carBrand;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public String getBuyInterest() {
		return buyInterest;
	}
	public void setBuyInterest(String buyInterest) {
		this.buyInterest = buyInterest;
	}
	public Zm_admin getAdmin() {
		return admin;
	}
	public void setAdmin(Zm_admin admin) {
		this.admin = admin;
	}
	public User(){}

	public Object getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Object createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", sex=" + sex
				+ ", mobile=" + mobile + ", city=" + city + ", carBrand="
				+ carBrand + ", carType=" + carType + ", buyInterest="
				+ buyInterest + ", createTime=" + createTime + ", admin="
				+ admin + "]";
	}

	public User(Integer id, String name, String sex, String mobile,
			Integer city, String carBrand, String carType, String buyInterest,
			Object createTime, Zm_admin admin) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.mobile = mobile;
		this.city = city;
		this.carBrand = carBrand;
		this.carType = carType;
		this.buyInterest = buyInterest;
		this.createTime = createTime;
		this.admin = admin;
	}

	
}
	
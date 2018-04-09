package com.zm.system.po;

public class Customer {

	private Integer c_id ;
	private String c_name ;
	private String c_mobile ;   //   电商用户的手机号
	private String c_sex;     //   电商用户的性别
	private String c_city   ;    //   电商用户所在的城市
	private String c_carBrand ;  //   电商用户的车型
	private String c_carType  ;  //   电商用户的车系
	private String c_address  ; //   电商用户的寄票地址
	private Object c_createTime ;   //  电商用户信息的创建时间
	public Integer getC_id() {
		return c_id;
	}
	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_mobile() {
		return c_mobile;
	}
	public void setC_mobile(String c_mobile) {
		this.c_mobile = c_mobile;
	}
	
	public String getC_sex() {
		return c_sex;
	}
	public void setC_sex(String c_sex) {
		this.c_sex = c_sex;
	}
	public String getC_city() {
		return c_city;
	}
	public void setC_city(String c_city) {
		this.c_city = c_city;
	}
	public String getC_carBrand() {
		return c_carBrand;
	}
	public void setC_carBrand(String c_carBrand) {
		this.c_carBrand = c_carBrand;
	}
	public String getC_carType() {
		return c_carType;
	}
	public void setC_carType(String c_carType) {
		this.c_carType = c_carType;
	}
	public String getC_address() {
		return c_address;
	}
	public void setC_address(String c_address) {
		this.c_address = c_address;
	}
	public Object getC_createTime() {
		return c_createTime;
	}
	public void setC_createTime(Object c_createTime) {
		this.c_createTime = c_createTime;
	}
	
	public Customer() {
		super();
	}
	@Override
	public String toString() {
		return "Customer [c_id=" + c_id + ", c_name=" + c_name + ", c_mobile="
				+ c_mobile + ", c_sex=" + c_sex + ", c_city=" + c_city
				+ ", c_carBrand=" + c_carBrand + ", c_carType=" + c_carType
				+ ", c_address=" + c_address + ", c_createTime=" + c_createTime
				+ "]";
	}
	public Customer(Integer c_id, String c_name, String c_mobile, String c_sex,
			String c_city, String c_carBrand, String c_carType,
			String c_address, Object c_createTime) {
		super();
		this.c_id = c_id;
		this.c_name = c_name;
		this.c_mobile = c_mobile;
		this.c_sex = c_sex;
		this.c_city = c_city;
		this.c_carBrand = c_carBrand;
		this.c_carType = c_carType;
		this.c_address = c_address;
		this.c_createTime = c_createTime;
	}
	
	
	
	
}

package com.zm.system.po;

public class City {
	// 城市的实体类
	private Integer id;
	private String cityName;
	private String cityUrl;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCityUrl() {
		return cityUrl;
	}
	public void setCityUrl(String cityUrl) {
		this.cityUrl = cityUrl;
	}
	@Override
	public String toString() {
		return "City [id=" + id + ", cityName=" + cityName + ", cityUrl="
				+ cityUrl + "]";
	}
	public City(Integer id, String cityName, String cityUrl) {
		super();
		this.id = id;
		this.cityName = cityName;
		this.cityUrl = cityUrl;
	}
	public City(){}
	

}

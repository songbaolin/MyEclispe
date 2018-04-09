package com.zm.system.po;

import java.util.ArrayList;
import java.util.List;

/**
 * 用于User的分页类

 */
public class Page {
	private Integer currPageNO;//当前页号OK
	private Integer perPageSize = 15;//每页显示记录数，默认为2条OK
	private Integer allRecordNO;//总记录数OK
	private Integer allPageNO;//总页数OK
	private List<User> articleList = new ArrayList<User>();//内容OK
	private List<Zm_admin> zmlist=new ArrayList<Zm_admin>();  // 封装 管理员
	private List<Customer> culist=new ArrayList<Customer>();   //  封装电商客户信息
	public List<Customer> getCulist() {
		return culist;
	}
	public void setCulist(List<Customer> culist) {
		this.culist = culist;
	}
	public List<Zm_admin> getZmlist() {
		return zmlist;
	}
	public void setZmlist(List<Zm_admin> zmlist) {
		this.zmlist = zmlist;
	}
	public Page(){}
	public Integer getCurrPageNO() {
		return currPageNO;
	}
	public void setCurrPageNO(Integer currPageNO) {
		this.currPageNO = currPageNO;
	}
	public Integer getPerPageSize() {
		return perPageSize;
	}
	public void setPerPageSize(Integer perPageSize) {
		this.perPageSize = perPageSize;
	}
	public Integer getAllRecordNO() {
		return allRecordNO;
	}
	public void setAllRecordNO(Integer allRecordNO) {
		this.allRecordNO = allRecordNO;
	}
	public Integer getAllPageNO() {
		return allPageNO;
	}
	public void setAllPageNO(Integer allPageNO) {
		this.allPageNO = allPageNO;
	}
	public List<User> getArticleList() {
		return articleList;
	}
	public void setArticleList(List<User> articleList) {
		this.articleList = articleList;
	}
}

package com.zm.system.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.zm.system.po.Zm_admin;

/**
 * DAO接口
 *
 *
 */
public interface Zm_adminMapper {
	//验证登录
	public Zm_admin login(Zm_admin po);
	//查询后台用户列表
	public List<Zm_admin> userList(Zm_admin po);
	//  根据传进来的城市名查询是否有该管理员
	public Zm_admin selectAdminBycname(@Param(value="city") String city);
	//修改后台管理员信息  修改密码
	public int update(Zm_admin po);
	//添加后台管理员  
	public int insert(Zm_admin po);
	//  后台按照用户名查询管理员
	public Zm_admin select(String username);
	
	//  后台查询所有的管理员个数
	public int getAllRecord();
	//  后台分页查询管理员信息
	public List<Zm_admin> selectAdminByfy(@Param(value="start") Integer start,@Param(value="pageSize") Integer pageSize);
	public int delete(Integer id);
}

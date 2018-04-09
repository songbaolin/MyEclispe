package com.zm.system.controller;



import java.util.ArrayList;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;


import com.zm.system.po.Page;
import com.zm.system.po.Zm_admin;
import com.zm.system.service.Zm_adminService;
import com.zm.system.utils.MD5Util;

@Controller  //标注这是一个控制类，类名不能和注解名一样
@RequestMapping("/uc/")   //设置访问路径
public class Zm_adminController {
	/**
	 * 验证登录
	 */
	@Resource
	//定义service类型的属性
	Zm_adminService uservice;
	
	//  进入后台页面
	@RequestMapping(value="/loginindex")
	public String longinindex(){
		
		
		return "/jsp/login.jsp";
	}
	
	
	
	
	
	
	
	@RequestMapping("login.action")//为方法设置访问路径
	//登录
	public String ulogin(HttpServletRequest request,HttpSession session,HttpServletResponse response) throws Exception{	
	  	
		//接收页面的值
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		//  md5  加密  然后数据库验证
		String password1 =MD5Util.convertMD5(password);
		Zm_admin po = new Zm_admin();
		//把接收到的值放入po里
		po.setZm_name(username);
		po.setZm_password(password1);
		//调service方法去数据库验证
		Zm_admin pojo = uservice.getlogin(po);
		if(pojo!=null){
			String username1=pojo.getZm_name();
			System.out.println(username1);
			request.getSession().setAttribute("username1", username1);
			request.getSession().setAttribute("pojo", pojo);
			
            return "/jsp/main.jsp";
		}else {
			request.setAttribute("message", "用户名或者密码错误，请重新输入");
			return "jsp/login.jsp";
		}	
	}
	
	/**
	 * 添加后台管理员信息
	 */
	
	@RequestMapping("/insert")//为方法设置访问路径
	public String insert(Zm_admin po,Model model,HttpServletRequest request){
		String temp=(String)request.getSession().getAttribute("username1");
		System.out.println(temp+"======================================");
		
		//  对密码进行md5加密
		String password=po.getZm_password();
		String password1=MD5Util.convertMD5(password);
		System.out.println(password1+"======================");
		po.setZm_password(password1);
		if(temp==null){
			//  说明没登陆  不允许操作
			model.addAttribute("message","您未登陆,请先登陆");
			return "/jsp/index.jsp";
		
		}
		if(!temp.equals("m15655806388@163.com")){
			//  说明不是超级管理员  不允许添加
			model.addAttribute("message","你不是超级管理员，没有权限添加");
			return "/jsp/index.jsp";
			
		}
		
		
		// 按用户名查询用户  看是否有同名  若存在  不允许添加
		String username=po.getZm_name();
		Zm_admin pojo1= uservice.selectUsername(username);
		if(pojo1!=null){
			model.addAttribute("message", "用户名重复，请重试");
			return "jsp/index.jsp";
			
		}
		
		
	//  先查询用户是否存在  若存在  不允许插入
		Zm_admin pojo = uservice.getlogin(po);
		if(pojo!=null){
			model.addAttribute("message","用户已经存在，请勿重复添加");
			return "jsp/index.jsp";
		}
		
		String inserUser = uservice.getinsert(po);
		model.addAttribute("message", "添加用户成功！");
		
		return "jsp/index.jsp";
		
	}
	
	/**
	 * 修改后台管理员信息  修改密码
	 */
	@RequestMapping(value="/update")//为方法设置访问路径
	public String update(Zm_admin po,String newpassword,Model model,HttpServletRequest  request){
		// 对传进来的旧密码进行md5加密
		String password=MD5Util.convertMD5(po.getZm_password());
		po.setZm_password(password);
		//  对传进来的新密码进行md5加密
		String  newpassword1=MD5Util.convertMD5(newpassword);
		String temp=(String)request.getSession().getAttribute("username1");
		if(temp==null){
			//  说明没登陆  不允许操作
			model.addAttribute("message","您还未登陆，请先登陆");
			return "jsp/index.jsp";
		
		}
		if(!temp.equals("m15655806388@163.com")){
			//  说明不是超级管理员  不允许添加
			model.addAttribute("message","你不是超级管理员，没有权限修改密码");
			return "jsp/index.jsp";
			
		}
		
		//  先查询该用户是否存在
		Zm_admin pojo = uservice.getlogin(po);
		if(pojo==null){
			model.addAttribute("message","修改失败,该用户不存在,请重试");
			return "index";
		}
		//  不为空  则用户存在 修改密码
		int userid=pojo.getZm_id();
		po.setZm_id(userid);
		uservice.getupdate(po,newpassword1);		
		
		 model.addAttribute("message", "修改密码成功");
		//修改信息后留在当前页
		 return "index";
	}

	
	
	
	//  后台 超级管理员  分页查询管理员信息
	@RequestMapping(value="selectAdmin")
	public @ResponseBody Map<String,Object> selectAdmin(Model model,HttpServletRequest request){
		String temp=(String) request.getSession().getAttribute("username1");
		if(temp==null|| !temp.equals("m15655806388@163.com")){
			//构造Map对象
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			List<Zm_admin> list=new ArrayList<Zm_admin>();
			Zm_admin  zm_admin=new Zm_admin();
			zm_admin.setZm_name("您还没有登陆");
			zm_admin.setZm_password("或者您不是超级管理员");
			zm_admin.setZm_city("没有权限查看");
			list.add(zm_admin);
			map.put("total",list.size());
			map.put("rows",list);
			return map;
		}
		
		//获取当前页号
		String currPageNO = request.getParameter("page");//核心
		if(currPageNO == null || currPageNO.trim().length()==0){
			currPageNO = "1";//默认值
		}
		
		//调用业务层
		Page page = uservice.selectadmin(Integer.parseInt(currPageNO));
		
		//构造Map对象
		Map<String,Object> map = new LinkedHashMap<String,Object>();
		map.put("total",page.getAllRecordNO());
		map.put("rows",page.getZmlist());
	
		return map;
	}
	
	
//  后台注销用户
	@RequestMapping(value="quit.action")
	public String quit(HttpSession  session){
		session.removeAttribute("username1");
		String aa=(String)session.getAttribute("username1");
		if(aa==null){
			
		}
		return "/jsp/main.jsp";
	}
	
//  后台退出到首页
	@RequestMapping(value="quitindex.action")
	public String quitindex(HttpSession  session,HttpServletRequest request,HttpServletResponse response) throws Exception, Exception{
		session.removeAttribute("username1");
		return "/jsp/login.jsp";
	}
}


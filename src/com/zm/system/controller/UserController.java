package com.zm.system.controller;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.montnets.mwgate.common.GlobalParams;
import com.montnets.mwgate.smsutil.ConfigManager;
import com.montnets.mwgate.smsutil.SmsSendConn;
import com.zm.system.message.SDKDemo;
import com.zm.system.po.Page;
import com.zm.system.po.User;
import com.zm.system.po.Zm_admin;
import com.zm.system.service.UserService;
//前台用户的控制层
@Controller   
@RequestMapping(value="/user")
public class UserController {
	
	//定义service类型的属性
	@Autowired
	//定义service类型的属性
	UserService uservice;
	
	
	//  只允许post请求提交
	//  向客户表插入客户提交的信息
	@RequestMapping(value="/usersubmit")     /* ,method=RequestMethod.POST*/
	public String usersubmit(User user,Model model,HttpSession session,HttpServletRequest request){
		
		String token = request.getParameter("Reqtoken");// 获取表单上面的时间戳T1   
        String tokenInSession  =  ""+session.getAttribute("token");  
          
        System.out.println("Session in Token   session里面的token========: " + tokenInSession);  
        System.out.println("表单的Token:" + token+"\n------------");  
  
        if (tokenInSession!=null && token!=null && token.equals(tokenInSession)) {   
    		String name=user.getName();
    		//  向用户表中插入一条信息
    		uservice.insert(user);
    		//插入成功后  给用户发送信息
    		String mobile=user.getMobile();
    		SDKDemo  aa=new SDKDemo();
    		// 用户账号
    				String userid = "E1025W";

    				// 创建全局参数
    				GlobalParams globalParams = new GlobalParams();
    				// 设置请求路径
    				globalParams.setRequestPath("/sms/v2/std/");
    				// 设置是否需要日志 1:需要日志;0:不需要日志
    				globalParams.setNeedLog(1);
    				// 设置全局参数
    				ConfigManager.setGlobalParams(globalParams);

    				// 设置用户账号信息
    				aa.setAccountInfo();                            //ok

    				// 是否保持长连接
    				boolean isKeepAlive = true;
    				// 实例化短信处理对象
    				SmsSendConn smsSendConn = new SmsSendConn(isKeepAlive);

    				// 单条发送
    				aa.singleSend(smsSendConn, userid,mobile); 
    				aa.removeAccount(userid);
    		System.out.println("短信接口执行了"+"===============================================");
    		
            session.removeAttribute("token");  
        } else { //如果禁止缓存,返回会 重新请求，tokenInSession  是不会为空的  
              
            System.out.println("重复提交，或者有错误");//或者有错误，直接访问servlet等  
            
        }  
        return "redirect:/Carindex/code.jsp";
	}
	
//  分页查询数据  
	@RequestMapping(value="kankan")
	public @ResponseBody Map<String,Object> select(Model model,HttpServletRequest request){
		String temp=(String) request.getSession().getAttribute("username1");
		if(temp==null){
			//构造Map对象
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			User  user=new User();
			List<User> list=new ArrayList<User>();
			user.setName("你还没有登陆");
			user.setCarBrand("请先登陆");
			list.add(user);
			map.put("total",list.size());
			map.put("rows",list);
			return map;
		}
		
		
		//  如果用户登陆了   拿到该用户所在的城市
		Zm_admin  admin=(Zm_admin) request.getSession().getAttribute("pojo");
		String city=admin.getZm_city();//  获取管理员所在的城市
		Integer  zm_adminid=admin.getZm_id();//获取管理员的ID   用于后面根据管理员ID 知道客户city 的int  值  再根据客户的int 值  按城市i查询总记录数
		
		//  根据该管理员所在的城市查询 该城市的客户信息
		
		//获取当前页号
		String currPageNO = request.getParameter("page");//核心
		if(currPageNO == null || currPageNO.trim().length()==0){
			currPageNO = "1";//默认值
		}
		
		if(city.equals("超级管理员")){
			//  说明是超级管理员可以查看所有的城市
			Page page = uservice.show(Integer.parseInt(currPageNO));
			//构造Map对象
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			map.put("total",page.getAllRecordNO());
			map.put("rows",page.getArticleList());
		
			return map;
		}
		
		
		
		//  不是超级管理员的话   就按照管理员所在城市查询
		//调用业务层
		Page page = uservice.show(Integer.parseInt(currPageNO),city,zm_adminid);
		//构造Map对象
		Map<String,Object> map = new LinkedHashMap<String,Object>();
		map.put("total",page.getAllRecordNO());
		map.put("rows",page.getArticleList());
	
		return map;
	}
	

//  后台按城市模糊查询客户信息
	@RequestMapping(value="selectcity")
	public @ResponseBody Map<String,Object> selectcity(Model model,HttpServletRequest request) throws Exception{
		//  datagrid  传入的test参数会乱码  此处 先转码      //  test  前台传入的城市
		String test=request.getParameter("test");
		if(test==null){
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			return map;
		}
		String test1 = URLDecoder.decode(test, "UTF-8");  
		
		String temp=(String) request.getSession().getAttribute("username1");
		//  判断是否是超级管理员
		if(temp==null||!temp.equals("m15655806388@163.com")){
			//构造Map对象
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			User  user=new User();
			List<User> list=new ArrayList<User>();
			user.setName("你还没有登陆");
			user.setCarBrand("或者你不是超级管理员");
			user.setBuyInterest("没有权限查询");
			list.add(user);
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
		Page page = uservice.selectCity(Integer.parseInt(currPageNO), test1);
		
		if(page.getArticleList()==null){
			//  说明没有输入的该城市的信息
			User user=new User();
			user.setName("没有您要查询的城市信息");
			user.setCarBrand("请重新输入");
			List<User> ulist=new ArrayList<User>();
			Map<String,Object> map =new LinkedHashMap<String,Object>();
			ulist.add(user);
			map.put("total",ulist.size());
			map.put("rows",ulist);
			return map;
			
		}
		
		//构造Map对象
		Map<String,Object> map = new LinkedHashMap<String,Object>();
		map.put("total",page.getAllRecordNO());
		map.put("rows",page.getArticleList());
	
		return map;
	}
	
	
	
	
	
	//  后台按时间分页查询客户信息
	@RequestMapping(value="/selectDate")
	public @ResponseBody Map<String,Object> selectDate(Model model,HttpServletRequest request) throws Exception{
		
		String createTime=request.getParameter("createTime");
		if(createTime==null){
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			return map;
		}
		
		
		String temp=(String) request.getSession().getAttribute("username1");
		
		//  判断是否是超级管理员
		if(temp==null||!temp.equals("m15655806388@163.com")){
			//构造Map对象
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			User  user=new User();
			List<User> list=new ArrayList<User>();
			user.setName("你还没有登陆");
			user.setCarBrand("或者你不是超级管理员");
			user.setBuyInterest("没有权限查询");
			list.add(user);
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
		Page page = uservice.selectDate(Integer.parseInt(currPageNO), createTime);
		
		if(page.getArticleList()==null){
			//  说明没有输入的该城市的信息
			User user=new User();
			user.setName("没有您要查询的日期信息");
			user.setCarBrand("请重新输入");
			List<User> ulist=new ArrayList<User>();
			Map<String,Object> map =new LinkedHashMap<String,Object>();
			ulist.add(user);
			map.put("total",ulist.size());
			map.put("rows",ulist);
			return map;
			
		}
		
		//构造Map对象
		Map<String,Object> map = new LinkedHashMap<String,Object>();
		map.put("total",page.getAllRecordNO());
		map.put("rows",page.getArticleList());
	
		return map;
	}
	


}

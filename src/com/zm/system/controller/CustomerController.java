package com.zm.system.controller;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.montnets.mwgate.common.GlobalParams;
import com.montnets.mwgate.smsutil.ConfigManager;
import com.montnets.mwgate.smsutil.SmsSendConn;
import com.zm.system.message.SDKDemo;
import com.zm.system.po.Customer;
import com.zm.system.po.Page;
import com.zm.system.service.CustomerService;

//电商部分的控制层

@Controller
@RequestMapping(value="/customer")
public class CustomerController {
	//  注入Service
	@Autowired
	private CustomerService  customerService;
	
	//向电商用户表中插入数据
	@RequestMapping(value="/add")
	public String add(Customer  customer,Model model,HttpSession session){
		System.out.println("到达控制层了===================");
		System.out.println(customer.getC_name()+"====================");
		
	//  向用户表中插入一条信息
		customerService.insert(customer);
		//插入成功后  给用户发送信息
		String mobile=customer.getC_mobile();
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
			
		
		String name=customer.getC_name();	
		session.setAttribute("message", "欢迎您:");
		session.setAttribute("name",name);
		/*return "redirect:/Customer/mobile/mobileindex.jsp";*/
		return "redirect:/Customer/code.jsp";
	}
	
	//  超级管理员分页查询电商部分客户信息
//  分页查询数据  
	@RequestMapping(value="selectCustomerBypage")
	public @ResponseBody Map<String,Object> select(Model model,HttpServletRequest request){
		String temp=(String) request.getSession().getAttribute("username1");
		if(temp==null||!temp.equals("阜南")){
			//构造Map对象
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			Customer  customer=new Customer();
			List<Customer> list=new ArrayList<Customer>();
			customer.setC_name("你还没有登陆");
			customer.setC_carBrand("或者没有权限查看");
			list.add(customer);
			map.put("total",list.size());
			map.put("rows",list);
			return map;
		}
		//获取当前页号
		String currPageNO = request.getParameter("page");//核心
		if(currPageNO == null || currPageNO.trim().length()==0){
			currPageNO = "1";//默认值
		}
		
		
		//  说明是超级管理员可以查看所有的城市
		Page page = customerService.selectCustomerByPage(Integer.parseInt(currPageNO));
		//构造Map对象
		Map<String,Object> map = new LinkedHashMap<String,Object>();
		map.put("total",page.getAllRecordNO());
		map.put("rows",page.getCulist());
		
		return map;
	}
	
	

	//  超级管理员按时间查询电商信息
	
	@RequestMapping(value="/CustomerselectDate")
	public @ResponseBody Map<String,Object> selectDate(Model model,HttpServletRequest request) throws Exception{
		
		String createTime=request.getParameter("createTime");
		if(createTime==null){
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			return map;
		}
		
		
		String temp=(String) request.getSession().getAttribute("username1");
		
		//  判断是否是超级管理员
		if(temp==null||!temp.equals("阜南")){   //m15655806388@163.com
			//构造Map对象
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			Customer  customer=new Customer();
			List<Customer> list=new ArrayList<Customer>();
			customer.setC_name("你还没有登陆");
			/*customer.setC_carBrand("或者你不是超级管理员");*/
			customer.setC_carType("或者没有权限查询");
			list.add(customer);
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
		Page page = customerService.selectDate(Integer.parseInt(currPageNO), createTime);
		
		if(page.getArticleList()==null){
			//  说明没有输入的该城市的信息
			Customer  customer=new Customer();
			customer.setC_name("没有您要查询的日期信息");
			customer.setC_carBrand("请重新输入");
			List<Customer> ulist=new ArrayList<Customer>();
			Map<String,Object> map =new LinkedHashMap<String,Object>();
			ulist.add(customer);
			map.put("total",ulist.size());
			map.put("rows",ulist);
			return map;
			
		}
		
		//构造Map对象
		Map<String,Object> map = new LinkedHashMap<String,Object>();
		map.put("total",page.getAllRecordNO());
		map.put("rows",page.getCulist());
	
		return map;
	}
	
	

	
}

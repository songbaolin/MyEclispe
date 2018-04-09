package com.zm.system.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zm.system.po.City;
import com.zm.system.service.CityService;


//前台用户的控制层
@Controller   
@RequestMapping(value="/city")
public class CityController {
	//  注入CityService
	@Autowired
	CityService  cityService;
	
	// 前端用户选择的城市  提交过来  根据提交过来的城市  选择跳转的页面
	@RequestMapping(value="/localhostCity")
	public String localhostCity(HttpServletRequest request){
		//  从前台页面获取到顾客选择的城市
		
		String  name=request.getParameter("s_county");
		if(name==null|| name.equals("")){
			return "index";
		}
		
		
		
		
		int  index=name.lastIndexOf("-"); 
		String  city=name.substring(index+1); 
		/*String city=request.getParameter("cmbArea");*/
		System.out.println("截取字符串之后的城市++++++++++++++++++++++++++++++++"+city);
		//  去数据库查询该城市是否存在
		List<City> citylist=cityService.selectCity(city);
		if(citylist.size()==0){
			System.out.println("city为空=========");
			return "/landingpage/pc/pcindex.jsp";
		}
		City city1=citylist.get(0);
		
		String cityUrl=city1.getCityUrl();
		String url="/landingpage";
		System.out.println(cityUrl+"============");
		String newUrl=url+cityUrl;
		System.out.println(newUrl+"       ----newUrl=========================");
		
		
		
		
		
		System.out.println(city+"=========================");
		return cityUrl;
	}
	
	
	//  后台管理员  添加要开展活动的城市
	@RequestMapping(value="/addcity")
	public String addcity(City  city,Model model,HttpServletRequest request)throws Exception{
		String name=(String) request.getSession().getAttribute("username1");
		if(name==null){
			model.addAttribute("message","您还没登陆，请先登陆");
			return "index";
			
		}
		if(!name.equals("m15655806388@163.com")){
			model.addAttribute("message","您不是超级管理员，无权操作");
			return "index";
		}
		
		//调用Service向城市表  插入数据
		//  先查询该city是否存在 
		String cityName=city.getCityName();
		List<City> citylist=(List<City>) cityService.selectCity(cityName);
		if(citylist.size()!=0){
			model.addAttribute("message","该城市已经存在，请勿重复添加");
			return "index";
		}
		int  aa=cityService.addcity(city);
		String aa1=Integer.toString(aa);
		System.out.println(aa+"====================");
		model.addAttribute("message","添加城市信息成功");
		return "index";
	}
	
	

}
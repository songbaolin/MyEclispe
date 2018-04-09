package Interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

//登录认证的拦截器  
public class LoginInterceptor implements HandlerInterceptor{  

	private List<String> exceptUrls;  
	  
    public List<String> getExceptUrls() {  
        return exceptUrls;  
    }  
  
    public void setExceptUrls(List<String> exceptUrls) {  
        this.exceptUrls = exceptUrls;  
    }  
  //执行Handler方法之前执行  
  //用于身份认证、身份授权  
  //比如身份认证，如果认证通过表示当前用户没有登陆，需要此方法拦截不再向下执行  

  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		

		//得到请求的url
		String url = request.getRequestURI();
		
		//判断是否是公开 地址
		//实际开发中需要公开 地址配置在配置文件中
		//...
		if(url.indexOf("login.action")>=0){
			//如果是公开 地址则放行
			return true;                  //usersubmit
		}
		if(url.indexOf("usersubmit.action")>=0){
			//如果是公开 地址则放行
			return true;              
		}
		if(url.indexOf("localhostCity.action")>0){
			
			return true;
		}
		if(url.indexOf("loginindex.action")>0){
			return true;
		}
		if(url.indexOf("customer/add.action")>0){
			return true;
		}
		
		
		//判断用户身份在session中是否存在
		HttpSession session = request.getSession();
		String usercode = (String) session.getAttribute("username1");
		//如果用户身份在session中存在放行
		if(usercode!=null){
			return true;
		}
		//执行到这里拦截，跳转到登陆页面，用户进行身份认证
		request.setAttribute("message","你还未登陆 ,请先登陆");
		request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
		
		//如果返回false表示拦截不继续执行handler，如果返回true表示放行
		return false;
	
	}
  
  
  //进入Handler方法之后，返回modelAndView之前执行  
  //应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里  
  //传到视图，也可以在这里统一指定视图  
  public void postHandle(HttpServletRequest request, HttpServletResponse response,  
          Object handler, ModelAndView modelAndView) throws Exception {  
        
  }  
    
  //执行Handler完成执行此方法  
  //应用场景：统一异常处理，统一日志处理  
 
  public void afterCompletion(HttpServletRequest request, HttpServletResponse response,  
          Object handler, Exception ex)  
          throws Exception {  
        
  }


}  

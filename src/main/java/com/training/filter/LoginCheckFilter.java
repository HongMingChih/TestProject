package com.training.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.training.model.Member;

public class LoginCheckFilter implements Filter {
		
	@Override
	public void init(FilterConfig config) throws ServletException { }

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
		throws IOException, ServletException {
		// 檢查 Sesssion Scope 中是否存在登入的使用者 ("account").
		HttpServletRequest httpRequest = (HttpServletRequest)request;		
		HttpSession session = httpRequest.getSession();
		
		Member account = (Member) session.getAttribute("account");
		String message=	(String) session.getAttribute("message");
		if (message!=null) {
			String requestURI = httpRequest.getRequestURI();
			String action = request.getParameter("action");
			 if(requestURI.endsWith("FrontendAction.do") && "vendingBuyViewMessage".equals(action)) {
	            	chain.doFilter(request,response);
	            }else {
	            	session.removeAttribute("message");	
	            	session.removeAttribute("buyGoodsRtn");	
	        		session.removeAttribute("buyGoodsList");	
	        		
				}
		}
		
        // 如果存在就放行.
        if(account != null){
        	String requestURI = httpRequest.getRequestURI();
        	String action = request.getParameter("action");
        	//判斷是否為查詢分頁
            if(!requestURI.endsWith("BackendAction.do") || !"queryGood".equals(action)) {
            	session.removeAttribute("formCond");
            } 
            	chain.doFilter(request,response);
        } else {
            // 如果不存在就必須先判斷目前是否為登入/註冊的請求,是的話則進行後續帳密驗證比對 LoginAction
        	String requestURI = httpRequest.getRequestURI();
        	String action = request.getParameter("action");
            if(requestURI.endsWith("LoginAction.do") && "login".equals(action)||requestURI.endsWith("RegisterAction.do") && "register".equals(action)) {
            	
            	chain.doFilter(request,response);
            	
            } else {
                // 不是登入驗證的請求或是SessionTimeOut,轉向到 "/login.html" 要求重新登入.            	
                RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
                dispatcher.forward(request,response);
            }            
        }
	}
	
	@Override
	public void destroy() { }
}
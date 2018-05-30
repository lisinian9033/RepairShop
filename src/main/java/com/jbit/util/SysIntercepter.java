package com.jbit.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 *通过判断session是否有值进行拦截
 */
public class SysIntercepter extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session=request.getSession();
		if(session.getAttribute("user")==null){
			response.sendRedirect("pages/401.jsp");
			return false;//false阻止 
		}
		return true; //true通过 
	}
}

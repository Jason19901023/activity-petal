package com.wemalltech.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.wemalltech.dto.MenuDto;
import com.wemalltech.env.ApplicationEnv;

public class ApplicationFilter implements Filter{
	
	private WebApplicationContext wac;
	
	private ApplicationEnv applicationEnv;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.wac = WebApplicationContextUtils.getRequiredWebApplicationContext(filterConfig.getServletContext());
		this.applicationEnv = wac.getBean(ApplicationEnv.class);
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//应用程序环境数据
		request.setAttribute("env", applicationEnv);
		//当前访问的菜单项
		String menuAutoidStr = request.getParameter("menuAutoid");
		if(StringUtils.isNotBlank(menuAutoidStr)) {
			int menuAutoid = Integer.parseInt(menuAutoidStr);
			MenuDto virtualRootMenu = applicationEnv.getVirtualRootMenu();
			MenuDto visitedMenu = virtualRootMenu.getMenuDtoMap().get(menuAutoid);
			request.setAttribute("visitedMenu", visitedMenu);
		}
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}

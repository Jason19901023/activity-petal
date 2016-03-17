package com.wemalltech.env;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

import com.wemalltech.dto.MenuDto;
import com.wemalltech.service.MenuService;

@Component
public class ApplicationEnv {
	private static final Logger logger = LoggerFactory.getLogger(ApplicationEnv.class);
	
	private ApplicationContext applicationContext;
	
	private MenuDto virtualRootMenu;
	
	@Resource
	private MenuService menuService;
	
	public void init(ApplicationContext applicationContext) {
		_init(applicationContext);
		initMenu();
	}
	
	
	private void _init(ApplicationContext applicationContext) {
		logger.info("开始应用程序初始化...");
		this.applicationContext = applicationContext;
	}

	private void initMenu() {
		this.virtualRootMenu = menuService.getTreeMenus();
		logger.info("菜单列表初始化完成");
	}


	public MenuDto getVirtualRootMenu() {
		return virtualRootMenu;
	}
	
}

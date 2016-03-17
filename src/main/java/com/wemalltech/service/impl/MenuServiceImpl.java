package com.wemalltech.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.wemalltech.bean.Menu;
import com.wemalltech.dao.MenuDao;
import com.wemalltech.dto.MenuDto;
import com.wemalltech.service.MenuService;

@Service
public class MenuServiceImpl  implements MenuService {
	@Resource
	private MenuDao menuDao;

	@Override
	public MenuDto getTreeMenus() {
		Example example = new Example(Menu.class);
		example.createCriteria().andEqualTo("flag", 0);
		List<Menu> menuList = menuDao.selectByExample(example);
		List<MenuDto> menuDtoList = copyMenuList(menuList);
		MenuDto virtualRootMenu = new MenuDto();
		virtualRootMenu.setAutoid(-1);
		setMenuDtoMap(virtualRootMenu,menuDtoList);
		tree(virtualRootMenu, menuDtoList);
		return virtualRootMenu;
	}
	

	private List<MenuDto> copyMenuList(List<Menu> menuList) {
		List<MenuDto> menuDtoList = new ArrayList<MenuDto>();
		for(Iterator<Menu> iter=menuList.iterator(); iter.hasNext();) {
			Menu menu = iter.next();
			MenuDto menuDto = new MenuDto(menu);
			menuDtoList.add(menuDto);
		}
		return menuDtoList;
	}
	

	private void setMenuDtoMap(MenuDto virtualRootMenu, List<MenuDto> menuDtoList) {
		Map<Integer, MenuDto> menuDtoMap = new HashMap<Integer, MenuDto>();
		virtualRootMenu.setMenuDtoMap(menuDtoMap);
		for(Iterator<MenuDto> iter=menuDtoList.iterator(); iter.hasNext();) {
			MenuDto menuDto = iter.next();
			menuDtoMap.put(menuDto.getAutoid(), menuDto);
			menuDto.setMenuDtoMap(menuDtoMap);
		}
		
	}

	private void tree(MenuDto menuDto, List<MenuDto> menuDtoList) {
		boolean leafFlag = true;
		for(Iterator<MenuDto> iter=menuDtoList.iterator(); iter.hasNext();) {
			MenuDto item = iter.next();
			if(menuDto.getAutoid() == item.getParentAutoid()) {
				if(menuDto.getChildren() == null) {
					menuDto.setChildren(new ArrayList<MenuDto>());
				}
				menuDto.getChildren().add(item);
				if(leafFlag) {
					leafFlag = false;
				}
				if(item.getParents() == null) {
					item.setParents(new ArrayList<MenuDto>());
				}
				if(menuDto.getParents() !=null && menuDto.getParents().size()>0) {
					item.getParents().addAll(menuDto.getParents());
				}
				item.getParents().add(menuDto);
				tree(item, menuDtoList);
			}
		}
		menuDto.setLeafFlag(leafFlag);
		if(menuDto.getChildren() != null) {
			Collections.sort(menuDto.getChildren());
		}
	}


}

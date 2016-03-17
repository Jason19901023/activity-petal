package com.wemalltech.dto;

import java.util.List;
import java.util.Map;

import com.wemalltech.bean.Menu;

public class MenuDto extends Menu implements Comparable<MenuDto>{
	private boolean leafFlag;
	
	private List<MenuDto>children;
	
	private List<MenuDto> parents;		//从最上层往下依次排列
	
	private Map<Integer, MenuDto> menuDtoMap;
	
	public MenuDto() {
	}
	
	public MenuDto(Menu menu) {
		super(menu);
	}

	public boolean isLeafFlag() {
		return leafFlag;
	}

	public void setLeafFlag(boolean leafFlag) {
		this.leafFlag = leafFlag;
	}

	public List<MenuDto> getChildren() {
		return children;
	}

	public void setChildren(List<MenuDto> children) {
		this.children = children;
	}
	
	public List<MenuDto> getParents() {
		return parents;
	}

	public void setParents(List<MenuDto> parents) {
		this.parents = parents;
	}

	@Override
	public int compareTo(MenuDto o) {
		return this.getRanking()-o.getRanking();
	}

	public Map<Integer, MenuDto> getMenuDtoMap() {
		return menuDtoMap;
	}

	public void setMenuDtoMap(Map<Integer, MenuDto> menuDtoMap) {
		this.menuDtoMap = menuDtoMap;
	}
	
	
}

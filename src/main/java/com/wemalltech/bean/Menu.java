package com.wemalltech.bean;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.beans.BeanUtils;

/**
 * 菜单
 * @author zqs
 *
 */
public class Menu {
	@Id
	@GeneratedValue(generator = "JDBC")
	private int autoid;
	
	private String name;	//名称
	
	private int parentAutoid;		//父菜单autoid
	
	private String icon;	//抽象图标表示，依据前台系统可能为fontClass、url、base64编码等
	
	private String linkUrl;	 //链接地址
	
	private int ranking;	//排序
	
	private int status;	//菜单状态	0：启用		1：禁用
	
	private int flag;	//删除标志	0：正常		1：已删除

	public Menu() {
		
	}
	
	public Menu(Menu menu) {
		BeanUtils.copyProperties(menu, this);
	}

	public int getAutoid() {
		return autoid;
	}

	public void setAutoid(int autoid) {
		this.autoid = autoid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getParentAutoid() {
		return parentAutoid;
	}

	public void setParentAutoid(int parentAutoid) {
		this.parentAutoid = parentAutoid;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public int getRanking() {
		return ranking;
	}

	public void setRanking(int ranking) {
		this.ranking = ranking;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	@Override
	public String toString() {
		String value = String.format("{autoid:%d, name:%s, parentAutoid:%d, icon:%s, linkUrl:%s, ranking: %d, status:%d, flag:%d}", autoid, name, parentAutoid, icon, linkUrl, ranking, status, flag);
		return value;
	}
}

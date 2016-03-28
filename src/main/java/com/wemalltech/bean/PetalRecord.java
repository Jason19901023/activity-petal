package com.wemalltech.bean;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * 微信用户获取花瓣记录
 * @author zqs
 *
 */
public class PetalRecord {
	@Id
	@GeneratedValue(generator = "JDBC")
	private int autoid;
	
	private int activityAutoid;	//活动autoid
	
	private String openId;	//用户openId
	
	private Date getDate;	//获取花瓣时间
	
	private String beacon;		//beacon组别
	
	private int flag;	//删除标志	0：正常		1：已删除
	

	public int getActivityAutoid() {
		return activityAutoid;
	}

	public void setActivityAutoid(int activityAutoid) {
		this.activityAutoid = activityAutoid;
	}

	public int getAutoid() {
		return autoid;
	}

	public void setAutoid(int autoid) {
		this.autoid = autoid;
	}

	public String getOpenId() {
		return openId;
	}

	public void setOpenId(String openId) {
		this.openId = openId;
	}

	public Date getGetDate() {
		return getDate;
	}

	public void setGetDate(Date getDate) {
		this.getDate = getDate;
	}

	public String getBeacon() {
		return beacon;
	}

	public void setBeacon(String beacon) {
		this.beacon = beacon;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

}

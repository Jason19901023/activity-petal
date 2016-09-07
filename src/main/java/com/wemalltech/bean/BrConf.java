package com.wemalltech.bean;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * 北人集团花开盛宴配置
 * @author zqs
 *
 */
public class BrConf {
	@Id
	@GeneratedValue(generator = "JDBC")
	private int autoid;
	
	private int activityAutoid;	//活动autoid
	@Transient
	private String activityName;	//每次从数据库连表查出来
	
	private int platformActivityId01; //一号花瓣：抽取营销平台的活动ID
	private int platformActivityId02; //二号花瓣：抽取营销平台的活动ID
	private int platformActivityId03; //三号花瓣：抽取营销平台的活动ID
	private int platformActivityId04; //四号花瓣：抽取营销平台的活动ID
	
	private String tipText02;	//二号花瓣提示框对白
	private String tipText03;	//三号花瓣提示框对白
	
	private double probability04; //摇出四号花瓣并前往营销平台抽奖的几率（百分比，默认100），即经过摇动触发但是有几率不激活不会出现花瓣
	private int timeInterval;	//单位：秒；如果摇不出四号花瓣，则下次可再次尝试摇出四号花瓣的时间间隔，默认5分钟；如果摇出四号花瓣则必中奖，前往营销平台抽奖。
	
	private int flag;	//删除标志	0：正常		1：已删除

	public int getAutoid() {
		return autoid;
	}

	public void setAutoid(int autoid) {
		this.autoid = autoid;
	}

	public int getActivityAutoid() {
		return activityAutoid;
	}

	public void setActivityAutoid(int activityAutoid) {
		this.activityAutoid = activityAutoid;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public int getPlatformActivityId01() {
		return platformActivityId01;
	}

	public void setPlatformActivityId01(int platformActivityId01) {
		this.platformActivityId01 = platformActivityId01;
	}

	public int getPlatformActivityId02() {
		return platformActivityId02;
	}

	public void setPlatformActivityId02(int platformActivityId02) {
		this.platformActivityId02 = platformActivityId02;
	}

	public int getPlatformActivityId03() {
		return platformActivityId03;
	}

	public void setPlatformActivityId03(int platformActivityId03) {
		this.platformActivityId03 = platformActivityId03;
	}

	public int getPlatformActivityId04() {
		return platformActivityId04;
	}

	public void setPlatformActivityId04(int platformActivityId04) {
		this.platformActivityId04 = platformActivityId04;
	}

	public String getTipText02() {
		return tipText02;
	}

	public void setTipText02(String tipText02) {
		this.tipText02 = tipText02;
	}

	public String getTipText03() {
		return tipText03;
	}

	public void setTipText03(String tipText03) {
		this.tipText03 = tipText03;
	}

	public double getProbability04() {
		return probability04;
	}

	public void setProbability04(double probability04) {
		this.probability04 = probability04;
	}

	public int getTimeInterval() {
		return timeInterval;
	}

	public void setTimeInterval(int timeInterval) {
		this.timeInterval = timeInterval;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

}

package com.wemalltech.bean;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * 活动
 * @author zqs
 *
 */
public class Activity {
	@Id
	@GeneratedValue(generator = "JDBC")
	private int autoid;
	
	private String name;	//活动名称
	
	private Date startDate;	//活动开始时间
	
	private Date endDate;		//活动结束时间
	
	private String cardsUrl;	//商场卡包地址
	
	private int platformActivityId;	//营销平台抽奖活动ID
	
	private String platformLotteryUrl;	//营销平台抽奖接口
	
	private int status;	//活动状态	0：启用		1：禁用
	
	private int flag;	//删除标志	0：正常		1：已删除

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

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getCardsUrl() {
		return cardsUrl;
	}

	public void setCardsUrl(String cardsUrl) {
		this.cardsUrl = cardsUrl;
	}

	public int getPlatformActivityId() {
		return platformActivityId;
	}

	public void setPlatformActivityId(int platformActivityId) {
		this.platformActivityId = platformActivityId;
	}

	public String getPlatformLotteryUrl() {
		return platformLotteryUrl;
	}

	public void setPlatformLotteryUrl(String platformLotteryUrl) {
		this.platformLotteryUrl = platformLotteryUrl;
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

}

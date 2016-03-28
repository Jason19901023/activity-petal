package com.wemalltech.bean;

import java.text.ParseException;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;

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
	
	//接收表单输入的属性
	@Transient
	private String dateRange;	
	
	

	public String getDateRange() {
		if(StringUtils.isBlank(this.dateRange)) {
			this.dateRange = DateFormatUtils.format(this.startDate, "yyyy-MM-dd HH:mm:ss")
					+" - "
					+DateFormatUtils.format(this.endDate, "yyyy-MM-dd HH:mm:ss");
		}
		return dateRange;
	}

	public void setDateRange(String dateRange) throws ParseException {
		this.dateRange = dateRange;
		String[] arr = this.dateRange.split(" - ");
		String startDateStr = arr[0].trim();
		String endDateStr = arr[1].trim();
		this.startDate = DateUtils.parseDate(startDateStr, new String[]{"yyyy-MM-dd HH:mm:ss"});
		this.endDate = DateUtils.parseDate(endDateStr, new String[]{"yyyy-MM-dd HH:mm:ss"});
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

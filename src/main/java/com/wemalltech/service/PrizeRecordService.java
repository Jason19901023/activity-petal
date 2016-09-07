package com.wemalltech.service;

import com.wemalltech.bean.PrizeRecord;

public interface PrizeRecordService {
	public PrizeRecord getPrizeRecordByOpenId(int activityAutoid, String openId);
	
	public void createPrizeRecord(PrizeRecord prizeRecord);
	
	public void clearPrizeRecord();
}

package com.wemalltech.service;

import java.util.List;

import com.wemalltech.bean.PetalRecord;

public interface PetalRecordService {
	public List<PetalRecord> getPetalRecordListByOpenId(String openId);
	
	public int unlockPetal(String openId, String beacon);
}

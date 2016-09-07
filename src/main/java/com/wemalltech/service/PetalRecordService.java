package com.wemalltech.service;

import java.util.List;

import com.wemalltech.bean.PetalRecord;

public interface PetalRecordService {
	public List<PetalRecord> getPetalRecordListByOpenId(int activityAutoid, String openId);
	
	public int unlockPetal(int activityAutoid, String openId, String beacon);

	public PetalRecord getPetalRecordByActivityAutoidAndOpenIdAndBeacon(int activityAutoid, String openId, String beacon);

	public void clearPetalRecord();
}

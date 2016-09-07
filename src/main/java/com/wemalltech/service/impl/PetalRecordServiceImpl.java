package com.wemalltech.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.wemalltech.bean.PetalRecord;
import com.wemalltech.dao.PetalRecordDao;
import com.wemalltech.service.PetalRecordService;

@Service
public class PetalRecordServiceImpl  implements PetalRecordService {
	@Resource
	private PetalRecordDao petalRecordDao;

	@Override
	public List<PetalRecord> getPetalRecordListByOpenId(int activityAutoid, String openId) {
		Example example = new Example(PetalRecord.class);
		example.createCriteria()
			.andEqualTo("flag", 0)
			.andEqualTo("activityAutoid", activityAutoid)
			.andEqualTo("openId", openId);
		List<PetalRecord> petalRecordList = petalRecordDao.selectByExample(example);
		return petalRecordList;
	}

	@Override
	public int unlockPetal(int activityAutoid, String openId, String beacon) {
		PetalRecord petalRecord = new PetalRecord();
		petalRecord.setActivityAutoid(activityAutoid);
		petalRecord.setOpenId(openId);
		petalRecord.setBeacon(beacon);
		petalRecord.setGetDate(new Date());
		return petalRecordDao.insert(petalRecord);
	}

	@Override
	public PetalRecord getPetalRecordByActivityAutoidAndOpenIdAndBeacon(
			int activityAutoid, String openId, String beacon) {
		Example example = new Example(PetalRecord.class);
		example.createCriteria()
			.andEqualTo("flag", 0)
			.andEqualTo("activityAutoid", activityAutoid)
			.andEqualTo("openId", openId)
			.andEqualTo("beacon", beacon);
		List<PetalRecord> petalRecordList = petalRecordDao.selectByExample(example);
		if(petalRecordList!=null && petalRecordList.size()>0) {
			return petalRecordList.get(0);
		}
		return null;
	}

	@Override
	public void clearPetalRecord() {
		petalRecordDao.clearPetalRecord();
	}
	
}

package com.wemalltech.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.wemalltech.bean.PrizeRecord;
import com.wemalltech.dao.PrizeRecordDao;
import com.wemalltech.service.PrizeRecordService;

@Service
public class PrizeRecordServiceImpl  implements PrizeRecordService {
	@Resource
	private PrizeRecordDao prizeRecordDao;

	@Override
	public PrizeRecord getPrizeRecordByOpenId(int activityAutoid, String openId) {
		Example example = new Example(PrizeRecord.class);
		example.createCriteria()
			.andEqualTo("flag", 0)
			.andEqualTo("activityAutoid", activityAutoid)
			.andEqualTo("openId", openId);
		List<PrizeRecord> prizeRecordList = prizeRecordDao.selectByExample(example);
		if(prizeRecordList!=null && prizeRecordList.size()>0) {
				return prizeRecordList.get(0);
		}
		return null;
	}

	@Override
	public void createPrizeRecord(PrizeRecord prizeRecord) {
		prizeRecordDao.insert(prizeRecord);
	}

	@Override
	public void clearPrizeRecord() {
		prizeRecordDao.clearPrizeRecord();
	}
}

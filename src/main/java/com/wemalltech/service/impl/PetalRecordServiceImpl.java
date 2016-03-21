package com.wemalltech.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.wemalltech.bean.Menu;
import com.wemalltech.bean.PetalRecord;
import com.wemalltech.dao.PetalRecordDao;
import com.wemalltech.service.PetalRecordService;

@Service
public class PetalRecordServiceImpl  implements PetalRecordService {
	@Resource
	private PetalRecordDao petalRecordDao;

	@Override
	public List<PetalRecord> getPetalRecordListByOpenId(String openId) {
		Example example = new Example(Menu.class);
		example.createCriteria()
			.andEqualTo("flag", 0)
			.andEqualTo("openId", openId);
		List<PetalRecord> petalRecordList = petalRecordDao.selectByExample(example);
		return petalRecordList;
	}

	@Override
	public int unlockPetal(String openId, String beacon) {
		PetalRecord petalRecord = new PetalRecord();
		petalRecord.setOpenId(openId);
		petalRecord.setBeacon(beacon);
		petalRecord.setGetDate(new Date());
		return petalRecordDao.insert(petalRecord);
	}
	
}

package com.wemalltech.dao;

import tk.mybatis.mapper.common.Mapper;

import com.wemalltech.bean.PrizeRecord;

public interface PrizeRecordDao extends Mapper<PrizeRecord> {
	public void clearPrizeRecord();
}

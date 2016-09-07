package com.wemalltech.dao;

import tk.mybatis.mapper.common.Mapper;

import com.wemalltech.bean.PetalRecord;

public interface PetalRecordDao extends Mapper<PetalRecord> {
	public void clearPetalRecord();
}

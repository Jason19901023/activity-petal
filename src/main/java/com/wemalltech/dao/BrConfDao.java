package com.wemalltech.dao;

import java.util.List;

import tk.mybatis.mapper.common.Mapper;

import com.wemalltech.bean.BrConf;

public interface BrConfDao extends Mapper<BrConf> {
	public List<BrConf> getAllBrConfList();
}

package com.wemalltech.dao;

import com.wemalltech.bean.Activity;

import tk.mybatis.mapper.common.Mapper;

public interface ActivityDao extends Mapper<Activity> {
	public Activity test();
}

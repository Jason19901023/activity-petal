package com.wemalltech.service;

import java.util.List;

import com.wemalltech.bean.BrConf;

public interface BrConfService {
	public BrConf getBrConfByAutoid(int autoid);
	
	public List<BrConf> getAllBrConfList();
	
	public int createBrConf(BrConf brConf);

	public void updateBrConf(BrConf brConf);

	public void delBrConfByAutoid(int autoid);
	
	public BrConf getBrConfByActivityAutoid(int activityAutoid);
}

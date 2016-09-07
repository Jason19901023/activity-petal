package com.wemalltech.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.wemalltech.bean.BrConf;
import com.wemalltech.dao.BrConfDao;
import com.wemalltech.service.BrConfService;

@Service
public class BrConfServiceImpl  implements BrConfService {
	@Resource
	private BrConfDao brConfDao;

	@Override
	public BrConf getBrConfByAutoid(int autoid) {
		return brConfDao.selectByPrimaryKey(autoid);
	}

	@Override
	public List<BrConf> getAllBrConfList() {
		return brConfDao.getAllBrConfList();
	}

	@Override
	public int createBrConf(BrConf brConf) {
		return brConfDao.insert(brConf);
	}

	@Override
	public void updateBrConf(BrConf brConf) {
		brConfDao.updateByPrimaryKey(brConf);
	}

	@Override
	public void delBrConfByAutoid(int autoid) {
		brConfDao.deleteByPrimaryKey(autoid);
	}

	@Override
	public BrConf getBrConfByActivityAutoid(int activityAutoid) {
		Example example = new Example(BrConf.class);
		example.createCriteria().andEqualTo("activityAutoid", activityAutoid);
		List<BrConf> brConfList =  brConfDao.selectByExample(example);
		if(brConfList!=null && brConfList.size()>0) {
			return brConfList.get(0);
		}
		return null;
	}
}

package com.wemalltech.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wemalltech.bean.Activity;
import com.wemalltech.dao.ActivityDao;
import com.wemalltech.service.ActivityService;

@Service
public class ActivityServiceImpl  implements ActivityService {
	@Resource
	private ActivityDao activityDao;

	@Override
	public void test() {
		Activity activity = new Activity();
		activity.setName("活动测试");
		activityDao.insert(activity);
		System.out.println(activity.getAutoid());
		Activity activity2 = activityDao.test();
		System.out.println(activity2.getAutoid());
	}
	
	

}

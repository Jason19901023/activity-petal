package com.wemalltech.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

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

	@Override
	public Activity getActivityByAutoid(int autoid) {
		return activityDao.selectByPrimaryKey(autoid);
	}

	@Override
	public List<Activity> getAllActivityList() {
		Example example = new Example(Activity.class);
		example.createCriteria().andEqualTo("flag", 0);
		return activityDao.selectByExample(example);
	}

	@Override
	public int createActivity(Activity activity) {
		return activityDao.insert(activity);
	}

	@Override
	public void updateActivity(Activity activity) {
		activityDao.updateByPrimaryKey(activity);
	}

	@Override
	public void delActivityByAutoid(int autoid) {
		activityDao.deleteByPrimaryKey(autoid);
	}
	
	

}

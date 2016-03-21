package com.wemalltech.service;

import java.util.List;

import com.wemalltech.bean.Activity;

public interface ActivityService {
	public void test();
	
	public Activity getActivityByAutoid(int autoid);
	
	public List<Activity> getAllActivityList();
	
	public int createActivity(Activity activity);

	public void updateActivity(Activity activity);

	public void delActivityByAutoid(int autoid);
}

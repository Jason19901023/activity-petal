package com.wemalltech.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wemalltech.bean.Activity;
import com.wemalltech.service.ActivityService;

@Controller
@RequestMapping("/activity")
public class ActivityController extends BaseController{
	
	@Resource
	private ActivityService activityService;
	
	@RequestMapping("/activity_list.do")
	public ModelAndView activityList() {
		Map<String, Object> model = new HashMap<String, Object>();
		List<Activity> activityList = activityService.getAllActivityList();
		model.put("activityList", activityList);
		return new ModelAndView("activity/activity_list", model);
	}
	
	@RequestMapping("/add_activity.do")
	public ModelAndView addActivity() {
		Map<String, Object> model = new HashMap<String, Object>();
		return new ModelAndView("activity/add_activity", model);
	}
	
	@RequestMapping("/save_activity.do")
	public ModelAndView saveActivity(@ModelAttribute Activity activity) {
		Map<String, Object> model = new HashMap<String, Object>();
		activityService.createActivity(activity);
		return new ModelAndView("redirect:/activity/activity_list.do", model);
	}
	
	@RequestMapping("/view_activity.do")
	public ModelAndView viewActivity(@RequestParam int autoid) {
		Map<String, Object> model = new HashMap<String, Object>();
		Activity activity = activityService.getActivityByAutoid(autoid);
		model.put("activity", activity);
		return new ModelAndView("activity/view_activity", model);
	}
	
	@RequestMapping("/mod_activity.do")
	public ModelAndView modActivity(@RequestParam int autoid) {
		Map<String, Object> model = new HashMap<String, Object>();
		Activity activity = activityService.getActivityByAutoid(autoid);
		model.put("activity", activity);
		return new ModelAndView("activity/mod_activity", model);
	}
	
	@RequestMapping("/update_activity.do")
	public ModelAndView updateActivity(@ModelAttribute Activity activity) {
		Map<String, Object> model = new HashMap<String, Object>();
		Activity dbActivity = activityService.getActivityByAutoid(activity.getAutoid());
		dbActivity.setName(activity.getName());
		dbActivity.setStartDate(activity.getStartDate());
		dbActivity.setEndDate(activity.getEndDate());
		dbActivity.setCardsUrl(activity.getCardsUrl());
		dbActivity.setPlatformActivityId(activity.getPlatformActivityId());
		dbActivity.setPlatformLotteryUrl(activity.getPlatformLotteryUrl());
		dbActivity.setStatus(activity.getStatus());
		activityService.updateActivity(dbActivity);
		return new ModelAndView("redirect:/activity/activity_list.do", model);
	}
	
	@RequestMapping("/del_activity.do")
	public ModelAndView delActivity(@RequestParam int autoid) {
		Map<String, Object> model = new HashMap<String, Object>();
		activityService.delActivityByAutoid(autoid);
		return new ModelAndView("redirect:/activity/activity_list.do", model);
	}
	
	@RequestMapping("/test.do")
	public ModelAndView test() {
		Map<String, Object> model = new HashMap<String, Object>();
		activityService.test();
		return new ModelAndView("activity/test", model);
	}
}

package com.wemalltech.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wemalltech.service.ActivityService;

@Controller
@RequestMapping("/activity")
public class ActivityController {
	
	@Resource
	private ActivityService activityService;
	
	@RequestMapping("/test.do")
	public ModelAndView test() {
		Map<String, Object> model = new HashMap<String, Object>();
		activityService.test();
		return new ModelAndView("activity/test", model);
	}
}

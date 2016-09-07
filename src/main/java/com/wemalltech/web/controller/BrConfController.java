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
import com.wemalltech.bean.BrConf;
import com.wemalltech.service.ActivityService;
import com.wemalltech.service.BrConfService;

@Controller
@RequestMapping("/br_conf")
public class BrConfController extends BaseController{
	
	@Resource
	private BrConfService brConfService;
	@Resource
	private ActivityService activityService;
	
	@RequestMapping("/br_conf_list.do")
	public ModelAndView brConfList() {
		Map<String, Object> model = new HashMap<String, Object>();
		List<BrConf> brConfList = brConfService.getAllBrConfList();
		model.put("brConfList", brConfList);
		return new ModelAndView("br_conf/br_conf_list", model);
	}
	
	@RequestMapping("/add_br_conf.do")
	public ModelAndView addBrConf() {
		Map<String, Object> model = new HashMap<String, Object>();
		List<Activity> activityList = activityService.getAllActivityList();
		model.put("activityList", activityList);
		return new ModelAndView("br_conf/add_br_conf", model);
	}
	
	@RequestMapping("/save_br_conf.do")
	public ModelAndView saveBrConf(@ModelAttribute BrConf brConf) {
		Map<String, Object> model = new HashMap<String, Object>();
		BrConf dbBrConf = brConfService.getBrConfByActivityAutoid(brConf.getActivityAutoid());
		if(dbBrConf!=null && dbBrConf.getAutoid()>0) {
			model.put("errmsg", "同一个活动不能有多条配置数据");
			return new ModelAndView("br_conf/error_page", model);
		}
		brConfService.createBrConf(brConf);
		return new ModelAndView("redirect:/br_conf/br_conf_list.do", model);
	}
	
	@RequestMapping("/view_br_conf.do")
	public ModelAndView viewBrConf(@RequestParam int autoid) {
		Map<String, Object> model = new HashMap<String, Object>();
		BrConf brConf = brConfService.getBrConfByAutoid(autoid);
		model.put("brConf", brConf);
		Activity activity = activityService.getActivityByAutoid(brConf.getActivityAutoid());
		model.put("activity", activity);
		return new ModelAndView("br_conf/view_br_conf", model);
	}
	
	@RequestMapping("/mod_br_conf.do")
	public ModelAndView modBrConf(@RequestParam int autoid) {
		Map<String, Object> model = new HashMap<String, Object>();
		BrConf brConf = brConfService.getBrConfByAutoid(autoid);
		model.put("brConf", brConf);
		List<Activity> activityList = activityService.getAllActivityList();
		model.put("activityList", activityList);
		return new ModelAndView("br_conf/mod_br_conf", model);
	}
	
	@RequestMapping("/update_br_conf.do")
	public ModelAndView updateBrConf(@ModelAttribute BrConf brConf) {
		Map<String, Object> model = new HashMap<String, Object>();
		BrConf activityDbConf = brConfService.getBrConfByActivityAutoid(brConf.getActivityAutoid());
		if(activityDbConf!=null && activityDbConf.getAutoid()!=brConf.getAutoid()) {
			model.put("errmsg", "同一个活动不能有多条配置数据");
			return new ModelAndView("br_conf/error_page", model);
		}
		BrConf dbBrConf = brConfService.getBrConfByAutoid(brConf.getAutoid());
		dbBrConf.setActivityAutoid(brConf.getActivityAutoid());
		dbBrConf.setPlatformActivityId01(brConf.getPlatformActivityId01());
		dbBrConf.setPlatformActivityId02(brConf.getPlatformActivityId02());
		dbBrConf.setPlatformActivityId03(brConf.getPlatformActivityId03());
		dbBrConf.setPlatformActivityId04(brConf.getPlatformActivityId04());
		dbBrConf.setProbability04(brConf.getProbability04());
		dbBrConf.setTimeInterval(brConf.getTimeInterval());
		dbBrConf.setTipText02(brConf.getTipText02());
		dbBrConf.setTipText03(brConf.getTipText03());
		brConfService.updateBrConf(dbBrConf);
		return new ModelAndView("redirect:/br_conf/br_conf_list.do", model);
	}
	
	@RequestMapping("/del_br_conf.do")
	public ModelAndView delBrConf(@RequestParam int autoid) {
		Map<String, Object> model = new HashMap<String, Object>();
		brConfService.delBrConfByAutoid(autoid);
		return new ModelAndView("redirect:/br_conf/br_conf_list.do", model);
	}
}

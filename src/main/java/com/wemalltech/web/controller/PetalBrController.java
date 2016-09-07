package com.wemalltech.web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.github.sd4324530.fastweixin.util.NetWorkCenter;
import com.github.sd4324530.fastweixin.util.NetWorkCenter.ResponseCallback;
import com.wemalltech.bean.Activity;
import com.wemalltech.bean.BrConf;
import com.wemalltech.bean.PetalRecord;
import com.wemalltech.bean.PrizeRecord;
import com.wemalltech.service.ActivityService;
import com.wemalltech.service.BrConfService;
import com.wemalltech.service.PetalRecordService;
import com.wemalltech.service.PrizeRecordService;

@Controller
@RequestMapping("/petal_br")
public class PetalBrController {
	
	private Logger logger = LoggerFactory.getLogger(PetalBrController.class);
	
	public static final boolean TEST_FLAG = false;
	
	@Resource
	private ActivityService activityService;
	
	@Resource
	private PetalRecordService petalRecordService;
	
	@Resource
	private PrizeRecordService prizeRecordService;
	
	@Resource
	private BrConfService brConfService;
	
	//缓存用户摇4号花瓣的上一次时间
	private Map<String, Long> timeIntervalMap = new HashMap<String, Long>();;
	
	//获取openId和beacon信息接口
	public static final String INT_GET_OPEN_ID = "http://182.92.31.114/rest/act/beacon/{ticket}";
	//Beacon分区接口
	public static final String INT_BEACON = "http://101.200.197.234:8080/beaconzone/beacon/getBeaconZone?uuid={uuid}&major={major}&minor={minor}";
	//抽奖接口
	public static final String INT_LOTTERY = "http://182.92.31.114/rest/act/{id}/{ticket}";
	
	@RequestMapping("/test.do")
	public ModelAndView test() {
		Map<String, Object> model = new HashMap<String, Object>();
		return new ModelAndView("petal_br/test", model);
	}
	
	@RequestMapping("/index.do")
	public ModelAndView index(@RequestParam(required=false, defaultValue="0") int activityId,
			@RequestParam(required=false) String ticket,
			@RequestParam(required=false, defaultValue="0") int testNum,
			HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("ticket", ticket);
		if(TEST_FLAG) {
			//这里写入想要测试的效果
			List<PetalRecord> petalRecordList = new ArrayList<PetalRecord>();
			if(testNum>0) {
				PetalRecord petalRecord = new PetalRecord();
				petalRecord.setBeacon("A");
				petalRecordList.add(petalRecord);
			}
			if(testNum>1) {
				PetalRecord petalRecord2 = new PetalRecord();
				petalRecord2.setBeacon("B");
				petalRecordList.add(petalRecord2);
			}
			if(testNum>2) {
				PetalRecord petalRecord3 = new PetalRecord();
				petalRecord3.setBeacon("C");
				petalRecordList.add(petalRecord3);
			}
			if(testNum>3) {
				PetalRecord petalRecord4 = new PetalRecord();
				petalRecord4.setBeacon("D");
				petalRecordList.add(petalRecord4);
			}
			model.put("testNum", testNum);
			model.put("petalRecordList", petalRecordList);
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("openId", "openId");
			model.put("data", data);
		} else {
			String info = "";
			Activity activity = activityService.getActivityByAutoid(activityId);
			model.put("activity", activity);
			if(activity==null || activity.getAutoid()==0) {
				info = "活动不存在";
			}
			if(activity.getStatus() == 1) {
				info = "活动未开启";
			}
			if(activity.getStartDate().after(new Date())) {
				info = "活动还未开始";
			}
			if(activity.getEndDate().before(new Date())) {
				info = "活动已结束";
			}
			//获取配置对象
			BrConf brConf = brConfService.getBrConfByActivityAutoid(activityId);
			model.put("brConf", brConf);
			if(brConf==null || brConf.getAutoid()==0) {
				info = "缺少后台配置";
			}
			if(StringUtils.isNotBlank(info)) {
				model.put("info", info);
				return new ModelAndView("petal_br/info", model);
			}
			//获取openId和beacon信息
			GetOpenIdCallback getOpenIdCallback = new GetOpenIdCallback();
			String getOpenIdUrl = INT_GET_OPEN_ID;
			getOpenIdUrl = getOpenIdUrl.replace("{ticket}", ticket);
			NetWorkCenter.get(getOpenIdUrl, null, getOpenIdCallback);
			Map<String, Object> responseMap = getOpenIdCallback.responseMap;
			model.put("data", responseMap);
			if(responseMap.get("errcode").equals("0")) {
				String openId = (String) responseMap.get("openId");
				String uuid = (String) responseMap.get("uuid");
				String major = (String) responseMap.get("major");
				String minor = (String) responseMap.get("minor");
			}
		}
		return new ModelAndView("petal_br/index", model);
	}
	
	@RequestMapping("/get_petal_record_list.do")
	@ResponseBody
	public Map<String, Object> getPetalRecordList(@RequestParam(required=false, defaultValue="0") int activityAutoid,
			@RequestParam(required=false) String openId,
			@RequestParam(required=false, defaultValue="0") int testNum) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<PetalRecord> petalRecordList = null;
		if(TEST_FLAG) {
			//这里写入想要测试的效果
			petalRecordList = new ArrayList<PetalRecord>();
			if(testNum>0) {
				PetalRecord petalRecord = new PetalRecord();
				petalRecord.setBeacon("A");
				petalRecordList.add(petalRecord);
			}
			if(testNum>1) {
				PetalRecord petalRecord2 = new PetalRecord();
				petalRecord2.setBeacon("B");
				petalRecordList.add(petalRecord2);
			}
			if(testNum>2) {
				PetalRecord petalRecord3 = new PetalRecord();
				petalRecord3.setBeacon("C");
				petalRecordList.add(petalRecord3);
			}
			if(testNum>3) {
				PetalRecord petalRecord4 = new PetalRecord();
				petalRecord4.setBeacon("D");
				petalRecordList.add(petalRecord4);
			}
			
		}  else {
			petalRecordList = petalRecordService.getPetalRecordListByOpenId(activityAutoid, openId);
		}
		//查询用户获取的所有Beacon分区的花瓣
		resultMap.put("petalRecordList", petalRecordList);
		return resultMap;
	}
	
	@RequestMapping("/get_beacon.do")
	@ResponseBody
	public Map<String, Object> getBeacon(@RequestParam(required=false, defaultValue="0") int activityAutoid,
			@RequestParam(required=false) String openId,
			@RequestParam(required=false) String uuid,
			@RequestParam(required=false) String major,
			@RequestParam(required=false) String minor,
			@RequestParam(required=false, defaultValue="0") int testNum) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if(TEST_FLAG) {
			String beacon = "";
			int unlockCount = 0;
			if(testNum == 0) {
				beacon = "A";
				unlockCount = 1;
			} else if(testNum == 1) {
				beacon = "B";
				unlockCount = 2;
			} else if(testNum == 2) {
				beacon = "C";
				unlockCount = 3;
			} else if(testNum == 3) {
				beacon = "D";
				unlockCount = 4;
			}  else if(testNum == 4) {
				beacon = null;
				unlockCount = 4;
			}
			resultMap.put("unlocked", false);
			resultMap.put("beacon", beacon);
			resultMap.put("unlockCount", unlockCount);
		} else {
			//查询用户是否已经领过奖
			PrizeRecord prizeRecord = prizeRecordService.getPrizeRecordByOpenId(activityAutoid, openId);
			if(prizeRecord!=null && prizeRecord.getAutoid()!=0) {
				resultMap.put("prized", true);
			} else {
				//获取Beacon分区
				BeaconCallback beaconCallback = new BeaconCallback();
				String getBeaconUrl = INT_BEACON;
				getBeaconUrl = getBeaconUrl.replace("{uuid}", uuid.replace("-", ""));
				getBeaconUrl = getBeaconUrl.replace("{major}", major);
				getBeaconUrl = getBeaconUrl.replace("{minor}", minor);
				NetWorkCenter.get(getBeaconUrl, null, beaconCallback);
				Map<String, Object> getBeaconResponseMap = beaconCallback.responseMap;
				if(getBeaconResponseMap.get("errcode").equals("200")) {
					String beacon = (String) getBeaconResponseMap.get("data");
					boolean unlocked = false;
					List<PetalRecord> petalRecordList = petalRecordService.getPetalRecordListByOpenId(activityAutoid, openId);
					int unlockCount = petalRecordList.size();
					for(Iterator<PetalRecord> iter=petalRecordList.iterator(); iter.hasNext();) {
						PetalRecord petalRecord = iter.next();
						if(petalRecord.getBeacon().equalsIgnoreCase(beacon)) {
							unlocked = true;	//已解锁过这个区域
							break;
						}
					}
					if(!unlocked) {
						unlockCount++;
					}
					/**
					 * 在四号花瓣正式激活前，新增逻辑判断和配置：
						a、摇出四号花瓣并前往营销平台抽奖的几率（百分比，默认100），即经过摇动触发但是有几率不激活不会出现花瓣；
						b、如果摇不出四号花瓣，则下次可再次尝试摇出四号花瓣的时间间隔，默认5分钟；如果摇出四号花瓣则必中奖，前往营销平台抽奖。
					 */
					if(unlockCount == 4 && !unlocked) {
						//获取配置对象
						BrConf brConf = brConfService.getBrConfByActivityAutoid(activityAutoid);
						//判断时间间隔
						int timeInterval = brConf.getTimeInterval()*1000;	//转换成毫秒
						long now = new Date().getTime();
						Long last = timeIntervalMap.get(activityAutoid+"."+openId);
						
						if(last!=null && now-last<timeInterval) {
							resultMap.put("forbid", true);
						} else {
							String[] arr = String.valueOf(brConf.getProbability04()).split("\\.");
							int num = 0;	//小数点后面几位数字
							if(arr.length == 2) {
								num = arr[1].length();
							}
							int power = 1;
							for(int i=0; i<num; i++) {
								power *= 10;
							}
							int a = (int)(Math.random()*100*power);
							if(a >= brConf.getProbability04()*power) {	//不触发
								resultMap.put("forbid", true);
								timeIntervalMap.put(activityAutoid+"."+openId, new Date().getTime());
							} else {
								//触发大奖
								logger.info("中大奖【区域:{}, openId:{}, activityAutoid:{}】", beacon, openId, activityAutoid);
							}
						}
						
					} else if(unlockCount == 4 && unlocked) {	//已经解封过4朵花瓣但是没有领奖
						resultMap.put("over", true);
					}
					resultMap.put("unlocked", unlocked);
					resultMap.put("beacon", beacon);
					resultMap.put("unlockCount", unlockCount);
					logger.info("用户访问【区域:{}, openId:{}, unlocked:{}, unlockCount:{}, forbid:{}, over:{}】", beacon, openId, resultMap.get("unlocked"), resultMap.get("unlockCount"), resultMap.get("forbid"), resultMap.get("over"));
				}
			}
		}
		return resultMap;
	}
	
	@RequestMapping("/unlock_petal.do")
	@ResponseBody
	public Map<String, Object> unlockPetal(@RequestParam(required=true, defaultValue="0") int activityAutoid,
			@RequestParam(required=true) String openId,
			@RequestParam(required=true) String beacon) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		PetalRecord petalRecord = petalRecordService.getPetalRecordByActivityAutoidAndOpenIdAndBeacon(activityAutoid, openId, beacon);
		if(petalRecord==null) {
			petalRecordService.unlockPetal(activityAutoid, openId, beacon);
			logger.info("用户解封花瓣【activityAutoid:{}, openId:{}, beacon:{}】", activityAutoid, openId, beacon);
		}
		return resultMap;
	}
	
	@RequestMapping("/lottery.do")
	@ResponseBody
	public Map<String, Object> lottery(@RequestParam(required=false) String ticket,
			@RequestParam(required=false) int platformActivityId,
			@RequestParam(required=true) int activityAutoid,
			@RequestParam(required=true) String openId,
			@RequestParam(required=true) String beacon) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		LotteryCallback lotteryCallback = new LotteryCallback();
		String lotteryUrl = INT_LOTTERY;
		lotteryUrl = lotteryUrl.replace("{id}", String.valueOf(platformActivityId));
		lotteryUrl = lotteryUrl.replace("{ticket}", ticket);
		NetWorkCenter.get(lotteryUrl, null, lotteryCallback);
		Map<String, Object> lotteryResponseMap = lotteryCallback.responseMap;
		if(lotteryResponseMap.get("errcode").equals("0")) {
			PrizeRecord prizeRecord = new PrizeRecord();
			prizeRecord.setActivityAutoid(activityAutoid);
			prizeRecord.setBeacon(beacon);
			prizeRecord.setGetDate(new Date());
			prizeRecord.setOpenId(openId);
			prizeRecord.setPrizeInfo(JSONObject.toJSONString(lotteryResponseMap));
			prizeRecordService.createPrizeRecord(prizeRecord);
			logger.info("用户领奖【activityAutoid:{}, openId:{}, beacon:{}, platformActivityId:{}, ticket:{}】", activityAutoid, openId, beacon, platformActivityId, ticket);
		}
		return lotteryResponseMap;
	}
	
	
	/**
	 * 获取openId和beacon信息接口回调
	 * @author zqs
	 *
	 */
	class GetOpenIdCallback implements ResponseCallback{
		
		private Map<String, Object> responseMap = new HashMap<String, Object>();
		
		@Override
		public void onResponse(int resultCode, String resultJson) {
			logger.debug("调用取openId和beacon信息接口-->resultCode：{}, resultJson:{}", resultCode, resultJson);
			String errcode = "";
			String errmsg = "";
			if (200 == resultCode) {
				Map<String,Object> resultMap = (Map<String,Object>)JSON.parse(resultJson); 
				errcode = resultMap.get("errcode").toString();
				errmsg = (String) resultMap.get("errmsg");
				if(errcode.equals("0")) {	//成功获取用户openId
					Map<String,Object> dataMap = (Map<String, Object>) resultMap.get("data");
					String openId = (String) dataMap.get("openid");
					Map<String,Object> beaconInfoMap = (Map<String, Object>) dataMap.get("beacon_info");
					String uuid =  beaconInfoMap.get("uuid").toString();
					String major =  beaconInfoMap.get("major").toString();
					String minor =  beaconInfoMap.get("minor").toString();
					responseMap.put("openId", openId);
					responseMap.put("uuid", uuid);
					responseMap.put("major", major);
					responseMap.put("minor", minor);
				}
            } else {//请求本身就失败了
            	errcode = "-2";
            	errmsg = "调用获取openId和beacon信息接口失败";
            }
			responseMap.put("errcode", errcode);
			responseMap.put("errmsg", errmsg);
		}
		
	}
	
	/**
	 * 获取Beacon分区
	 * @author zqs
	 *
	 */
	class BeaconCallback implements ResponseCallback{
		
		private Map<String, Object> responseMap = new HashMap<String, Object>();
		
		@Override
		public void onResponse(int resultCode, String resultJson) {
			logger.debug("调用获取Beacon分区接口-->resultCode：{}, resultJson:{}", resultCode, resultJson);
			String errcode = "";
			String errmsg = "";
			if (200 == resultCode) {
				Map<String,Object> resultMap = (Map<String,Object>)JSON.parse(resultJson);
				errcode =  resultMap.get("status").toString();
				errmsg = (String) resultMap.get("message");
				if(errcode.equals("200")) {	//成功获取Beacon分区
					String data =  resultMap.get("data").toString();
					responseMap.put("data", data);
				}
			} else {//请求本身就失败了
				errcode = "-2";
				errmsg = "调用获取Beacon分区接口失败";
			}
			responseMap.put("errcode", errcode);
			responseMap.put("errmsg", errmsg);
		}
		
	}
	
	/**
	 * 抽奖接口回调
	 * @author zqs
	 *
	 */
	class LotteryCallback implements ResponseCallback{
		
		private Map<String, Object> responseMap = new HashMap<String, Object>();
		
		@Override
		public void onResponse(int resultCode, String resultJson) {
			logger.debug("调用抽奖接口接口-->resultCode：{}, resultJson:{}", resultCode, resultJson);
			String errcode = "";
			String errmsg = "";
			if (200 == resultCode) {
				Map<String,Object> resultMap = (Map<String,Object>)JSON.parse(resultJson); 
				errcode =  resultMap.get("code").toString();
				errmsg = (String) resultMap.get("message");
				if(errcode.equals("0")) {	//中奖
					String qr =  resultMap.get("qr").toString();
					responseMap.put("qr", qr);
				}
            } else {//请求本身就失败了
            	errcode = "-2";
            	errmsg = "调用抽奖接口失败";
            }
			responseMap.put("errcode", errcode);
			responseMap.put("errmsg", errmsg);
		}
		
	}
	
}

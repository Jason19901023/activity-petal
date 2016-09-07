package com.wemalltech.task;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.wemalltech.service.PetalRecordService;
import com.wemalltech.service.PrizeRecordService;

@Component
public class ClearTask{
	private Logger logger = LoggerFactory.getLogger(ClearTask.class);
	
	@Resource
	private PetalRecordService petalRecordService;
	
	@Resource
	private PrizeRecordService prizeRecordService;
	 
	
	@Scheduled(cron="0 0 23 * * ?")   //每天晚上8点执行一次
	public void clearPetalRecordAndPrizeRecord(){  
		logger.info("开始执行活动数据定时清除任务！");
		petalRecordService.clearPetalRecord();
		prizeRecordService.clearPrizeRecord();
		logger.info("活动数据已清除！");
  }

}

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="${contextPath}/resource/plugins/layer/skin/layer.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="${contextPath}/petal520/resource/css/style.css">
    <title>花开盛宴</title>
</head>
<body>
	<script type="text/javascript">
		var _scale = window.innerWidth/640,
			_scale = _scale>1?1:_scale;
	</script>
	<div class="wrap">
		<img src="${contextPath}/petal520/resource/img/bg.jpg" style="position:relative;width: 100%;">
		<img src="${contextPath}/petal520/resource/img/flower_border.png" class="flower_border" >
		<img src="${contextPath}/petal520/resource/img/title.png" class="title" >
		<img src="${contextPath}/petal520/resource/img/flower.png" class="flower" >
		<img src="${contextPath}/petal520/resource/img/petal01.png" class="petal petal01" >
		<img src="${contextPath}/petal520/resource/img/petal02.png" class="petal petal02" >
		<img src="${contextPath}/petal520/resource/img/petal03.png" class="petal petal03" >
		<img src="${contextPath}/petal520/resource/img/petal04.png" class="petal petal04" >
		<a class="prize_btn" href="${(activity.cardsUrl)!}"><img src="${contextPath}/petal520/resource/img/prize_btn.png" ></a>
		<a class="rule_btn" href="javascript:openRule();"><img src="${contextPath}/petal520/resource/img/rule_btn.png" ></a>
		<div id="dialog-0" class="dialog layer-ele">
			<img src="${contextPath}/petal520/resource/img/tip0.png" class="tip"  />
			<a class="close_btn" href="javascript:closeDialog();"><img src="${contextPath}/petal520/resource/img/close_btn.png" /></a>
		</div>
		<div id="dialog-1" class="dialog layer-ele">
			<img src="${contextPath}/petal520/resource/img/tip01.png" class="tip"  />
			<a class="close_btn" href="javascript:closeDialog();"><img src="${contextPath}/petal520/resource/img/close_btn.png" /></a>
			<a class="lottery_btn" href="javascript:lottery()"><img src="${contextPath}/petal520/resource/img/lottery_btn.png" /></a>
		</div>
		<div id="dialog-2" class="dialog layer-ele">
			<img src="${contextPath}/petal520/resource/img/tip02.png" class="tip"  />
			<a class="close_btn" href="javascript:closeDialog();"><img src="${contextPath}/petal520/resource/img/close_btn.png" /></a>
			<a class="lottery_btn" href="javascript:lottery()"><img src="${contextPath}/petal520/resource/img/lottery_btn.png" /></a>
		</div>
		<div class="rule layer-ele">
			<img src="${contextPath}/petal520/resource/img/rule_content.png" class="rule_content"  />
			<div class="date">${activity.startDate?string("yyyy-MM-dd HH:mm")} 到 ${activity.endDate?string("yyyy-MM-dd HH:mm")}</div>
			<a class="rule_close_btn" href="javascript:closeDialog();"><img src="${contextPath}/petal520/resource/img/rule_close_btn.png"  /></a>
		</div>
		<div class="layui-layer-shade" id="shade" times="2" style="z-index:19891015; background-color:#FFF; opacity:0.5; filter:alpha(opacity=50); display:none;"></div>
	</div>
	<script type="text/javascript">
		//初始化函数
		function init(){
			var _wrap = document.querySelector(".wrap"),
				_el = null;
			//使得适应屏幕大小
			_wrap.style.transform = "scale("+_scale+")";
			_wrap.style.webkitTransform = "scale("+_scale+")";

			document.body.style.height = Math.floor(1048*_scale)+"px";
		}
	</script>
	<script src="${contextPath}/resource/plugins/jquery-1.11.3.min.js" type="text/javascript"></script>
	<script src="${contextPath}/resource/plugins/jquery.transit/jquery.transit.js" type="text/javascript"></script>
	<script src="${contextPath}/resource/plugins/layer/layer.js" type="text/javascript"></script>
</body>
</html>
<script type="text/javascript">
	$(document).ready(function() {
			init();
			
			var loadi = null;
			$(this).ajaxStart(function() {
			  	if (layer) {
					loadi = layer.load(2, {
						shade: [0.5, '#FFF']
					});
				}
			});
			
			$(this).ajaxStop(function() {
				if (layer) {
					layer.close(loadi)
				}
			});
			
			$.ajaxSetup({
				cache:false,
			    error: function (jqXHR, textStatus, errorThrown ) {
			        alert(errorThrown);
			    }
			});
			<#if data.errcode!='0'>
				alert('${data.errmsg}');
				return;
			</#if>
			initPetal();
			getCurrentPetal();
			
		});
		
	function closeDialog() {
		layer.closeAll();
		$('.wrap>#shade').hide();
	}	
		
	function initPetal() {
		$.getJSON('${contextPath}/petal520/get_petal_record_list.do', {'activityAutoid':'${(activity.autoid)!}', 'openId':'${(data.openId)!}'}, function(data) {
    		var petalRecordList = data.petalRecordList;
    		for(var i=1; i<=petalRecordList.length; i++) {
    			var numStr = '0'+i;
				$('.petal'+numStr).transition({ opacity: 1, delay: 500*i*0 }, 100);
    		}
		});
		<#--
		<#if petalRecordList?exists && ((petalRecordList?size)>0)>
			var unlockedNum = ${petalRecordList?size};
			for(var i=1; i<=unlockedNum; i++) {
				var numStr = '0'+i;
				$('.petal'+numStr).transition({ opacity: 1, delay: 500*i*0 }, 100);
			}
		</#if>
		-->
	}
		
	//通过后台获取当前区域的Beacon组别
    function getCurrentPetal() {
    	$.getJSON('${contextPath}/petal520/get_beacon.do', {'testNum':'${testNum!}', 'activityAutoid':'${(activity.autoid)!}', 'openId':'${(data.openId)!}', 'uuid':'${(data.uuid)!}', 'major':'${(data.major)!}', 'minor':'${(data.minor)!}'}, function(data) {
    		if(data.unlocked == false) {
    			alert('当前beacon组别为：'+data.beacon+'【准备解封】');
			 	unlockPetal(data.beacon, data.unlockCount);
    		} else {
    			alert('当前beacon组别为：'+data.beacon+'【先前已解封过】');
    		}
		});
    }
    
    var platformActivityId=0;	//营销平台活动id
     //根据beacon解锁花瓣
    function unlockPetal(beacon, unlockCount) {
    	if(beacon) {
	    	if(beacon=='A') {
	    		platformActivityId =  12810;
	    	} else if(beacon=='B') {
	    		platformActivityId =  12811
	    	} else if(beacon=='C') {
	    		platformActivityId =  12812;
	    	} else if(beacon=='D') {
	    		platformActivityId =  12813;
	    	}
	    	//alert('开始呈现解封动画');
	    	$('.petal0'+unlockCount).transition({ opacity: 1, delay: 500, complete:function() {
	    		//alert('解封动画呈现完毕');
	    		if(unlockCount == 4) {
	    			platformActivityId = 12814;
	    			openDialog($('#dialog-2'));
	    			//showColorful();
	    		} else {
	    			openDialog($('#dialog-1'));
	    		}
    			$.getJSON('${contextPath}/petal/unlock_petal.do', {'activityAutoid':'${(activity.autoid)!}', 'openId':'${(data.openId)!}', 'beacon':beacon}, function(data) {
    				
				});
	    	}}, 1000);
	    	//var audio = document.getElementById("petal-audio");
			//audio.play();
    	}
    }
    
    function lottery() {
    	$.getJSON('${contextPath}/petal520/lottery.do', {ticket:'${ticket!}', platformActivityId:platformActivityId}, function(data) {
    		var errcode = data.errcode;
    		var errmsg = data.errmsg;
    		if((errcode==0) && (data.qr)) {		//中奖
			 	window.location.href = " http://res.rtmap.com/image/vs3/share/detail.html?id="+data.qr;  
    		} else if(errcode==7) {		//未中奖
    			openDialog($('#dialog-0'));
    		} else {
    			alert(errmsg);
    		}
		});
    }
    
    //公共对话框
	function openDialog($content) {
		layer.open({
		  type: 1,
		  shade: false,
		  title: false, //不显示标题
		  area: ['436px', '624px'],
		  offset: ['212px', '102px'],
		  content: $content, //捕获的元素
		  skin: 'layui-layer-transparent',
		  closeBtn: 0,
		  shadeClose: false,
		  shift:2
		});
		$('.wrap>#shade').show();
	}
	
	//游戏规则
	function openRule() {
		layer.open({
		  type: 1,
		  shade: false,
		  title: false, //不显示标题
		  area: ['547px', '750px'],
		  offset: ['149px', '46px'],
		  content: $('.rule'), //捕获的元素
		  skin: 'layui-layer-transparent',
		  closeBtn: 0,
		  shadeClose: false,
		  shift:2
		});
		$('.wrap>#shade').show();
	}
</script>
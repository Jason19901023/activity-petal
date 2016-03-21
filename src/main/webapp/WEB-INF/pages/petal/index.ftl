<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="${contextPath}/resource/plugins/layer.mobile-v1.7/need/layer.css" type="text/css" rel="stylesheet">
    <title>花开盛宴</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
            font-family:'微软雅黑';
        }
        html,body{
            height: 100%;
        }

        body{
            background:url('${contextPath}/petal/resource/img/bg.jpg');
            background-repeat:no-repeat;
            background-size:100% 100%;
            max-width:640px;
            margin:0px auto;
            overflow:hidden;
        }

        .title {
            width:100%;
            height:15%;
            background-color:rgba(129,178,97,0.6);
            margin-top:5%;
        }

        .title>img {
            display:block;
            height:100%;
            margin:0 auto;
        }

        .sub-title {
            background:url('${contextPath}/petal/resource/img/sub-title.png');
            background-repeat:no-repeat;
            background-size:auto 100%;
            background-position:center;
            height:7%;
            margin:3% 0;
        }

        .petal-main {
            height:40%;
            position:relative;
        }
        
        @keyframes rotate {
			from {transform:rotate(0deg);}
          	to {transform:rotate(360deg);}
		}
		
		@-webkit-keyframes rotate  {
			from {-webkit-transform:rotate(0deg);}
          	to {-webkit-transform:rotate(360deg);}
		}
        
        .petal-main>#petal-wrapper {
        	height:100%;
        	position:absolute;
        	animation:rotate 20s linear 0.5s infinite;
        	-webkit-animation:rotate 20s linear 0.5s infinite;
        }
        
        .petal-main>#petal-wrapper>.petal-ele {
        	position:relative;
        }
        
        .petal-main>#petal-wrapper>.petal-ele>img {
        	width:100%;
        	height:100%;
        	position:absolute;
        	left:0px;
        	top:0px;
        	transition: all 1.5s ease-in-out;
        	-webkit-transition: all 1.5s ease-in-out;
        }
        
        .petal-main>#petal-wrapper>.petal-ele>.gray-petal-img {
        	
        }
        
        .petal-main>#petal-wrapper>.petal-ele>.petal-img {
        	opacity:0;
    		z-index:2;
    		transform:scale(0,0);  
    		-webkit-transform:scale(0,0);  
        }
        
        .petal-main>#petal-wrapper>#petal>.petal-img {
        	transform-origin: bottom right; 
        	-webkit-transform-origin:bottom right; 
        }
        
        .petal-main>#petal-wrapper>#petal>.gray-petal-img {
        	transform-origin: bottom right; 
        	-webkit-transform-origin: bottom right; 
        }
        
        .petal-main>#petal-wrapper>#petal2>.petal-img {
        	transform-origin: bottom left; 
        	-webkit-transform-origin: bottom left; 
        }
        
        .petal-main>#petal-wrapper>#petal2>.gray-petal-img {
        	transform-origin: bottom left; 
        	-webkit-transform-origin: bottom left; 
        }
        
        .petal-main>#petal-wrapper>#petal3>.petal-img {
        	transform-origin: top right; 
        	-webkit-transform-origin: top right; 
        }
        
        .petal-main>#petal-wrapper>#petal3>.gray-petal-img {
        	transform-origin: top right; 
        	-webkit-transform-origin: top right; 
        }
        
        .petal-main>#petal-wrapper>#petal4>.petal-img {
        	transform-origin: top left; 
        	-webkit-transform-origin: top left; 
        }
        
        .petal-main>#petal-wrapper>#petal4>.gray-petal-img {
        	transform-origin: top left; 
        	-webkit-transform-origin: top left; 
        }
        
        <#if petalRecordList?exists && ((petalRecordList?size)>0)>
    		<#list petalRecordList as petalRecord>
    			<#if petalRecord.beacon == 'A'>
	    			.petal-main>#petal-wrapper>#petal>.petal-img {
	    				opacity:1;
	    				transform:scale(1,1);  
	    				-webkit-transform:scale(1,1);  
	    			}
	    			.petal-main>#petal-wrapper>#petal>.gray-petal-img {
	    				opacity:0;
	    				transform:scale(0,0);  
	    				-webkit-transform:scale(0,0);  
	    			}
	    			<#elseif petalRecord.beacon == 'B'>
	    			.petal-main>#petal-wrapper>#petal2>.petal-img {
	    				opacity:1;
	    				transform:scale(1,1);  
	    				-webkit-transform:scale(1,1);  
	    			}
	    			.petal-main>#petal-wrapper>#petal2>.gray-petal-img {
	    				opacity:0;
	    				transform:scale(0,0);  
	    				-webkit-transform:scale(0,0);  
	    			}
	    			<#elseif petalRecord.beacon == 'C'>
	    			.petal-main>#petal-wrapper>#petal3>.petal-img {
	    				opacity:1;
	    				transform:scale(1,1);  
	    				-webkit-transform:scale(1,1);  
	    			}
	    			.petal-main>#petal-wrapper>#petal3>.gray-petal-img {
	    				opacity:0;
	    				transform:scale(0,0);  
	    				-webkit-transform:scale(0,0);  
	    			}
	    			<#elseif petalRecord.beacon == 'D'>
	    			.petal-main>#petal-wrapper>#petal4>.petal-img {
	    				opacity:1;
	    				transform:scale(1,1);  
	    				-webkit-transform:scale(1,1);  
	    			}
	    			.petal-main>#petal-wrapper>#petal4>.gray-petal-img {
	    				opacity:0;
	    				transform:scale(0,0);  
	    				-webkit-transform:scale(0,0);  
	    			}
    			</#if>
    		</#list>
    	</#if>
        
        .btn-area {
            height:25%;
        }

        .logo {
            background:url('${contextPath}/petal/resource/img/logo.png');
            background-repeat:no-repeat;
            background-size:auto 100%;
            background-position:right;
            height:3%;
            width:100%;
            position:absolute;
            bottom:5px;
            right:5px;
        }


        .btn-area .col {
            float:left;
            width:23%;
            height:100%;
            margin:0 5%;
            padding:50px 0px;
        }

        .my-card-btn {
            display:inline-block;
            background:url('${contextPath}/petal/resource/img/my-card-btn.png');
            background-repeat:no-repeat;
            background-size:100% 100%;
            background-position:center;
            width:80px;
            height:80px;
        }

        .shake {
            display:inline-block;
            background:url('${contextPath}/petal/resource/img/shake.png');
            background-repeat:no-repeat;
            background-size:100% auto;
            background-position:center;
            height:100%;
            width:100%;
            margin-top:-40px;
        }

        .activity-rule-btn {
            display:inline-block;
            background:url('${contextPath}/petal/resource/img/activity-rule-btn.png');
            background-repeat:no-repeat;
            background-size:100% 100%;
            background-position:center;
            width:80px;
            height:80px;
        }
        
        .petal-icon {
        	width:50px;
        	display:block;
        	margin:0 auto;
        	margin-bottom:10px;
        }
        
        .dialog-btn {
        	width:120px;
        	height:36px;
        	line-height:36px;
        	font-size:16px;
        	display:block;
        	margin:0px auto;
        	margin-top:10px;
        	color:#666;
        	background-color:#91D981;
        	border-width:0px;
        	border-radius:20px;
        	text-align:center;
        	cursor:pointer;
        	outline:none;
        }
        
        .dialog-btn:hover {
        	background-color:#76C06A;
        	color:#fff;
        }
        
        .dialog-btn-especial {
        	background-color:#FFB52B;
        }
        
        .dialog-btn-especial:hover {
        	background-color:#FF7700;
        	color:#fff;
        }
        
        .light-ele {
        	display:none;
        	width:100%;
        	height:100%;
        	position:absolute;
        	border-radius:100%;
        	animation-duration: 2s;
        	animation-iteration-count: infinite;	
        	animation-timing-function: linear;
        	-webkit-animation-duration: 2s;
        	-webkit-animation-iteration-count: infinite;	
        	-webkit-animation-timing-function: linear;
        	z-index:999;
        }
        
        #light {
        	transform-origin: bottom right; 
        	-webkit-transform-origin: bottom right; 
        	animation-name: light;
        	-webkit-animation-name: light;
        }
        
        @keyframes light {
          0% {transform:scale(0,0);box-shadow:-100px -100px 0px 0px #ffa902}	
          50% {transform:scale(0.5,0.5);box-shadow:-100px -100px 250px 0px #ffa902}
          100% {transform:scale(1,1);box-shadow:-100px -100px 500px 0px #ffa902}
        }
        
        @-webkit-keyframes light  {
	        0% {-webkit-transform:scale(0,0);box-shadow:-100px -100px 0px 0px #ffa902}	
	          50% {-webkit-transform:scale(0.5,0.5);box-shadow:-100px -100px 250px 0px #ffa902}
	          100% {-webkit-transform:scale(1,1);box-shadow:-100px -100px 500px 0px #ffa902}
		}
        
        #light2 {
        	transform-origin: bottom left; 
        	-webkit-transform-origin: bottom left; 
        	animation-name: light2;
        	-webkit-animation-name: light2;
        }
        
        @keyframes light2 {
          0% {transform:scale(0,0);box-shadow:100px -100px 0px 0px #0497fa}	
          50% {transform:scale(0.5,0.5);box-shadow:100px -100px 250px 0px #0497fa}
          100% {transform:scale(1,1);box-shadow:100px -100px 500px 0px #0497fa}
        }
        
        @-webkit-keyframes light2  {
          0% {-webkit-transform:scale(0,0);box-shadow:100px -100px 0px 0px #0497fa}	
          50% {-webkit-transform:scale(0.5,0.5);box-shadow:100px -100px 250px 0px #0497fa}
          100% {-webkit-transform:scale(1,1);box-shadow:100px -100px 500px 0px #0497fa}
        }
        
        #light3 {
        	transform-origin: top right; 
        	-webkit-transform-origin: top right; 
        	animation-name: light3;
        	-webkit-animation-name: light3;
        }
        
        @keyframes light3 {
          0% {transform:scale(0,0);box-shadow:-100px 100px 0px 0px #3b60ff}	
          50% {transform:scale(0.5,0.5);box-shadow:-100px 100px 250px 0px #3b60ff}
          100% {transform:scale(1,1);box-shadow:-100px 100px 500px 0px #3b60ff}
        }
        
        @-webkit-keyframes light3  {
          0% {-webkit-transform:scale(0,0);box-shadow:-100px 100px 0px 0px #3b60ff}	
          50% {-webkit-transform:scale(0.5,0.5);box-shadow:-100px 100px 250px 0px #3b60ff}
          100% {-webkit-transform:scale(1,1);box-shadow:-100px 100px 500px 0px #3b60ff}
        }
        
        #light4 {
        	transform-origin: top left; 
        	-webkit-transform-origin: top left; 
        	animation-name: light4;
        	-webkit-animation-name: light4;
        }
        
        @keyframes light4 {
          0% {transform:scale(0,0);box-shadow:100px 100px 0px 0px #fe558c}	
          50% {transform:scale(0.5,0.5);box-shadow:100px 100px 250px 0px #fe558c}
          100% {transform:scale(1,1);box-shadow:100px 100px 500px 0px #fe558c}
        }
        
        @-webkit-keyframes light4  {
          0% {-webkit-transform:scale(0,0);box-shadow:100px 100px 0px 0px #fe558c}	
          50% {-webkit-transform:scale(0.5,0.5);box-shadow:100px 100px 250px 0px #fe558c}
          100% {-webkit-transform:scale(1,1);box-shadow:100px 100px 500px 0px #fe558c}
        }
        

    </style>
</head>
<body>
<div class="title">
    <img src="${contextPath}/petal/resource/img/title.png" />
</div>
<div class="sub-title"></div>
<div class="petal-main">

    <div id="petal-wrapper">
        <div id="petal" class="petal-ele">
        	<img class="gray-petal-img" />
        	<img class="petal-img" />
        	<div id="light" class="light-ele"></div>
        </div>
        <div id="petal2" class="petal-ele">
        	<img class="gray-petal-img" />
        	<img class="petal-img" />
        	<div id="light2" class="light-ele"></div>
        </div>
        <div id="petal3" class="petal-ele">
        	<img class="gray-petal-img" />
        	<img class="petal-img" />
        	<div id="light3" class="light-ele"></div>
        </div>
        <div id="petal4" class="petal-ele">
        	<img class="gray-petal-img" />
        	<img class="petal-img" />
        	<div id="light4" class="light-ele"></div>
        </div>
        
    </div>
    
</div>

<div class="btn-area">
    <div class="col"><a class="my-card-btn" href="${(activity.cardsUrl)!}"></a></div>
    <div class="col"><span class="shake"></span></div>
    <div class="col"><a class="activity-rule-btn" href="${contextPath}/petal/rule.do"></a></div>
</div>
<div class="logo"></div>
<div style="display:none;">
    <img src="${contextPath}/petal/resource/img/petal.png" />
    <img src="${contextPath}/petal/resource/img/petal2.png" />
    <img src="${contextPath}/petal/resource/img/petal3.png" />
    <img src="${contextPath}/petal/resource/img/petal4.png" />
</div>
<audio id="bg-audio" src="${contextPath}/petal/resource/audio/bg.mp3" autoplay loop></audio>
<audio id="petal-audio" src="${contextPath}/petal/resource/audio/petal.mp3"></audio>
<audio id="colorful-petal-audio" src="${contextPath}/petal/resource/audio/colorful-petal.mp3"></audio>
<div style="display:none;">
<div id="dialog-1">
	<img class="petal-icon" src="${contextPath}/petal/resource/img/petal-icon.png" />
	<p>您已成功收集到一枚花瓣。再收集一枚，花儿就开啦！</p>
	<button class="dialog-btn" onclick="closeDialog()">确&nbsp;&nbsp;定</button>
</div>
<div id="dialog-2">
	<img class="petal-icon" src="${contextPath}/petal/resource/img/petal-icon.png" />
	<p>您已成功使花儿绽放，点击领取属于您的奖品。</p>
	<p>Ps，再集齐两朵花瓣还能召唤花神呢~</p>
	<button class="dialog-btn" onclick="getPrizeOf2Petal()">领取奖品</button>
</div>
<div id="dialog-3">
	<img class="petal-icon" src="${contextPath}/petal/resource/img/petal-icon.png" />
	<p>您已成功收集到一枚花瓣。再收集一枚，就能召唤花神啦！</p>
	<button class="dialog-btn" onclick="closeDialog()">确&nbsp;&nbsp;定</button>
</div>
<div id="dialog-4">
	<img class="petal-icon" src="${contextPath}/petal/resource/img/colorful-petal-icon.png" />
	<p>您已成功召唤花神，点击领取属于您的奖品！</p>
	<button class="dialog-btn dialog-btn-especial" onclick="getPrizeOf4Petal()">领取奖品</button>
</div>
</div>
</body>
</html>
<script src="${contextPath}/resource/plugins/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="${contextPath}/resource/plugins/jquery.transit/jquery.transit.js" type="text/javascript"></script>
<script src="${contextPath}/resource/plugins/layer.mobile-v1.7/layer.js" type="text/javascript"></script>
<script src="${contextPath}/resource/plugins/oriDomi-master/oridomi.min.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {
		document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
	});
	window.onload =function() {
		$.ajaxSetup({
		    error: function (x, e) {
		        alert(e);
		    }
		});
		loadGrayPetal();
		initPetal();
		getCurrentPetal();
		//openDialog('温馨提示', 'dialog-4');
	}
	
	//公共对话框
	function openDialog(title, contentDomId) {
		layer.open({
			title: [
		        title,
		        'background-color:#E4FFCA; color:#666; height: 40px; line-height: 40px; border-radius: 5px 5px 0 0;'
		    ],
		    content: $('#'+contentDomId).html()	,
		    style: 'color:#666; border:none; border-radius: 5px;'
		});
	}
	
	function closeDialog() {
		layer.closeAll();
	}
	

	//生成花瓣灰度图片
    function loadGrayPetal() {
    	var petalUrl = "${contextPath}/petal/resource/img/petal.png";
        var petal2Url = "${contextPath}/petal/resource/img/petal2.png";
        var petal3Url = "${contextPath}/petal/resource/img/petal3.png";
        var petal4Url = "${contextPath}/petal/resource/img/petal4.png";
        $('#petal .petal-img').attr('src', petalUrl);
        $('#petal2 .petal-img').attr('src', petal2Url);
        $('#petal3 .petal-img').attr('src', petal3Url);
        $('#petal4 .petal-img').attr('src', petal4Url);
        var grayPetalUrl = grayscale(petalUrl);
        var grayPetal2Url = grayscale(petal2Url);
        var grayPetal3Url = grayscale(petal3Url);
        var grayPetal4Url = grayscale(petal4Url);
        $('#petal .gray-petal-img').attr('src', grayPetalUrl);
        $('#petal2 .gray-petal-img').attr('src', grayPetal2Url);
        $('#petal3 .gray-petal-img').attr('src', grayPetal3Url);
        $('#petal4 .gray-petal-img').attr('src', grayPetal4Url);
    }
    
    //初始化花瓣组件
    function initPetal() {
    	var $petalWrapper = $('#petal-wrapper');
    	var petalWrapperHeight = $('#petal-wrapper').height();
    	$petalWrapper.width(petalWrapperHeight);
    	var petalWrapperWidth = $('#petal-wrapper').width();
    	var screenWidth = $(document).width()>640?640:$(document).width();
    	$petalWrapper.css('left', (screenWidth-petalWrapperWidth)/2+'px');
    	
    	$petalWrapper.find('.petal-ele').css('float', 'left').width(petalWrapperWidth/2).height(petalWrapperHeight/2);
    	
    }
    
    //通过后台获取当前区域的Beacon组别
    function getCurrentPetal() {
    	$.getJSON('${contextPath}/petal/get_beacon.do', {'testNum':'${testNum}'}, function(data) {
		 	unlockPetal(data.beacon, data.unlockCount);
		});
    }
    
    //根据beacon解锁花瓣
    function unlockPetal(beacon, unlockCount) {
    	var num;
    	if(beacon) {
	    	if(beacon=='A') {
	    		num =  '';
	    	} else if(beacon=='B') {
	    		num =  '2';
	    	} else if(beacon=='C') {
	    		num =  '3';
	    	} else if(beacon=='D') {
	    		num =  '4';
	    	}
	    	$('#petal'+num+' .gray-petal-img').transition({'scale':0}, 2000);
	    	$('#petal'+num+' .petal-img').transition({'opacity':1, 'scale':1, complete:function() {
	    		if(unlockCount == 4) {
	    			showColorful();
	    		}
	    		setTimeout(function() {
	    			openDialog('温馨提示', 'dialog-'+unlockCount);
	    		},2000);
	    	}}, 2000);
	    	var audio = document.getElementById("petal-audio");
			audio.play();
    	}
    }
    
    //召唤花神效果
    function showColorful() {
		$('.light-ele').show();
    	var audio = document.getElementById("colorful-petal-audio");
		audio.play();
    }
    
    //通过图片路径生成灰度处理过的图片
    function grayscale(src){
        var canvas = document.createElement('canvas');
        var ctx = canvas.getContext('2d');
        var imgObj = new Image();
        imgObj.src = src;
        canvas.width = imgObj.width;
        canvas.height = imgObj.height;
        ctx.drawImage(imgObj, 0, 0);
        var imgPixels = ctx.getImageData(0, 0, canvas.width, canvas.height);
        for(var y = 0; y < imgPixels.height; y++){
            for(var x = 0; x < imgPixels.width; x++){
            	//4,4,3
                var i = (y * 5) * imgPixels.width + x * 5;
                var avg = (imgPixels.data[i] + imgPixels.data[i + 1] + imgPixels.data[i + 2]) / 4;
                imgPixels.data[i] = avg;
                imgPixels.data[i + 1] = avg;
                imgPixels.data[i + 2] = avg;
            }
        }
        ctx.putImageData(imgPixels, 0, 0, 0, 0, imgPixels.width, imgPixels.height);
        return canvas.toDataURL();
    }
    
    //花开抽奖
    function getPrizeOf2Petal() {
    	$.getJSON('${contextPath}/petal/lottery.do', {ticket:'${ticket!}', platformActivityId:'${(activity.platformActivityId)!}}'}, function(data) {
		 	var qr = data.qr;
		 	window.location.href = " http://res.rtmap.com/image/vs3/share/detail.html?id="+qr;  
		});
    }
    
    //花神抽奖
    function getPrizeOf4Petal() {
    	$.getJSON('${contextPath}/petal/lottery.do', {ticket:'${ticket!}', platformActivityId:'${(activity.platformActivityId)!}}'}, function(data) {
		 	var qr = data.qr;
		 	window.location.href = " http://res.rtmap.com/image/vs3/share/detail.html?id="+qr;  
		});
    }
    
    function test() {
    		$('#petal .gray-petal-img').css({'scale':0});
    		$('#petal .petal-img').css({'opacity':1, 'scale':1});
    		var audio = document.getElementById("petal-audio");
    		audio.play();
    }
</script>
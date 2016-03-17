<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="${contextPath}/resource/plugins/layer.mobile-v1.7/need/layer.css" type="text/css" rel="stylesheet">
    <title>花开盛宴</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
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
        
        .petal-main>#petal-wrapper {
        	height:100%;
        	position:absolute;
        	animation-name: rotate;
        	animation-duration: 20s;
        	animation-iteration-count: infinite;	
        	animation-timing-function: linear;
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
        }
        
        .petal-main>#petal-wrapper>.petal-ele>.gray-petal-img {
        	transform-origin: bottom right; 
        }
        
        .petal-main>#petal-wrapper>.petal-ele>.petal-img {
        	opacity:0;
    		filter: alpha(opacity=0);
    		z-index:2;
    		transform:scale(0,0);  
    		transform-origin: bottom right; 
        }
        
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
        </div>
        <div id="petal2" class="petal-ele">
        	<img class="gray-petal-img" />
        	<img class="petal-img" />
        </div>
        <div id="petal3" class="petal-ele">
        	<img class="gray-petal-img" />
        	<img class="petal-img" />
        </div>
        <div id="petal4" class="petal-ele">
        	<img class="gray-petal-img" />
        	<img class="petal-img" />
        </div>
        
    </div>
    
</div>

<div class="btn-area">
    <div class="col"><a class="my-card-btn" onclick="test();"></a></div>
    <div class="col"><span class="shake"></span></div>
    <div class="col"><a class="activity-rule-btn"></a></div>
</div>
<div class="logo"></div>
<div style="display:none;">
    <img src="${contextPath}/petal/resource/img/petal.png" />
    <img src="${contextPath}/petal/resource/img/petal2.png" />
    <img src="${contextPath}/petal/resource/img/petal3.png" />
    <img src="${contextPath}/petal/resource/img/petal4.png" />
</div>
<audio id="petal-audio" src="${contextPath}/petal/resource/audio/petal.mp3">
</body>
</html>
<script src="${contextPath}/resource/plugins/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="${contextPath}/resource/plugins/jquery.transit/jquery.transit.js" type="text/javascript"></script>
<script src="${contextPath}/resource/plugins/layer.mobile-v1.7/layer.js" type="text/javascript"></script>
<script>
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
                var i = (y * 4) * imgPixels.width + x * 4;
                var avg = (imgPixels.data[i] + imgPixels.data[i + 1] + imgPixels.data[i + 2]) / 3;
                imgPixels.data[i] = avg;
                imgPixels.data[i + 1] = avg;
                imgPixels.data[i + 2] = avg;
            }
        }
        ctx.putImageData(imgPixels, 0, 0, 0, 0, imgPixels.width, imgPixels.height);
        return canvas.toDataURL();
    }

    $(document).ready(function() {
    	loadGrayPetal();
    	initPetal();
    	
    });
    
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
    
    function initPetal() {
    	var $petalWrapper = $('#petal-wrapper');
    	var petalWrapperHeight = $('#petal-wrapper').height();
    	$petalWrapper.width(petalWrapperHeight);
    	var petalWrapperWidth = $('#petal-wrapper').width();
    	var screenWidth = $(document).width();
    	$petalWrapper.css('left', (screenWidth-petalWrapperWidth)/2+'px');
    	
    	$petalWrapper.find('.petal-ele').css('float', 'left').width(petalWrapperWidth/2).height(petalWrapperHeight/2);
    	
    }
    
    function test() {
    		$('#petal .gray-petal-img').css({'scale':0});
    		$('#petal .petal-img').css({'opacity':1, 'scale':1});
    		var audio = document.getElementById("petal-audio");
    		audio.play();
    }
</script>
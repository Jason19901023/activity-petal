<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>活动规则</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
            font-family:'微软雅黑';
            color:#69925F;
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
        
        #return-btn {
        	position:absolute;
        	top:0px;
        	left:0px;
        	width:20%;
        	height:0;
        	padding-top:20%;
        	background-image:url('${contextPath}/petal/resource/img/return-btn.png');
        	background-size:cover;
        	
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
            height:75%;
			background-color:#C9F3B6;            
			background-image:url('${contextPath}/petal/resource/img/text-rule-content2.png');
			background-repeat:no-repeat;
            background-size:100% auto;
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

		h2 {
			text-align:center;
			padding-top:5px;
			padding-bottom:5px;
		}
		
		p {
			padding: 5px 5%;
		}
		
    </style>
</head>
<body>
<a id="return-btn" href="javascript:history.go(-1);"></a>
<div class="title">
    <img src="${contextPath}/petal/resource/img/title.png" />
</div>
<div class="petal-main">
	<#--
	<h2>活动规则</h2>
    <p>游戏时间：2016年3月25日-3月27日</p>
    <p> 游戏步骤： </p>
    <p>1.打开蓝牙，点击微信摇一摇，进入“摇一摇，花开盛宴”游戏； </p>
    <p>2.ABCD四座分别散落着四种不同颜色的花瓣，顾客行至任意一座，即可获得一枚花瓣，该座花瓣点亮后，至其他座继续收集；</p>
    <p>3.任意集齐两枚不同颜色花瓣即可使花儿绽放，获得一份嘉年华专属惊喜；</p>
    <p>4.集齐四枚花瓣，即可召唤花神，嘉年华惊喜翻倍！</p>
    -->
</div>
<div class="logo"></div>
</body>
</html>
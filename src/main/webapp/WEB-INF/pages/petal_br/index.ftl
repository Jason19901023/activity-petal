<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <script type='text/javascript'>window.BWEUM||(BWEUM={});BWEUM.info = {"stand":true,"agentType":"browser","agent":"bi-collector.oneapm.com/static/js/bw-send-411.4.5.js","beaconUrl":"bi-collector.oneapm.com/beacon","licenseKey":"MbImm~uz2vFMnF7Y","applicationID":2284225};</script><script type="text/javascript">/*!OneAPM-v411.4.5 */!function(){window.NREUM||(window.NREUM={}),window.BWEUM||(window.BWEUM=window.NREUM);var a;window.BWEUM.require=a,window.apmFirstbyte=window.apmUserFirstbyte||(new Date).getTime(),a=function b(c,d,e){function f(h,i){if(!d[h]){if(!c[h]){var j="function"==typeof a&&a;if(!i&&j)return j(h,!0);if(g)return g(h,!0);var k=new Error("Cannot find module '"+h+"'");throw k.code="MODULE_NOT_FOUND",k}var l=d[h]={exports:{}};c[h][0].call(l.exports,function(a){var b=c[h][1][a];return f(b?b:a)},l,l.exports,b,c,d,e)}return d[h].exports}for(var g="function"==typeof a&&a,h=0;h<e.length;h++)f(e[h]);return f}({38:[function(a,b){b.exports=function(a){var b=document.createElement("a"),c=window.location,d={};b.href=a,d.port=b.port;var e=b.href.split("://");return!d.port&&e[1]&&(d.port=e[1].split("/")[0].split(":")[1]),d.port&&"0"!==d.port||(d.port="https"===e[0]?"443":"80"),d.hostname=b.hostname||c.hostname,d.pathname=b.pathname,"/"!==d.pathname.charAt(0)&&(d.pathname="/"+d.pathname),d.sameOrigin=!b.hostname||b.hostname===document.domain&&b.port===c.port&&b.protocol===c.protocol,d}},{}],34:[function(a,b){function c(){var a=m.info=window.BWEUM.info;if(a&&a.agent&&a.licenseKey&&a.applicationID&&i&&i.body){m.proto="https"===l.split(":")[0]||a.sslForHttp?"https://":"http://",g("mark",["onload",f()]);var b=i.createElement("script");b.src=0==a.agent.indexOf("//")?a.agent:m.proto+a.agent,b.src+="?v=411.4.5 ",i.body.appendChild(b)}}function d(){o||"complete"===i.readyState&&e()}function e(){g("mark",["domContent",f()])}function f(){return(new Date).getTime()}var g=a("handle"),h=window,i=h.document,j="addEventListener",k="attachEvent",l=(""+location).split("?")[0],m=b.exports={offset:window.apmFirstbyte||f(),origin:l,features:{}};g("mark",["firstbyte",window.apmFirstbyte||f()]),"complete"===document.readyState?(e(),c()):i[j]?(i[j]("DOMContentLoaded",e,!1),h[j]("load",c,!1)):(i[k]("onreadystatechange",d),h[k]("onload",c));var n=!1,o=!1;try{n=null==window.frameElement&&document.documentElement}catch(m){}n&&n.doScroll&&!function p(){if(!o){try{n.doScroll("left")}catch(a){return setTimeout(p,50)}o=!0,e()}}()},{handle:33}],33:[function(a,b){function c(a,b,c){return d.listeners(a).length?d.emit(a,b,c):(e[a]||(e[a]=[]),void e[a].push(b))}var d=a("ee").create(),e={};b.exports=c,c.ee=d,d.q=e},{ee:31}],36:[function(a,b){function c(a,b,c){b||(b=0),"undefined"==typeof c&&(c=a?a.length:0);for(var d=-1,e=c-b||0,f=new Array(0>e?0:e);++d<e;)f[d]=a[b+d];return f}b.exports=c},{}],31:[function(a,b){function c(a){function b(b,c,g){a&&a(b,c,g),g||(g={});var i=h(b),j=i.length,k={};try{k=f(g,e,d)}catch(l){}for(var m=0;j>m;m++)i[m].apply(k,c);return k}function g(a,b){j[a]=h(a).concat(b)}function h(a){return j[a]||[]}function i(){return c(b)}var j={};return{on:g,emit:b,create:i,listeners:h,_events:j}}function d(){return{}}var e="bw@context",f=a("gos");b.exports=c()},{gos:32}],32:[function(a,b){function c(a,b,c){if(d.call(a,b))return a[b];var e=c();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(a,b,{value:e,writable:!0,enumerable:!1}),e}catch(f){}try{a[b]=e}catch(f){}return e}var d=Object.prototype.hasOwnProperty;b.exports=c},{}]},{},[]),a=function c(b,d,e){function f(h,i){if(!d[h]){if(!b[h]){var j="function"==typeof a&&a;if(!i&&j)return j(h,!0);if(g)return g(h,!0);var k=new Error("Cannot find module '"+h+"'");throw k.code="MODULE_NOT_FOUND",k}var l=d[h]={exports:{}};b[h][0].call(l.exports,function(a){var c=b[h][1][a];return f(c?c:a)},l,l.exports,c,b,d,e)}return d[h].exports}for(var g="function"==typeof a&&a,h=0;h<e.length;h++)f(e[h]);return f}({1:[function(a){a("loader"),a("errorload"),a("xhrload"),a("perfload")},{errorload:5,loader:34,perfload:6,xhrload:7}],7:[function(a){function b(a){if("string"==typeof a&&a.length)return a.length;if("object"!=typeof a)return void 0;if("undefined"!=typeof ArrayBuffer&&a instanceof ArrayBuffer&&a.byteLength)return a.byteLength;if("undefined"!=typeof Blob&&a instanceof Blob&&a.size)return a.size;if("undefined"!=typeof FormData&&a instanceof FormData)return void 0;try{return JSON.stringify(a).length}catch(b){return void 0}}function c(a,b){return b}function d(a){a.send=o.wrapOld(a.send,"send-xhr-",c),a.onreadystatechange=o.wrapOld(a.onreadystatechange,"iexhr-onreadystatechange-",c),a.onerror=o.wrapOld(a.onerror,"iexhr-onerror-",c)}function e(a){var c=this.params,d=this.metrics;if(!this.ended){if(this.ended=!0,a.removeEventListener)for(var e=0;m>e;e++)a.removeEventListener(l[e],this.listener,!1);if(!c.aborted){if(d.duration=(new Date).getTime()-this.startTime,4===a.readyState){c.status=a.status;var f=a.responseType,g="arraybuffer"===f||"blob"===f||"json"===f?a.response:a.responseText,h=b(g);h&&(d.rxSize=h)}else c.status=0;d.cbTime=this.cbTime,c&&c.pathname&&c.pathname.indexOf("beacon/resources")<0&&i("xhr",[c,d,this.startTime,this.creatType])}}}function f(a,b){var c=j(b),d=a.params;d.host=c.hostname+":"+c.port,d.pathname=c.pathname,a.sameOrigin=c.sameOrigin}var g=window,h=(g.performance,window.XMLHttpRequest);if(h&&h.prototype&&!/CriOS/.test(navigator.userAgent)){a("loader").features.xhr=!0;var i=a("handle"),j=a("parse-url"),k=a("ee"),l=["load","error","abort","timeout"],m=l.length,n=a("loader_id"),o=a("wrap-function")(k);a("wrap-events"),a("wrap-xhr"),k.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=e,this.ended=!1,this.xhrGuids={}}),k.on("open-xhr-start",function(a){this.params={method:a[0]},f(this,a[1]),this.metrics={}}),k.on("open-xhr-end",function(a,b){b.__oldie&&d(b)}),k.on("send-xhr-start",function(a,c){var d=this.metrics,e=a[0],f=this;if(d&&e){var g=b(e);g&&(d.txSize=g)}if(this.startTime=(new Date).getTime(),this.listener=function(a){try{"abort"===a.type&&(f.params.aborted=!0),("load"!==a.type||f.called===f.totalCbs&&(f.onloadCalled||"function"!=typeof c.onload))&&f.end&&f.end(c)}catch(b){try{k.emit("internal-error",[b])}catch(d){}}},c.addEventListener)for(var h=0;m>h;h++)c.addEventListener(l[h],this.listener,!1)}),k.on("iexhr-onreadystatechange-start",function(a,b){if(1==b.readyState){var d=b.onreadystatechange;setTimeout(function(){b.onreadystatechange!==d&&(b.onreadystatechange=o.wrapOld(b.onreadystatechange,"iexhr-onreadystatechange-",c))},0)}4==b.readyState&&(this.xhrCbStart=(new Date).getTime())}),k.on("iexhr-onreadystatechange-end",function(a,b){var c=this;this.xhrCbStart&&k.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,b],b),4==b.readyState&&c.end(b)}),k.on("xhr-cb-time",function(a,b,c){this.cbTime+=a,b?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof c.onload||this.end(c)}),k.on("xhr-load-added",function(a,b){var c=""+n(a)+!!b;this.xhrGuids&&!this.xhrGuids[c]&&(this.xhrGuids[c]=!0,this.totalCbs+=1)}),k.on("xhr-load-removed",function(a,b){var c=""+n(a)+!!b;this.xhrGuids&&this.xhrGuids[c]&&(delete this.xhrGuids[c],this.totalCbs-=1)}),k.on("addEventListener-end",function(a,b){b instanceof XMLHttpRequest&&"load"===a[0]&&k.emit("xhr-load-added",[a[1],a[2]],b)}),k.on("removeEventListener-end",function(a,b){b instanceof XMLHttpRequest&&"load"===a[0]&&k.emit("xhr-load-removed",[a[1],a[2]],b)}),k.on("fn-start",function(a,b,c){b instanceof XMLHttpRequest&&("onload"===c&&(this.onload=!0),("load"===(a[0]&&a[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),k.on("fn-end",function(a,b){this.xhrCbStart&&k.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,b],b)})}},{ee:31,handle:33,loader:34,loader_id:35,"parse-url":38,"wrap-events":28,"wrap-function":39,"wrap-xhr":30}],35:[function(a,b){function c(a){var b=typeof a;return!a||"object"!==b&&"function"!==b?-1:a===window?0:f(a,e,function(){return d++})}var d=1,e="bw@id",f=a("gos");b.exports=c},{gos:32}],6:[function(a){var b=window.performance;if(b&&b.timing&&b.getEntriesByType){var c=a("ee"),d=a("handle"),e=(a("wrap-timer"),a("loader"));e.features.stn=!0,c.on("fn-start",function(a){var b=a[0];b instanceof Event&&(this.bstStart=Date.now())}),c.on("fn-end",function(a,b){var c=a[0];c instanceof Event&&d("bst",[c,b,this.bstStart,Date.now()])})}},{ee:31,handle:33,loader:34,"wrap-timer":29}],5:[function(a){function b(a,b,d,g,i){try{j?j-=1:e("err",[i||new c(a,b,d)])}catch(k){try{e("ierr",[k,(new Date).getTime(),!0])}catch(l){}}return"function"==typeof h?h.apply(this,f(arguments)):!1}function c(a,b,c){this.message=a||"Uncaught error with no additional information",this.sourceURL=b,this.line=c}function d(a){e("err",[a,(new Date).getTime()])}var e=a("handle"),f=a("lodash._slice"),g=a("ee"),h=window.onerror,i=!1,j=0;a("loader").features.err=!0,window.onerror=b,window.BWEUM.noticeError=d;var k=window.XMLHttpRequest;try{throw new Error}catch(l){"stack"in l&&(a("wrap-timer"),"addEventListener"in window&&a("wrap-events"),k&&k.prototype&&k.prototype.addEventListener&&a("wrap-xhr"),i=!0)}g.on("fn-start",function(){i&&(j+=1)}),g.on("fn-err",function(a,b,c){i&&(this.thrown=!0,d(c))}),g.on("fn-end",function(){i&&!this.thrown&&j>0&&(j-=1)}),g.on("internal-error",function(a){e("ierr",[a,(new Date).getTime(),!0])})},{ee:31,handle:33,loader:34,"lodash._slice":36,"wrap-events":28,"wrap-timer":29,"wrap-xhr":30}],30:[function(a,b){function c(){j.inPlace(this,m,"fn-")}function d(a,b){j.inPlace(b,["onreadystatechange"],"fn-")}function e(a){a.open=j.wrapOld(a.open,"open-xhr-",f)}function f(a,b){return b}var g=a("ee").create(),h=a("wrap-events"),i=a("wrap-function"),j=i(g),k=i(h),l=window.XMLHttpRequest,m=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];b.exports=g,window._ApmXMLHttpRequest=window.XMLHttpRequest,window.XMLHttpRequest=function(a){var b=new l(a);try{g.emit("new-xhr",[],b),l.prototype.addEventListener?(k.inPlace(b,["addEventListener","removeEventListener"],"-",function(a,b){return b}),b.addEventListener("readystatechange",c,!1)):(b.__oldie=!0,e(b))}catch(d){try{g.emit("internal-error",[d])}catch(f){}}return b},window.XMLHttpRequest.prototype=l.prototype,j.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",f),g.on("send-xhr-start",d),g.on("open-xhr-start",d)},{ee:31,"wrap-events":28,"wrap-function":39}],29:[function(a,b){function c(a,b,c){var d=a[0];"string"==typeof d&&(d=new Function(d)),a[0]=e(d,"fn-",null,c)}var d=(a("lodash._slice"),a("ee").create()),e=a("wrap-function")(d);b.exports=d,e.inPlace(window,["setTimeout","setInterval","setImmediate"],"setTimer-"),d.on("setTimer-start",c)},{ee:31,"lodash._slice":36,"wrap-function":39}],28:[function(a,b){function c(a){f.inPlace(a,["addEventListener","removeEventListener"],"-",d)}function d(a){return a[1]}var e=(a("lodash._slice"),a("ee").create()),f=a("wrap-function")(e),g=a("gos");if(b.exports=e,c(window),"getPrototypeOf"in Object){for(var h=document;h&&!h.hasOwnProperty("addEventListener");)h=Object.getPrototypeOf(h);h&&c(h);for(var i=XMLHttpRequest.prototype;i&&!i.hasOwnProperty("addEventListener");)i=Object.getPrototypeOf(i);i&&c(i)}else Object.prototype.hasOwnProperty.call(XMLHttpRequest,"addEventListener")&&c(XMLHttpRequest.prototype);e.on("addEventListener-start",function(a){if(a[1]){var b=a[1];"function"==typeof b?this.wrapped=a[1]=g(b,"bw@wrapped",function(){return f(b,"fn-",null,b.name||"anonymous")}):"function"==typeof b.handleEvent&&f.inPlace(b,["handleEvent"],"fn-")}}),e.on("removeEventListener-start",function(a){var b=this.wrapped;b&&(a[1]=b)})},{ee:31,gos:32,"lodash._slice":36,"wrap-function":39}],39:[function(a,b){function c(a){return!(a&&"function"==typeof a&&a.apply&&!a[f])}var d=a("ee"),e=a("lodash._slice"),f="bw@wrapper",g=Object.prototype.hasOwnProperty;b.exports=function(a){function b(a,b,d,g,i){function j(){var c=this;return h(a,b,c,e(arguments),d,g,i)}if(c(a))return a;b||(b="");try{j[f]=!0}catch(k){}return l(a,j),j}function h(a,b,c,d,e,f){var d,c,g,h;try{g=e&&e(d,c)||{}}catch(i){m([i,"",[d,c,f],g])}_apmfnName=a.name||"",k(b+"start",[d,c,f,_apmfnName],g);try{return h=a.apply(c,d)}catch(j){var l=window.console;throw void 0!=l&&l.error&&l.log&&void 0!=j.stack&&(l.log("OneAPM  catch  error"),l.error(j.stack)),k(b+"err",[d,c,j],g),j}finally{k(b+"end",[d,c,h,_apmfnName],g)}}function i(a,b,c){var a=a||function(){},b=b||"-";return function(){var d=this;return h(a,b,d,e(arguments),c)}}function j(a,d,e,f){e||(e="");var g,h,i,j="-"===e.charAt(0);for(i=0;i<d.length;i++)h=d[i],g=a[h],c(g)||(a[h]=b(g,j?h+e:e,f,h,a))}function k(b,c,d){try{a.emit(b,c,d)}catch(e){m([e,b,c,d])}}function l(a,b){if(Object.defineProperty&&Object.keys)try{var c=Object.keys(a);return c.forEach(function(c){Object.defineProperty(b,c,{get:function(){return a[c]},set:function(b){return a[c]=b,b}})}),b}catch(d){m([d])}for(var e in a)g.call(a,e)&&(b[e]=a[e]);return b}function m(b){try{a.emit("internal-error",b)}catch(c){}}return a||(a=d),b.inPlace=j,b.flag=f,b.wrapOld=i,b}},{ee:31,"lodash._slice":36}]},{},[1]),window.BWEUM.require=a}();</script>
    <link href="${contextPath}/resource/plugins/layer/skin/layer.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="${contextPath}/petal_br/resource/css/style.css">
    <title>北人16周年庆</title>
</head>
<body>
	<script type="text/javascript">
		var _scale = window.innerWidth/640,
			_scale = _scale>1?1:_scale;
		if(window.innerWidth == 980) {	//针对华为荣耀6手机微信浏览器的bug单独处理
			_scale = 360/640;
			_scale = _scale>1?1:_scale;
		}
	</script>
	<div class="wrap">
		<img src="${contextPath}/petal_br/resource/img/bg.jpg" style="position:relative;width: 100%;">
		<div class="petal-wrapper">
			<img class="petal petal01 grey-petal" src="${contextPath}/petal_br/resource/img/petal01_gray.png" />
			<img class="petal petal02 grey-petal" src="${contextPath}/petal_br/resource/img/petal02_gray.png" />
			<img class="petal petal03 grey-petal" src="${contextPath}/petal_br/resource/img/petal03_gray.png" />
			<img class="petal petal04 grey-petal" src="${contextPath}/petal_br/resource/img/petal04_gray.png" />
			<img class="petal petal01 light-petal" src="${contextPath}/petal_br/resource/img/petal01.png" />
			<img class="petal petal02 light-petal" src="${contextPath}/petal_br/resource/img/petal02.png" />
			<img class="petal petal03 light-petal" src="${contextPath}/petal_br/resource/img/petal03.png" />
			<img class="petal petal04 light-petal" src="${contextPath}/petal_br/resource/img/petal04.png" />
		</div>
		<a class="my-card-btn" href="${(activity.cardsUrl)!}"><img src="${contextPath}/petal_br/resource/img/my_card_btn.png" /></a>
		<a class="activity-rule-btn" href="javascript:openRule();"><img src="${contextPath}/petal_br/resource/img/activity_rule_btn.png" /></a>
		
		<div id="dialog-0" class="dialog layer-ele">
			<br/><br/><br/>
			<p>已经使用过本次抽奖机会，感谢您的参与！</p>
		</div>
		<div id="dialog-1" class="dialog layer-ele">
			<img class="icon" src="${contextPath}/petal_br/resource/img/small_petal01.png" />
			<br/><br/><br/>
			<p>再接再厉</p>
			<br/>
			<p>请继续寻找下一个花瓣</p>
			<a class="ok-btn" href="javascript:closeDialog();"><img src="${contextPath}/petal_br/resource/img/ok_btn.png" /></a>
		</div>
		<div id="dialog-2" class="dialog layer-ele">
			<img class="icon" src="${contextPath}/petal_br/resource/img/small_petal02.png" />
			<br/>
			<p class="sub-title">两瓣花开</p>
			<br/>
			<p>${(brConf.tipText02)!'拿宝走人还是继续点亮'}</p>
			<a class="prize-btn" href="javascript:lottery();"><img src="${contextPath}/petal_br/resource/img/prize_btn.png" /></a>
			<a class="continue-btn" href="javascript:closeDialog();"><img src="${contextPath}/petal_br/resource/img/continue_btn.png" /></a>
		</div>
		<div id="dialog-3" class="dialog layer-ele">
			<img class="icon" src="${contextPath}/petal_br/resource/img/small_petal03.png" />
			<br/>
			<p class="sub-title">三瓣花开</p>
			<br/>
			<p>${(brConf.tipText03)!}</p>
			<a class="prize-btn" href="javascript:lottery();"><img src="${contextPath}/petal_br/resource/img/prize_btn.png" /></a>
			<a class="continue-btn" href="javascript:closeDialog();"><img src="${contextPath}/petal_br/resource/img/continue_btn.png" /></a>
		</div>
		<div id="dialog-4" class="dialog layer-ele">
			<img class="icon" src="${contextPath}/petal_br/resource/img/small_petal04.png" />
			<img class="star01" src="${contextPath}/petal_br/resource/img/star01.png" />
			<img class="star02" src="${contextPath}/petal_br/resource/img/star02.png" />
			<br/>
			<p>您已成功收集到四枚花瓣</p>
			<p>获得超级大奖</p>
			<a class="center-prize-btn" href="javascript:lottery();"><img src="${contextPath}/petal_br/resource/img/prize_btn.png" /></a>
		</div>
		
		<div class="rule layer-ele">
			<img src="${contextPath}/petal_br/resource/img/rule_content.png" class="rule-content"  />
		</div>
		<div class="layui-layer-shade" id="shade" times="2" style="z-index:19891014; background-color:#FFF; opacity:0.5; filter:alpha(opacity=50); display:none;"></div>
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
			/*
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
			*/
			$.ajaxSetup({
				cache:false,
			    error: function (jqXHR, textStatus, errorThrown ) {
			        alert(errorThrown);
			    }
			});
			<#if data?exists && data.errcode?exists && data.errcode!='0'>
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
	 	$('.petal01').css({ transformOrigin: 'bottom right' });
	 	$('.petal02').css({ transformOrigin: 'bottom left' });
	 	$('.petal03').css({ transformOrigin: 'top right' });
	 	$('.petal04').css({ transformOrigin: 'top left' });
		$.getJSON('${contextPath}/petal_br/get_petal_record_list.do', {'testNum':'${testNum!}', 'activityAutoid':'${(activity.autoid)!}', 'openId':'${(data.openId)!}'}, function(data) {
    		var petalRecordList = data.petalRecordList;
    		for(var i=1; i<=petalRecordList.length; i++) {
    			var numStr = '0'+i;
				$('.petal'+numStr).filter('.grey-petal').transition({opacity: 0 , scale: 0 }, 1);
				$('.petal'+numStr).filter('.light-petal').transition({opacity: 1 , scale: 1 }, 1);
    		}
		});
	}
		
	//通过后台获取当前区域的Beacon组别
    function getCurrentPetal() {
    	$.getJSON('${contextPath}/petal_br/get_beacon.do', {'testNum':'${testNum!}', 'activityAutoid':'${(activity.autoid)!}', 'openId':'${(data.openId)!}', 'uuid':'${(data.uuid)!}', 'major':'${(data.major)!}', 'minor':'${(data.minor)!}'}, function(data) {
    		if(data.prized == true) {	//用户已经领取过奖
    			 //openDialog($('#dialog-0'));
    			 alert('奖励已领取，游戏结束!');
    		} else if(data.over == true) {	//用户已经解封过4朵花瓣，但是没有领奖
    			alert('游戏结束!');
    		} else {
    			if(data.forbid == true) {	//中几率不激活花瓣
    				alert('缘分未到，请再接再厉!');
    			} else {
		    		if(data.unlocked == false) {
		    			//alert('当前beacon组别为：'+data.beacon+'【准备解封】');
					 	unlockPetal(data.beacon, data.unlockCount);
		    		} else {
		    			//alert('当前beacon组别为：'+data.beacon+'【先前已解封过】');
		    			alert('此花瓣已被点亮了，继续点亮其它花瓣吧！');
		    		}
    			}
    		}
		});
    }
    
    var platformActivityId=0;	//营销平台活动id
    var currentBeacon = '';
     //根据beacon解锁花瓣
    function unlockPetal(beacon, unlockCount) {
    	if(beacon) {
    		currentBeacon = beacon;
	    	if(unlockCount==1) {
	    		platformActivityId =  ${(brConf.platformActivityId01)!0};
	    	} else if(unlockCount==2) {
	    		platformActivityId =  ${(brConf.platformActivityId02)!0};
	    	} else if(unlockCount==3) {
	    		platformActivityId =  ${(brConf.platformActivityId03)!0};
	    	} else if(unlockCount==4) {
	    		platformActivityId =  ${(brConf.platformActivityId04)!0};
	    	}
	    	//alert('开始呈现解封动画');
	    	$('.petal0'+unlockCount).filter('.grey-petal').transition({opacity: 0 , scale: 0, delay:1000 }, 2000);
	    	$('.petal0'+unlockCount).filter('.light-petal').transition({ opacity: 1, scale: 1, delay:1000, complete:function() {
	    		openDialog($('#dialog-2'));
	    		//alert('解封动画呈现完毕');
	    		if(unlockCount == 1) {
	    			lottery();
	    		} else if(unlockCount == 2) {
	    			openDialog($('#dialog-2'));
	    		} else if(unlockCount == 3) {
	    			openDialog($('#dialog-3'));
	    		} else if(unlockCount == 4) {
	    			openDialog($('#dialog-4'));
	    			//showColorful();
	    		}
    			$.getJSON('${contextPath}/petal_br/unlock_petal.do', {'activityAutoid':'${(activity.autoid)!}', 'openId':'${(data.openId)!}', 'beacon':beacon}, function(data) {
    				
				});
	    	}}, 2000);
	    	//var audio = document.getElementById("petal-audio");
			//audio.play();
    	}
    }
    
    function lottery() {
    	var param = {
    		ticket:'${ticket!}', 
    		platformActivityId:platformActivityId,
    		'activityAutoid':'${(activity.autoid)!}', 
    		'openId':'${(data.openId)!}', 
    		'beacon':currentBeacon
    	};
    	$.getJSON('${contextPath}/petal_br/lottery.do', param, function(data) {
    		var errcode = data.errcode;
    		var errmsg = data.errmsg;
    		if((errcode==0) && (data.qr)) {		//中奖
			 	window.location.href = " http://res.rtmap.com/image/vs3/share/detail.html?id="+data.qr;  
    		} else if(errcode==7) {		//未中奖
    			openDialog($('#dialog-1'));
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
		  title: ['温馨提示', 'background-color:#FF6975; color:#fff; font-size:20px; border-top-left-radius:5px; border-top-right-radius:5px;'], //不显示标题
		  area: ['371px', '472px'],
		  offset: ['281px', '143px'],
		  content: $content, //捕获的元素
		  skin: 'layui-layer-br',
		  closeBtn: 1,
		  shadeClose: false,
		  shift:2,
		  end: function() {
		  	$('.wrap>#shade').hide();
		  }
		});
		$('.wrap>#shade').show();
	}
	
	//游戏规则
	function openRule() {
		layer.open({
		  type: 1,
		  shade: false,
		  title: false, //不显示标题
		  area: ['592px', '957px'],
		  offset: ['45px', '24px'],
		  content: $('.rule'), //捕获的元素
		  skin: 'layui-layer-transparent',
		  closeBtn: 1,
		  shadeClose: false,
		  shift:2,
		   end: function() {
		  	$('.wrap>#shade').hide();
		  }
		});
		$('.wrap>#shade').show();
	}
</script>
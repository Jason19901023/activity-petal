var App = function() {
	var initScreenScale = function() {
		var _scale = window.innerWidth/640,
		_scale = _scale>1?1:_scale;
		var _wrap = document.querySelector(".wrap"),
			_el = null;
		//使得适应屏幕大小
		_wrap.style.transform = "scale("+_scale+")";
		_wrap.style.webkitTransform = "scale("+_scale+")";

		document.body.style.height = Math.floor(1048*_scale)+"px";
	}
	
	return {
		init: function() {
			initScreenScale();
		}
	}
}();

jQuery(document).ready(function() {    
	App.init(); 
});
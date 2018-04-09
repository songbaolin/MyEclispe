/**
 * 多行文字滚动，可以实现向左和向上两种滚动
 *
 **/
$.extend({
	wordScroll: function(opt, callback) {
		//alert("suc");
		this.defaults = {
			objId: "",
			width: 300, // 每行的宽度
			height: 100, // div的高度
			liHeight: 25, // 每行高度
			line: 2, // 每次滚动的行数
			speed: 1000, // 动作时间
			interval: 2000, // 滚动间隔
			picTimer: 0, // 间隔句柄，不需要设置，只是作为标识使用
			isHorizontal: false // 是否横向滚动
		}
		//参数初始化
		var opts = $.extend(this.defaults, opt);
		// 纵向横向通用
		$("#" + opts.objId).css({
			width: opts.width,
			height: opts.height,
			"min-height": opts.liHeight,
			"line-height": opts.liHeight + "px",
			overflow: "hidden"
		});
		$("#" + opts.objId + " li").css({
			height: opts.liHeight
		});
		if(opts.line == 0)
			opts.line = 1;
		// 横向滚动
		if(opts.isHorizontal) {
			// 横向使用，不够一屏则不滚动
			if($("#" + opts.objId).find("li").size() <= opts.line)
				return;
			var scrollWidth = 0 - opts.line * opts.width;
			$("#" + opts.objId).css({
				width: opts.width * opts.line + "px",
			});
			$("#" + opts.objId + " li").css({
				"display": "block",
				"float": "left",
				"width": opts.width + "px"
			});
			$("#" + opts.objId + " ul").css({
				width: $("#" + opts.objId).find("li").size() * opts.width + "px"
			});
		} else {
			//如果不够一屏内容 则不滚动
			if($("#" + opts.objId).find("li").size() <= parseInt($("#" + opts.objId).height() / opts.liHeight, 10))
				return;
			var upHeight = 0 - opts.line * opts.liHeight;
		}
		// 横向滚动
		function scrollLeft() {
			$("#" + opts.objId).find("ul:first").animate({
				marginLeft: scrollWidth
			}, opts.speed, function() {
				for(i = 1; i <= opts.line; i++) {
					$("#" + opts.objId).find("li:first").appendTo($("#" + opts.objId).find("ul:first"));
				}
				$("#" + opts.objId).find("ul:first").css({
					marginLeft: 0
				});
			});
		};
		// 纵向滚动
		function scrollUp() {
			$("#" + opts.objId).find("ul:first").animate({
				marginTop: upHeight
			}, opts.speed, function() {
				for(i = 1; i <= opts.line; i++) {
					$("#" + opts.objId).find("li:first").appendTo($("#" + opts.objId).find("ul:first"));
				}
				$("#" + opts.objId).find("ul:first").css({
					marginTop: 0
				});
			});
		};
		//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
		$("#" + opts.objId).hover(function() {
			clearInterval(opts.picTimer);
		}, function() {
			opts.picTimer = setInterval(function() {
				// 判断执行横向或纵向滚动
				if(opts.isHorizontal)
					scrollLeft();
				else
					scrollUp();
			}, opts.interval); // 自动播放的间隔，单位：毫秒
		}).trigger("mouseleave");
	}
});
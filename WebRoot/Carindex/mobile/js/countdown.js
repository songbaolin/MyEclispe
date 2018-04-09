function lxfEndtime() {
	jQuery(".lxftime").each(function() {
		var lxfday = jQuery(this).attr("lxfday"); //用来判断是否显示天数的变量
		var endtime = new Date(jQuery(this).attr("endtime")).getTime(); //取结束日期(毫秒值)
		var nowtime = new Date().getTime(); //今天的日期(毫秒值)
		var youtime = endtime - nowtime; //还有多久(毫秒值)
		var seconds = youtime / 1000;
		var minutes = Math.floor(seconds / 60);
		var hours = Math.floor(minutes / 60);
		var days = Math.floor(hours / 24);
		var CDay = days;
		var CHour = hours % 24;
		var CMinute = minutes % 60;
		var CSecond = Math.floor(seconds % 60); //"%"是取余运算，可以理解为60进一后取余数，然后只要余数。
		var lastTXT= jQuery(this).attr("data-last")
		CSecond = toApartSpan(CSecond);
		CMinute = toApartSpan(CMinute);
		CHour = toApartSpan(CHour);
		CDay = toApartSpan(CDay);
		if (endtime <= nowtime) {
			jQuery(this).html("已开展") //如果结束日期小于当前日期就提示过期啦
		} else {
			if (hours<24) {
				//jQuery(this).attr("lxfday") == "no"
				jQuery(this).html("<span>" + CHour + "</span><em>时</em><span>" + CMinute + "</span><em>分</em><span>" + CSecond + "</span><em>秒</em>"); //输出没有天数的数据
			} else if(hours>24 && jQuery(this).attr("lxfday") == "no") {
				jQuery(this).html("<span>" + CDay + "</span><em>天</em><span>" + CHour + "</span><em>时</em><span>" + CMinute + "</span><em>分</em><span>" +  CSecond + "</span><em>秒</em>"+"<em>"+lastTXT+"</em>"); //输出有天数的数据
			}else if(hours>24 && jQuery(this).attr("lxfday") == "yes" ){
				jQuery(this).html("<span>" + CDay + "</span><em>天</em><span>" + CHour + "</span><em>时</em><span>" + CMinute + "</span><em>分</em>"+lastTXT+"</em>");
			}
		}
		function toApartSpan(nums) {
    		var spans = '';
    		nums = nums.toString()//.split('');
    		if (nums.length < 2) {
        		spans += '<span>0</span>';
    		}
    		for (var i=0;i<nums.length;i++) {
        		spans += '<span>'+nums[i]+'</span>';
    		}
    		return spans;
		};
	});
	setTimeout("lxfEndtime()", 1000);
};
jQuery(function() {
	lxfEndtime();
});
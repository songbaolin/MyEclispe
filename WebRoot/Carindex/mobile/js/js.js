$(document).ready(function() {
	$.wordScroll({
		objId: "scrollNew",
		height: "48px",
		liHeight: 48,
		line: 1,
		width: "100%"
	});
	//品牌
	var mySwiper = new Swiper('.swiper-container', {
		direction: 'horizontal',
		loop: true,
		// 如果需要分页器
		pagination: '.swiper-pagination'
	});
	//优势
	$('.youshi .more').click(function() {
		var dom = $(this);
		if(dom.attr('data-switch') == 'off') {
			$('.youshi .hidden').css('display', 'block');
			dom.text('收起');
			dom.attr('data-switch', 'on');
		} else {
			$('.youshi .hidden').css('display', 'none');
			dom.text('展开了解更多');
			dom.attr('data-switch', 'off');
		}
	});
	//返回顶部	
	$(window).scroll(function() {
		var h_num = $(window).scrollTop();
		if(h_num > 150) {
			$('.aside-tool').removeClass('f-dn');
		} else {
			$('.aside-tool').addClass('f-dn');
		}
	});
	$('.backtop').click(function() {
		$("body,html").animate({
			scrollTop: 0
		}, 200);
	});
	//侧边分享
	$('.aside-tool .share').click(function() {
		full_screen('full_black_bg', function() {
			$('.aside-bdshare').addClass('f-dn');
		})
		$('.aside-bdshare').removeClass('f-dn');
	});
	//顶部免费领票
		$('.baoming-btn').not('.baoming .apply-btn').click(function() {
			var h = $('.baoming').offset().top;
			$("body,html").animate({
				scrollTop: h
			}, 200);
		});
})
//全屏遮罩
var full_screen;
jQuery(document).ready(function() {
	full_screen = (function() {
		var fulled, hideFunc;
		function fulling(className, onHide) {
			if (!fulled) {
				fulled = $('<div class="full_screen"></div>');
				fulled.on('click', function() {
					if (hideFunc) {
						var fresult = hideFunc();
						if (fresult == false) {
							return;
						}
					}
					fulled.hide();
				});
				$(document.body).append(fulled);
			}
			if (className) {
				fulled.addClass(className)
			} else {
				fulled.attr('class', 'full_screen');
			}
			if (onHide && typeof(onHide) == 'function') {
				hideFunc = onHide;
			}
			fulled.show();
			return fulled;
		}
		return fulling;
	})();
});